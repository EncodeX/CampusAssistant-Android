package edu.neu.campusassistant.activity;

import android.graphics.RectF;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.widget.Button;

import com.alamkanak.weekview.DateTimeInterpreter;
import com.alamkanak.weekview.MonthLoader;
import com.alamkanak.weekview.WeekView;
import com.alamkanak.weekview.WeekViewEvent;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;

public class CourseTableActivity extends AppCompatActivity {

	@Bind(R.id.week_view)
	WeekView mWeekView;
	@Bind(R.id.test_button)
	Button mTestButton;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_course_table);

		ButterKnife.bind(this);

		mWeekView.setMonthChangeListener(new MonthLoader.MonthChangeListener() {
			@Override
			public List<WeekViewEvent> onMonthChange(int newYear, int newMonth) {
				List<WeekViewEvent> list = new ArrayList<WeekViewEvent>();

				Calendar startTime = Calendar.getInstance();
				startTime.set(Calendar.HOUR_OF_DAY, 3);
				startTime.set(Calendar.MINUTE, 0);
				startTime.set(Calendar.MONTH, newMonth-1);
				startTime.set(Calendar.YEAR, newYear);
				Calendar endTime = (Calendar) startTime.clone();
				endTime.add(Calendar.HOUR, 1);
				endTime.set(Calendar.MONTH, newMonth-1);
				WeekViewEvent event = new WeekViewEvent(1, getEventTitle(startTime), startTime, endTime);
				event.setColor(getResources().getColor(R.color.colorOrange));
				list.add(event);
				return list;
			}
		});

		mTestButton.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View view) {
//				mWeekView.goToToday();
				mWeekView.setNumberOfVisibleDays(7);
			}
		});

//		Calendar calendar = Calendar.getInstance();
//		calendar.setTime(new Date(2015,12,23));

//		mWeekView.setFirstDayOfWeek(Calendar.SUNDAY);
//		mWeekView.setHourHeight((int)(mWeekView.getHourHeight()*0.7));
//		mWeekView.goToToday();
//		mWeekView.goToHour(8);
//		mWeekView.setDayNameLength(WeekView.LENGTH_SHORT);

		setupDateTimeInterpreter(false);
//		mWeekView.goToToday();
	}

	@Override
	protected void onResume() {
		super.onResume();
	}

	/**
	 * Set up a date time interpreter which will show short date values when in week view and long
	 * date values otherwise.
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

	private String getEventTitle(Calendar time) {
		return String.format("Event of %02d:%02d %s/%d", time.get(Calendar.HOUR_OF_DAY), time.get(Calendar.MINUTE), time.get(Calendar.MONTH)+1, time.get(Calendar.DAY_OF_MONTH));
	}
}
