package edu.neu.campusassistant.view;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;
import edu.neu.campusassistant.utils.AppController;

/**
 * Created by JacobKong on 15/12/23.
 */
public class WeatherItemView extends RelativeLayout {
    private Context mContext;

    @Bind(R.id.current_weather_temp)
    TextView mCurrentTemp;
    @Bind(R.id.today_weather_temp)
    TextView mTodayTemp;
    @Bind(R.id.tomorrow_weather_temp)
    TextView mTomorrowTemp;
    @Bind(R.id.third_day_weather_temp)
    TextView mThirdTemp;

    @Bind(R.id.current_weather_icon)
    ImageView mCurrentWeatherIcon;
    @Bind(R.id.today_weather_icon)
    ImageView mTodayWeatherIcon;
    @Bind(R.id.tomorrow_weather_icon)
    ImageView mTomorrowWeatherIcon;
    @Bind(R.id.third_day_weather_icon)
    ImageView mThirdWeatherIcon;

    @Bind(R.id.tomorrow_week_no)
    TextView mTomorrowNo;
    @Bind(R.id.third_day_week_no)
    TextView mThirdNo;



    public WeatherItemView(Context context) {
        this(context, null);
    }

    public WeatherItemView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public WeatherItemView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs);
    }


    private void init(@NonNull Context context, @NonNull AttributeSet attrs){
        inflate(getContext(), R.layout.view_weather_item, this);
        mContext = context;
        ButterKnife.bind(this);
    }
    public void setupCurrentTemperature(int temp){
        String currentTemp = temp + "ºC";
        mCurrentTemp.setText(currentTemp);
    }

    public void setupTemperature(int index, int min, int max){
        String temp = min + "º~"+ max + "ºC";
        switch (index){
            case 0:
                mTodayTemp.setText(temp);
                break;
            case 1:
                mTomorrowTemp.setText(temp);
                break;
            case 2:
                mThirdTemp.setText(temp);
                break;
        }
    }

    public void setupWeedNoTextview(int today){
        setupWeekNo(mTomorrowNo, today + 1);
        setupWeekNo(mThirdNo, today + 2);
    }

    private void setupWeekNo(TextView textView, int weekNo){
        switch (weekNo){
            case 1:
                textView.setText("周日");
                break;
            case 2:
                textView.setText("周一");
                break;
            case 3:
                textView.setText("周二");
                break;
            case 4:
                textView.setText("周三");
                break;
            case 5:
                textView.setText("周四");
                break;
            case 6:
                textView.setText("周五");
                break;
            case 7:
                textView.setText("周六");
                break;
            case 8:
                textView.setText("周日");
                break;
            case 9:
                textView.setText("周一");
        }
    }

    public void setupWeatherIcon(int index, String iconName){
        Resources res = getResources();
        int resID = res.getIdentifier("weather_"+iconName, "drawable", AppController.getContext().getPackageName());

        switch (index){
            case 0:
                if (resID!=0) {
                    mTodayWeatherIcon.setImageResource(resID);
                }else {
                    mTodayWeatherIcon.setImageResource(R.drawable.weather_sun);
                }
                break;
            case 1:
                if (resID!=0) {
                    mTomorrowWeatherIcon.setImageResource(resID);
                }else {
                    mTomorrowWeatherIcon.setImageResource(R.drawable.weather_sun);
                }
                break;
            case 2:
                if (resID!=0) {
                    mThirdWeatherIcon.setImageResource(resID);
                }else {
                    mThirdWeatherIcon.setImageResource(R.drawable.weather_sun);
                }
                break;
        }
    }

    public void setupCurrentWeatherIcon(String iconName){
        Resources res = getResources();
        int resID = res.getIdentifier("weather_"+iconName, "drawable", AppController.getContext().getPackageName());
        if (resID!=0) {
            mCurrentWeatherIcon.setImageResource(resID);
        }else {
            mCurrentWeatherIcon.setImageResource(R.drawable.weather_sun);
        }
    }
}
