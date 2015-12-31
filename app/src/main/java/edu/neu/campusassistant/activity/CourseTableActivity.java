package edu.neu.campusassistant.activity;

import android.content.SharedPreferences;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.widget.Toast;

import com.alamkanak.weekview.DateTimeInterpreter;
import com.alamkanak.weekview.MonthLoader;
import com.alamkanak.weekview.WeekView;
import com.alamkanak.weekview.WeekViewEvent;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;

import org.json.JSONArray;
import org.json.JSONObject;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;
import edu.neu.campusassistant.bean.Course;
import edu.neu.campusassistant.utils.AppController;
import edu.neu.campusassistant.utils.Constants;

public class CourseTableActivity extends AppCompatActivity {

	@Bind(R.id.app_bar)
	Toolbar mToolBar;
	ActionBar mAppBar;
	@Bind(R.id.week_view)
	WeekView mWeekView;

	Calendar mFirstDayOfWeek;
	SharedPreferences mSharedPreferences;
	List<Course> mCourseList;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_course_table);

		// 初始化视图
		initView();

		// 初始化数据
		initData();
	}

	private void initView() {

		ButterKnife.bind(this);

		setSupportActionBar(mToolBar);
		mAppBar = getSupportActionBar();

		if (mAppBar != null) mAppBar.setDisplayHomeAsUpEnabled(true);
		mToolBar.setNavigationOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View view) {
				onBackPressed();
			}
		});

		mWeekView.setMonthChangeListener(new OnMonthChangeListener());

		mFirstDayOfWeek = Calendar.getInstance();

