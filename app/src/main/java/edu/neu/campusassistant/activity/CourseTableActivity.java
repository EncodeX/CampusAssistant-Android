package edu.neu.campusassistant.activity;

import android.graphics.RectF;
import android.support.v4.view.MotionEventCompat;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.Toast;

import com.alamkanak.weekview.MonthLoader;
import com.alamkanak.weekview.WeekView;
import com.alamkanak.weekview.WeekViewEvent;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.text.SimpleDateFormat;
import java.util.Locale;

import butterknife.Bind;
import edu.neu.campusassistant.R;

public class CourseTableActivity extends AppCompatActivity implements MonthLoader.MonthChangeListener{

    @Bind(R.id.course_week_view)
    WeekView mWeekView;

    private WeekView.EventClickListener mEventClickListener;
    private WeekView.EventLongPressListener mEventLongPressListener;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_course_table);

        // Get a reference for the week view in the layout.
        mWeekView = (WeekView) findViewById(R.id.course_week_view);

        // The week view has infinite scrolling horizontally. We have to provide the events of a
        // month every time the month changes on the week view.
        mWeekView.setMonthChangeListener(this);

//        // Set up a date time interpreter to interpret how the date and time will be formatted in
//        // the week view. This is optional.
//        setupDateTimeInterpreter(false);

    }


    @Override
    public List<WeekViewEvent> onMonthChange(int newYear, int newMonth) {
        // Populate the week view with some events.
        List<WeekViewEvent> events = new ArrayList<WeekViewEvent>();

        return events;
    }

    private String getEventTitle(Calendar time) {
        return String.format("Event of %02d:%02d %s/%d", time.get(Calendar.HOUR_OF_DAY), time.get(Calendar.MINUTE), time.get(Calendar.MONTH)+1, time.get(Calendar.DAY_OF_MONTH));
    }


}
