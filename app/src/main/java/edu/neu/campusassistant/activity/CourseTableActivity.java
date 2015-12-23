package edu.neu.campusassistant.activity;

import android.graphics.RectF;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import com.alamkanak.weekview.MonthLoader;
import com.alamkanak.weekview.WeekView;
import com.alamkanak.weekview.WeekViewEvent;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;

public class CourseTableActivity extends AppCompatActivity {

	@Bind(R.id.week_view)
	WeekView mWeekView;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_course_table);

		ButterKnife.bind(this);

		mWeekView.setMonthChangeListener(new MonthLoader.MonthChangeListener() {
			@Override
			public List<WeekViewEvent> onMonthChange(int newYear, int newMonth) {
				List<WeekViewEvent> list = new ArrayList<WeekViewEvent>();
				return list;
			}
		});

		Calendar calendar = Calendar.getInstance();
		calendar.set(2015,12,23);

		mWeekView.setFirstDayOfWeek(Calendar.SUNDAY);
		mWeekView.setHourHeight((int)(mWeekView.getHourHeight()*0.7));
		mWeekView.goToDate(calendar);
		mWeekView.goToHour(8);
	}
}
