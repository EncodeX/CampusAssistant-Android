package edu.neu.campusassistant.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.StringTokenizer;

import edu.neu.campusassistant.bean.Course;

/**
 * Created with Android Studio.
 * Author: Enex Tapper
 * Date: 16/1/9
 * Project: CampusAssistant
 * Package: edu.neu.campusassistant.utils
 */
public class CourseTableManager {
	private static CourseTableManager mInstance;
	private Context mContext;
	private SharedPreferences mSharedPreferences;
	private Calendar mFirstDayOfWeek;

	private List<CourseListListener> mListenerList;
	private List<Course> mCourseList;

	private CourseTableManager(Context context) {
		this.mContext = context;
		this.mSharedPreferences = context.getSharedPreferences(Constants.SHARED_PREFS_KEY, Context.MODE_PRIVATE);

		this.mFirstDayOfWeek = Calendar.getInstance();
		if (mFirstDayOfWeek.get(Calendar.DAY_OF_WEEK) != Calendar.MONDAY) {
			mFirstDayOfWeek.set(mFirstDayOfWeek.get(Calendar.YEAR), mFirstDayOfWeek.get(Calendar.MONTH), mFirstDayOfWeek.get(Calendar.DAY_OF_MONTH) - mFirstDayOfWeek.get(Calendar.DAY_OF_WEEK) + 2);
		}
		mFirstDayOfWeek.set(Calendar.HOUR_OF_DAY, 0);
		mFirstDayOfWeek.set(Calendar.MINUTE, 0);
		mFirstDayOfWeek.set(Calendar.SECOND, 0);
		mFirstDayOfWeek.set(Calendar.MILLISECOND, 0);

		mListenerList = new ArrayList<>();
		mCourseList = new ArrayList<>();
	}

	public static CourseTableManager getInstance(Context context) {
		if (mInstance == null) {
			mInstance = new CourseTableManager(context);
		}

		return mInstance;
	}

	public void addListener(CourseListListener courseListListener) {
		mListenerList.add(courseListListener);
	}

	public void removeListener(CourseListListener courseListListener) {
		mListenerList.remove(courseListListener);
	}

	public void loadCourseList() {
		if(mCourseList.size() != 0){
			refreshCourseTable();
			return;
		}

		String token = mSharedPreferences.getString(Constants.AAO_TOKEN, "");

		if (!token.equals("")) {
			final String requestString = "http://202.118.31.241:8080/api/v1/courseSchedule2?token=" + token;

			JsonObjectRequest request = new JsonObjectRequest(
					requestString,
					new Response.Listener<JSONObject>() {
						@Override
						public void onResponse(JSONObject response) {
							JSONArray courseData = response.optJSONArray("data");
							refreshCourseTable(courseData);
						}
					},
					new Response.ErrorListener() {
						@Override
						public void onErrorResponse(VolleyError error) {
							if (mListenerList.size() > 0) {
								for (CourseListListener listener : mListenerList) {
									listener.onError(error);
								}
							}
						}
					}
			);

			AppController.getInstance().addToRequestQueue(request);
		}
	}

	private void refreshCourseTable() {
		final boolean isCampusHunnan = mSharedPreferences.getBoolean(Constants.IS_CAMPUS_HUNNAN, false);
		if(mSharedPreferences.getBoolean(Constants.CURRENT_TIMETABLE_HUNNAN, false) != isCampusHunnan){
			for (Course course : mCourseList) {
				Calendar startTime = course.getStartTime(), endTime = course.getEndTime();

				if (startTime.get(Calendar.HOUR_OF_DAY) >= 8 && endTime.get(Calendar.HOUR_OF_DAY) <= 13) {
					if (isCampusHunnan) {
						startTime.add(Calendar.MINUTE, 30);
						endTime.add(Calendar.MINUTE, 30);
					} else {
						startTime.add(Calendar.MINUTE, -30);
						endTime.add(Calendar.MINUTE, -30);
					}
				}

				course.setStartTime(startTime);
				course.setEndTime(endTime);
			}
			SharedPreferences.Editor editor = mSharedPreferences.edit();
			editor.putBoolean(Constants.CURRENT_TIMETABLE_HUNNAN, isCampusHunnan);
			editor.apply();
		}
		if (mListenerList.size() > 0) {
			for (CourseListListener listener : mListenerList) {
				listener.onCourseListLoaded(mCourseList);
			}
		}
	}

	private void refreshCourseTable(JSONArray courseData) {

		if (courseData != null) {
			int nextCourse = 0, dayOfWeek = 0;
			mCourseList.clear();
			for (int i = 0; i < courseData.length(); i++) {
				String str = courseData.optJSONObject(i).optString("room");

				if (nextCourse == 12) {
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
					course.setStartSection(nextCourse + 1);
					nextCourse += 2;
				} else {
					int sections = Integer.valueOf(section.substring(0, 1));
					course.setSections(sections);
					course.setStartSection(nextCourse + 1);
					nextCourse += sections;
				}

				Calendar startTime, endTime;

				endTime = (Calendar) mFirstDayOfWeek.clone();
				endTime.add(Calendar.DAY_OF_MONTH, dayOfWeek);
				if (nextCourse > 4) {
					if (nextCourse > 8) {
						endTime.add(Calendar.MINUTE, 30);
					}
					endTime.add(Calendar.HOUR_OF_DAY, 10 + nextCourse);
				} else {
					endTime.add(Calendar.HOUR_OF_DAY, 8 + nextCourse);
					if (mSharedPreferences.getBoolean(Constants.IS_CAMPUS_HUNNAN, false)) {
						endTime.add(Calendar.MINUTE, 30);
					}
				}
				startTime = (Calendar) endTime.clone();
				startTime.add(Calendar.HOUR_OF_DAY, -course.getSections());

				if (course.getSections() == 2) {
					switch (nextCourse) {
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
				course.setTeacher(teacher.substring(0, teacher.length() - 1).replace(";", " "));

				mCourseList.add(course);
			}

			for (Course course : mCourseList) {
				Log.d("CourseTableManager", course.toString());
			}
			Log.d("CourseTableManager", mFirstDayOfWeek.getTime().toString());

			if (mListenerList.size() > 0) {
				for (CourseListListener listener : mListenerList) {
					listener.onCourseListLoaded(mCourseList);
				}
			}
		}
	}

	public interface CourseListListener {
		void onCourseListLoaded(List<Course> courseList);

		void onError(VolleyError error);
	}
}
