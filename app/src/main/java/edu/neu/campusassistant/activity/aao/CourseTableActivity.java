package edu.neu.campusassistant.activity.aao;

import android.content.SharedPreferences;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.SwitchCompat;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.Toast;

import com.alamkanak.weekview.DateTimeInterpreter;
import com.alamkanak.weekview.MonthLoader;
import com.alamkanak.weekview.WeekView;
import com.alamkanak.weekview.WeekViewEvent;
import com.android.volley.VolleyError;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;
import edu.neu.campusassistant.bean.Course;
import edu.neu.campusassistant.utils.Constants;
import edu.neu.campusassistant.utils.CourseTableManager;

public class CourseTableActivity extends AppCompatActivity {

	@Bind(R.id.app_bar)
	Toolbar mToolBar;
	ActionBar mAppBar;
	@Bind(R.id.week_view)
	WeekView mWeekView;
	@Bind(R.id.campus_switch)
	SwitchCompat mCampusSwitch;

	private Calendar mFirstDayOfWeek;
	private SharedPreferences mSharedPreferences;
	private List<Course> mCourseList;

	private CourseTableManager.CourseListListener mListListener;

	private int mColorList[] = {
			R.color.event_color_01,
			R.color.event_color_02,
			R.color.event_color_03,
			R.color.event_color_04,
			R.color.event_color_05,
			R.color.event_color_06,
			R.color.event_color_07
	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_course_table);

		mSharedPreferences = this.getSharedPreferences(Constants.SHARED_PREFS_KEY, MODE_PRIVATE);

		// 初始化视图
		initView();

		// 初始化数据
		initData();
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
		CourseTableManager.getInstance(this).removeListener(mListListener);
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
			if(mFirstDayOfWeek.get(Calendar.DAY_OF_WEEK) == Calendar.SUNDAY){
				mFirstDayOfWeek.add(Calendar.DAY_OF_YEAR, -7);
			}
			mFirstDayOfWeek.set(mFirstDayOfWeek.get(Calendar.YEAR), mFirstDayOfWeek.get(Calendar.MONTH), mFirstDayOfWeek.get(Calendar.DAY_OF_MONTH) - mFirstDayOfWeek.get(Calendar.DAY_OF_WEEK) + 2);
		}
		mFirstDayOfWeek.set(Calendar.HOUR,0);
		mFirstDayOfWeek.set(Calendar.MINUTE,0);
		mFirstDayOfWeek.set(Calendar.SECOND,0);
		mFirstDayOfWeek.set(Calendar.MILLISECOND,0);
		mWeekView.goToDate(mFirstDayOfWeek);

		mCampusSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
			@Override
			public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
				SharedPreferences.Editor editor = mSharedPreferences.edit();
				editor.putBoolean(Constants.IS_CAMPUS_HUNNAN, b);
				editor.apply();

				CourseTableManager.getInstance(CourseTableActivity.this).loadCourseList();
			}
		});

		mCampusSwitch.setChecked(mSharedPreferences.getBoolean(Constants.IS_CAMPUS_HUNNAN, false));
	}

	private void initData() {
		mCourseList = new ArrayList<>();
		mListListener = new CourseTableManager.CourseListListener() {
			@Override
			public void onCourseListLoaded(List<Course> courseList) {
				mCourseList = courseList;
				mWeekView.notifyDatasetChanged();
			}

			@Override
			public void onError(VolleyError error) {
				Toast.makeText(getApplicationContext(), "获取课程表失败 请检查网络连接", Toast.LENGTH_LONG).show();
				Log.d("CourseTableActivity", "Error: " + error.getMessage());
			}
		};

		CourseTableManager.getInstance(this).addListener(mListListener);
		CourseTableManager.getInstance(this).loadCourseList();
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
//				return weekday.toUpperCase();
				return format.format(date.getTime());
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
		String classroom = course.getClassroom();

//		if(eventTitle.length() > 9) eventTitle = eventTitle.substring(0,8) + "…";
//		eventTitle = eventTitle.concat("\n\n" + classroom.substring(0,2) + "\n" + classroom.substring(2, classroom.length()));
		eventTitle = eventTitle.concat("\n\n" + classroom);

		return eventTitle;
	}

	private class OnMonthChangeListener implements MonthLoader.MonthChangeListener {
		@Override
		public List<WeekViewEvent> onMonthChange(int newYear, int newMonth) {
			Log.v("CourseTableActivity", newYear + " " + newMonth);

			List<WeekViewEvent> list = new ArrayList<WeekViewEvent>();
			Map<String, Integer> courseColorList = new HashMap<>();

			if(newMonth != mFirstDayOfWeek.get(Calendar.MONTH) + 1) return list;

			int counter = 0, colorCounter = 0;
			for(Course course: mCourseList){
				WeekViewEvent event = new WeekViewEvent(
						counter++,
						getEventTitle(course),
						course.getStartTime(),
						course.getEndTime()
				);

				if(!courseColorList.containsKey(course.getCourseName())){
					courseColorList.put(course.getCourseName(), mColorList[colorCounter++]);
				}
				event.setColor(getResources().getColor(courseColorList.get(course.getCourseName())));
				list.add(event);
			}

			return list;
		}
	}
}