//		mWeekView.setHourHeight((int) (mWeekView.getHourHeight() * 0.7));
		mWeekView.setHourHeight((int) (mWeekView.getHourHeight() * 1.0));
		mWeekView.goToHour(8);

		setupDateTimeInterpreter(false);

		if (mFirstDayOfWeek.get(Calendar.DAY_OF_WEEK) != Calendar.MONDAY) {
			mFirstDayOfWeek.set(mFirstDayOfWeek.get(Calendar.YEAR), mFirstDayOfWeek.get(Calendar.MONTH), mFirstDayOfWeek.get(Calendar.DAY_OF_MONTH) - mFirstDayOfWeek.get(Calendar.DAY_OF_WEEK) + 2);
		}
		mFirstDayOfWeek.set(Calendar.HOUR,0);
		mFirstDayOfWeek.set(Calendar.MINUTE,0);
		mFirstDayOfWeek.set(Calendar.SECOND,0);
		mFirstDayOfWeek.set(Calendar.MILLISECOND,0);
		mWeekView.goToDate(mFirstDayOfWeek);
	}

	private void initData() {
		mCourseList = new ArrayList<>();

		mSharedPreferences = this.getSharedPreferences(Constants.SHARED_PREFS_KEY, MODE_PRIVATE);
		String token = mSharedPreferences.getString(Constants.AAO_TOKEN, "");

		if (!token.equals("")) {
			final String requestString = "http://202.118.31.241:8080/api/v1/courseSchedule2?token=" + token;

			JsonObjectRequest request = new JsonObjectRequest(
					requestString,
					new Response.Listener<JSONObject>() {
						@Override
						public void onResponse(JSONObject response) {
							JSONArray data = response.optJSONArray("data");
							if (data != null) {
								int nextCourse = 0, dayOfWeek = 0;
								mCourseList.clear();
								for (int i = 0; i < data.length(); i++) {
									String str = data.optJSONObject(i).optString("room");

									if (nextCourse == 12){
										nextCourse = 0;
										dayOfWeek++;
									}

									if ((i % 6) * 2 < nextCourse) continue;

									if (str.equals("")) {
										nextCourse += 2;
										continue;
									}
									StringTokenizer tokenizer = new StringTokenizer(str, " ");

									Course course = new Course();

									// ===  课程名  === //
									course.setCourseName(tokenizer.nextToken());

									// ===  周数  === //
									course.setWeeks(tokenizer.nextToken());

									// ===  课节与时间  === //
									String section = tokenizer.nextToken();
									if (section.equals("节")) {
										course.setSections(2);
										nextCourse += 2;
									} else {
										int sections = Integer.valueOf(section.substring(0, 1));
										course.setSections(sections);
										nextCourse += sections;
									}

									Calendar startTime, endTime;

									endTime = (Calendar) mFirstDayOfWeek.clone();
									endTime.add(Calendar.DAY_OF_MONTH, dayOfWeek);
									if(nextCourse > 4){
										if(nextCourse > 8){
											endTime.add(Calendar.MINUTE, 30);
										}
										endTime.add(Calendar.HOUR, 10 + nextCourse);
									}else {
										endTime.add(Calendar.HOUR, 8 + nextCourse);
									}
									startTime = (Calendar) endTime.clone();
									startTime.add(Calendar.HOUR, -course.getSections());

									if(course.getSections() == 2){
										switch (nextCourse){
											case 2:
											case 6:
											case 10:
												endTime.add(Calendar.MINUTE, -10);
												break;
											case 4:
											case 8:
											case 12:
												startTime.add(Calendar.MINUTE, 10);
												break;
										}
									}

									course.setStartTime(startTime);
									course.setEndTime(endTime);

									// ===  教室  === //
									course.setClassroom(tokenizer.nextToken());

									// ===  教师  === //
									String teacher = tokenizer.nextToken();
									course.setTeacher(teacher.substring(0,teacher.length()-1).replace(";"," "));

									mCourseList.add(course);
								}

								for(Course c:mCourseList){
									Log.d("CourseTableActivity", c.toString());
								}

								mWeekView.notifyDatasetChanged();
							}
						}
					},
					new Response.ErrorListener() {
						@Override
						public void onErrorResponse(VolleyError error) {
							Toast.makeText(getApplicationContext(), "获取课程表失败 请检查网络连接", Toast.LENGTH_LONG).show();
							Log.d("CourseTableActivity", "Error: " + error.getMessage());
						}
					}
			);

			AppController.getInstance().addToRequestQueue(request);
		}
	}

	/**
	 * Set up a date time interpreter which will show short date values when in week view and long
	 * date values otherwise.
	 *
	 * @param shortDate True if the date values should be short.
	 */
	private void setupDateTimeInterpreter(final boolean shortDate) {
		mWeekView.setDateTimeInterpreter(new DateTimeInterpreter() {
			@Override
			public String interpretDate(Calendar date) {
				SimpleDateFormat weekdayNameFormat = new SimpleDateFormat("EEE", Locale.getDefault());
				String weekday = weekdayNameFormat.format(date.getTime());
				SimpleDateFormat format = new SimpleDateFormat(" M/d", Locale.getDefault());

				// All android api level do not have a standard way of getting the first letter of
				// the week day name. Hence we get the first char programmatically.
				// Details: http://stackoverflow.com/questions/16959502/get-one-letter-abbreviation-of-week-day-of-a-date-in-java#answer-16959657
				if (shortDate)
					weekday = String.valueOf(weekday.charAt(0));
//				return weekday.toUpperCase() + format.format(date.getTime());
				return weekday.toUpperCase();
//				return format.format(date.getTime());
			}

			@Override
			public String interpretTime(int hour) {
				return hour > 12 ? (hour - 12) + " PM" : (hour == 0 ? "12 AM" : (hour == 12 ? "12 PM" : hour + " AM"));
			}
		});
	}

	private String getEventTitle(Course course) {
//		return String.format("Event of %02d:%02d %s/%d", time.get(Calendar.HOUR_OF_DAY), time.get(Calendar.MINUTE), time.get(Calendar.MONTH) + 1, time.get(Calendar.DAY_OF_MONTH));
		String eventTitle = course.getCourseName();

		if(eventTitle.length() > 9) eventTitle = eventTitle.substring(0,8) + "…";
		eventTitle = eventTitle.concat("\n\n" + course.getClassroom());

		return eventTitle;
	}

	private class OnMonthChangeListener implements MonthLoader.MonthChangeListener {
		@Override
		public List<WeekViewEvent> onMonthChange(int newYear, int newMonth) {
			Log.v("CourseTableActivity", newYear + " " + newMonth);

			List<WeekViewEvent> list = new ArrayList<WeekViewEvent>();

			if(newMonth != mFirstDayOfWeek.get(Calendar.MONTH)) return list;

			int counter = 0;
			for(Course course: mCourseList){
				WeekViewEvent event = new WeekViewEvent(
						counter,
						getEventTitle(course),
						course.getStartTime(),
						course.getEndTime()
				);

				event.setColor(getResources().getColor(R.color.colorOrange));
				list.add(event);

				counter++;
			}

			return list;
		}
	}
}
