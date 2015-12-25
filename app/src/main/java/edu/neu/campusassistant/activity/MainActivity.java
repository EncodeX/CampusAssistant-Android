package edu.neu.campusassistant.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.app.AppCompatDialogFragment;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.Toast;

import com.alertdialogpro.AlertDialogPro;
import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.StringRequest;
import com.nineoldandroids.view.ViewHelper;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.utils.AnimateBuilder;
import edu.neu.campusassistant.utils.AppController;
import edu.neu.campusassistant.utils.Constants;
import edu.neu.campusassistant.view.BoxLayout;
import edu.neu.campusassistant.view.CircularRevealLayout;

import edu.neu.campusassistant.R;
import edu.neu.campusassistant.view.FunctionButton;
import edu.neu.campusassistant.view.TestDialogFragment;
import edu.neu.campusassistant.view.WeatherItemView;

import com.pnikosis.materialishprogress.ProgressWheel;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MainActivity extends AppCompatActivity implements TestDialogFragment.TestDialogListener {

    private int mCircularViewX;
    private int mCircularViewY;
    private int mCircularViewTranslateX;
    private int mCircularViewTranslateY;
    private int mCircularViewHeight;
    private int mCircularViewWidth;
    private int mBoxYOffset;
    private int mBoxXOffset;
    private boolean mIsCircularViewInitialized = false;
    private String ipgw_username;
    private String ipgw_password;

    public static final String IPGW_TAG = "ipwg";
    public static final String WEATHER_TAG = "weather";

    private int mTheme = R.style.Theme_AlertDialogPro_Material_Light;
    private static final int NATIVE_THEME = Integer.MIN_VALUE;

    SharedPreferences sharedPreferences;
    SharedPreferences.Editor editor;

    @Bind(R.id.app_bar)
    Toolbar mToolBar;
    ActionBar mAppBar;
    @Bind(R.id.box_fab)
    FloatingActionButton mBoxFab;
    @Bind(R.id.circular_reveal_layout)
    CircularRevealLayout mCircularRevealLayout;
    @Bind(R.id.box_layout)
    BoxLayout mBoxLayout;
    @Bind(R.id.box_title_bar)
    RelativeLayout mBoxTitleBar;
    @Bind(R.id.close_box_button)
    ImageButton mCloseBoxButton;
    @Bind(R.id.drawer_layout)
    DrawerLayout mDrawerLayout;
    @Bind(R.id.sub_drawer)
    RelativeLayout mSubDrawer;
    @Bind(R.id.drawer_button)
    ImageButton mDrawerButton;

    @Bind(R.id.check_class_list_button)
    FunctionButton mCheckClassListButton;
    @Bind(R.id.check_empty_classroom_button)
    FunctionButton mCheckEmprtClassroomButton;
    @Bind(R.id.check_grade_button)
    FunctionButton mCheckGradeButton;
    @Bind(R.id.check_test_agenda_button)
    FunctionButton mCheckTextAgendaButton;

    @Bind(R.id.drawer_ipgw_connect_button)
    Button mIPGWConnectButton;
    @Bind(R.id.drawer_ipgw_disconnect_button)
    Button mIPGWDisconnectButton;
    @Bind(R.id.drawer_ipgw_user_name_edit_text)
    EditText mIPGWUsernameEditText;
    @Bind(R.id.drawer_ipgw_password_edit_text)
    EditText mIPGWPasswordEditText;
    @Bind(R.id.ipgw_progress_wheel)
    ProgressWheel mIPGWProgressWheel;
    @Bind(R.id.home_weather_item)
    WeatherItemView mWeatherItem;
	@Bind(R.id.account_education_system)
	RelativeLayout mAAOAcountLayout;

    @Bind(R.id.account_education_system)
    RelativeLayout mEducationSystemAccountLayout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        /** 初始化操作 **/
        initView();

        /** 获取当前天气 **/
        obtainCurrentWeatherInfo();

        /** 获取每日天气 **/
        obtainDaliyWeather();

        /** IP网关相关操作 **/
        ipgwOperation();

        /** 设置weekNo**/
        setupWeatherWeekNo();

        /** FunctionButton开启新Activity **/
        setupButtonTargetActivity();

        mEducationSystemAccountLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showMessageAlertDialog();
            }
        });

    }

	@Override
	public void onDialogNegativeClick(AppCompatDialogFragment dialog) {
		Log.d("Dialog","Cancel");
	}

	@Override
	public void onDialogPositiveClick(AppCompatDialogFragment dialog) {
		Log.d("Dialog","OK");
	}

	@Override
    protected void onResume() {
        super.onResume();
    }

    private void initView() {
        ButterKnife.bind(this);

        // 初始化sharedPreferences
        sharedPreferences = getSharedPreferences(Constants.SHARED_PREFS_KEY, MODE_PRIVATE);
        editor = sharedPreferences.edit();

        // 初始化文本框内容
        ipgw_username = sharedPreferences.getString(Constants.IPGW_USERNAME, "");
        ipgw_password = sharedPreferences.getString(Constants.IPGW_PASSWORD, "");
        mIPGWUsernameEditText.setText(ipgw_username);
        mIPGWPasswordEditText.setText(ipgw_password);

        setSupportActionBar(mToolBar);
        mAppBar = getSupportActionBar();

        mBoxFab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (!mIsCircularViewInitialized) {
                    mCircularViewX = (int) ViewHelper.getX(mCircularRevealLayout);
                    mCircularViewY = (int) ViewHelper.getY(mCircularRevealLayout);
                    mCircularViewHeight = mCircularRevealLayout.getHeight();
                    mCircularViewWidth = mCircularRevealLayout.getWidth();

                    int cx = mCircularViewX + mCircularViewWidth / 2;
                    int cy = mCircularViewY + mCircularViewHeight / 2;

                    int fabcx = (int) ViewHelper.getX(mBoxFab) + mBoxFab.getWidth() / 2;
                    int fabcy = (int) ViewHelper.getY(mBoxFab) + mBoxFab.getHeight() / 2;
//					int fabcy = (int) ViewHelper.getY(mBoxFab) + mBoxFab.getHeight() / 2 + (int)ViewHelper.getY(mCircularRevealLayout);

                    mCircularViewTranslateX = mCircularViewX + fabcx - cx;
                    mCircularViewTranslateY = mCircularViewY + fabcy - cy;

                    mBoxYOffset = mBoxLayout.getHeight() / 6;
                    mBoxXOffset = mBoxLayout.getWidth() / 12;

                    if (Build.VERSION.SDK_INT < 21) {
                        mCircularRevealLayout.setBackgroundColor(0xFFFFFFFF);
                    }
                    mIsCircularViewInitialized = true;
                }
                applyCircularRevealAnimation();
            }
        });

        mCloseBoxButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                applyCircularCloseAnimation();
            }
        });

        mDrawerLayout.setScrimColor(0x66000000);

        mDrawerLayout.setDrawerListener(new DrawerLayout.DrawerListener() {
            @Override
            public void onDrawerSlide(View drawerView, float slideOffset) {
                ViewHelper.setRotationY(mDrawerButton, (180 * (float) (Math.cos(Math.PI * (slideOffset - 1)) / 2 + 0.5)));
            }

            @Override
            public void onDrawerOpened(View drawerView) {}

            @Override
            public void onDrawerClosed(View drawerView) {
	            // 隐藏键盘
	            hideSoftKeyboard(MainActivity.this);
            }

            @Override
            public void onDrawerStateChanged(int newState) {}
        });

        mDrawerButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (mDrawerLayout.isDrawerOpen(mSubDrawer)) {
                    mDrawerLayout.closeDrawer(mSubDrawer);
                } else {
                    mDrawerLayout.openDrawer(mSubDrawer);
                }
            }
        });
    }

    @TargetApi(21)
    private void applyCircularRevealAnimation() {
        AnimatorSet animatorSet = new AnimatorSet();
        if (Build.VERSION.SDK_INT >= 21) {
            // get the center for the clipping circle
            int circlecx = mCircularViewWidth / 2;
            int circlecy = mCircularViewHeight / 2;

            // get the final radius for the clipping circle
            int finalRadius = Math.max(mCircularRevealLayout.getWidth(), mCircularRevealLayout.getHeight());

	        animatorSet.playTogether(
			        AnimateBuilder.setInterpolator(
					        AnimateBuilder.buildCircularRevealAnimation(
							        mCircularRevealLayout, circlecx, circlecy,
							        mBoxFab.getWidth() / 2, finalRadius, 250),
					        new AccelerateInterpolator(1.5f)
			        ),
			        AnimateBuilder.buildAbsoluteTranslateAnimation(
					        mCircularRevealLayout, AnimateBuilder.DIRECTION_X,
					        mCircularViewTranslateX, mCircularViewX, 200
			        ),
			        AnimateBuilder.buildAbsoluteTranslateAnimation(
					        mCircularRevealLayout, AnimateBuilder.DIRECTION_Y,
					        mCircularViewTranslateY, mCircularViewY, 200
			        ),
			        AnimateBuilder.buildColorAnimation(mCircularRevealLayout, 0xFFFF4081, 0xFFFFFFFF, 400),
			        AnimateBuilder.buildTranslateAnimation(
					        mBoxLayout, AnimateBuilder.DIRECTION_X,
					        mBoxXOffset, 0.0f, 300)
	        );

	        mBoxFab.setVisibility(View.INVISIBLE);
        } else {
            animatorSet.playTogether(
		            AnimateBuilder.buildAlphaAnimation(mCircularRevealLayout, 0.0f, 1.0f, 200),
		            AnimateBuilder.buildAlphaAnimation(mBoxFab, 1.0f, 0.0f, 200)
            );

	        mBoxFab.setEnabled(false);
        }

        animatorSet.playTogether(
		        AnimateBuilder.buildAlphaAnimation(mBoxTitleBar, 0.0f, 1.0f, 200),
		        AnimateBuilder.setStartDelay(AnimateBuilder.buildAlphaAnimation(mBoxLayout, 0.0f, 1.0f, 300), 100),
		        AnimateBuilder.buildTranslateAnimation(mBoxLayout, AnimateBuilder.DIRECTION_Y, mBoxYOffset, 0.0f, 350)
        );

	    mBoxTitleBar.setVisibility(View.VISIBLE);
	    mCircularRevealLayout.setVisibility(View.VISIBLE);
        mCloseBoxButton.setEnabled(true);
        animatorSet.start();
    }

    @TargetApi(21)
    private void applyCircularCloseAnimation() {
        AnimatorSet animatorSet = new AnimatorSet();
        if (Build.VERSION.SDK_INT >= 21) {
            int circlecx = mCircularViewWidth / 2;
            int circlecy = mCircularViewHeight / 2;

            int initialRadius = Math.max(mCircularRevealLayout.getWidth(), mCircularRevealLayout.getHeight());

            animatorSet.playTogether(
		            AnimateBuilder.setInterpolator(
				            AnimateBuilder.buildCircularRevealAnimation(
						            mCircularRevealLayout, circlecx, circlecy,
						            initialRadius, mBoxFab.getWidth() / 2, 400),
				            new DecelerateInterpolator(2.0f)
		            ),
		            AnimateBuilder.buildAbsoluteTranslateAnimation(
				            mCircularRevealLayout, AnimateBuilder.DIRECTION_X,
				            mCircularViewX, mCircularViewTranslateX, 200
		            ),
		            AnimateBuilder.buildAbsoluteTranslateAnimation(
				            mCircularRevealLayout, AnimateBuilder.DIRECTION_Y,
				            mCircularViewY, mCircularViewTranslateY, 200
		            ),
		            AnimateBuilder.buildColorAnimation(mCircularRevealLayout, 0xFFFFFFFF, 0xFFFF4081, 200)
            );
        } else {
            animatorSet.playTogether(
		            AnimateBuilder.buildAlphaAnimation(mCircularRevealLayout, 1.0f, 0.0f, 200),
		            AnimateBuilder.buildAlphaAnimation(mBoxFab, 0.0f, 1.0f, 200),
		            AnimateBuilder.buildTranslateAnimation(mBoxLayout, AnimateBuilder.DIRECTION_Y, 0.0f, mBoxYOffset, 350)
            );
        }

        animatorSet.playTogether(
		        AnimateBuilder.buildAlphaAnimation(mBoxTitleBar, 1.0f, 0.0f, 300),
		        AnimateBuilder.setStartDelay(AnimateBuilder.buildAlphaAnimation(mBoxLayout, 1.0f, 0.0f, 200), 100)
        );
        animatorSet.addListener(new AnimatorListenerAdapter() {
            @Override
            public void onAnimationEnd(Animator animator) {
                mCircularRevealLayout.setVisibility(View.INVISIBLE);
                mBoxTitleBar.setVisibility(View.INVISIBLE);
                mBoxFab.setVisibility(View.VISIBLE);
                mBoxFab.setEnabled(true);
            }
        });
        mCloseBoxButton.setEnabled(false);
        animatorSet.start();
    }

    /**
     * ip网关操作
     */
    private void ipgwOperation() {
        mIPGWConnectButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                doIPGWOperation("connect");
            }
        });
        mIPGWDisconnectButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                doIPGWOperation("disconnectall");
            }
        });

        mIPGWProgressWheel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                AppController.getInstance().cancelPendingRequests(IPGW_TAG);
	            buildIPGWFinishRequestAnimation().start();
            }
        });

    }

    /***
     * 执行IPGW相关操作
     */
    private void doIPGWOperation(final String operation) {
        ipgw_username = mIPGWUsernameEditText.getText().toString();
        ipgw_password = mIPGWPasswordEditText.getText().toString();
        if (ipgw_username.equals("")) {
            showToastWithString("请输入校园网账号", true);
        } else if (ipgw_password.equals("")) {
            showToastWithString("请输入校园网密码", true);
        } else {
            hideSoftKeyboard(MainActivity.this); // 隐藏键盘

	        final AnimatorSet finishRequestAnimation = buildIPGWFinishRequestAnimation();

            /** ip网关与网络请求 **/
            final StringRequest stringRequest = new StringRequest(
                    Request.Method.POST,
                    "http://ipgw.neu.edu.cn/ipgw/ipgw.ipgw",
                    new Response.Listener<String>() {
                        @Override
                        public void onResponse(String response) {
                            mIPGWUsernameEditText.setEnabled(true);
                            mIPGWPasswordEditText.setEnabled(true);

                            Map<String, String> map = extractValuesFromResponse(response);
                            String isSuccess = map.get("SUCCESS");
                            if (isSuccess.equals("NO")) {
                                String reason = map.get("REASON");
                                if (operation.equals("connect")) {
                                    showToastWithString("连接失败,原因：" + reason, true);
                                } else {
                                    showToastWithString("断开连接失败,原因：" + reason, true);
                                }
                            } else {
                                editor.putString(Constants.IPGW_USERNAME, ipgw_username);
                                editor.putString(Constants.IPGW_PASSWORD, ipgw_password);
                                editor.commit();
                                if (operation.equals("connect")) {
                                    showToastWithString("连接成功", true);
                                } else {
                                    showToastWithString("断开连接成功", true);
                                }
                            }
	                        finishRequestAnimation.start();
                        }
                    },
                    new Response.ErrorListener() {
                        @Override
                        public void onErrorResponse(VolleyError error) {
                            mIPGWUsernameEditText.setEnabled(true);
                            mIPGWPasswordEditText.setEnabled(true);
                            showToastWithString("连接超时，请检查WIFI是否连接到校园网", true);

	                        finishRequestAnimation.start();
                        }
                    }) {
                @Override
                protected Map<String, String> getParams() throws AuthFailureError {
                    Map<String, String> params = new HashMap<String, String>();
                    params.put("uid", ipgw_username);
                    params.put("password", ipgw_password);
                    params.put("operation", operation);
                    params.put("range", "2");
                    params.put("timeout", "1");
                    return params;
                }
            };

	        AnimatorSet startRequestAnimation = new AnimatorSet();
	        startRequestAnimation.playTogether(
			        AnimateBuilder.buildAlphaAnimation(mIPGWConnectButton, 1.0f, 0.0f, 250),
			        AnimateBuilder.buildAlphaAnimation(mIPGWDisconnectButton, 1.0f, 0.0f, 250),
			        AnimateBuilder.buildAlphaAnimation(mIPGWProgressWheel, 0.0f, 1.0f, 250)
	        );

	        startRequestAnimation.addListener(new Animator.AnimatorListener() {
		        @Override
		        public void onAnimationStart(Animator animator) {
			        mIPGWProgressWheel.setVisibility(View.VISIBLE);
		        }

		        @Override
		        public void onAnimationEnd(Animator animator) {
			        // 此句会发送联网请求
			        AppController.getInstance().addToRequestQueue(stringRequest, IPGW_TAG);
			        mIPGWConnectButton.setVisibility(View.INVISIBLE);
			        mIPGWDisconnectButton.setVisibility(View.INVISIBLE);
		        }

		        @Override
		        public void onAnimationCancel(Animator animator) {}

		        @Override
		        public void onAnimationRepeat(Animator animator) {}
	        });

	        startRequestAnimation.start();
        }
    }

	private AnimatorSet buildIPGWFinishRequestAnimation(){
		AnimatorSet finishRequestAnimation = new AnimatorSet();

		finishRequestAnimation.playTogether(
				AnimateBuilder.buildAlphaAnimation(mIPGWConnectButton, 0.0f, 1.0f, 250),
				AnimateBuilder.buildAlphaAnimation(mIPGWDisconnectButton, 0.0f, 1.0f, 250),
				AnimateBuilder.buildAlphaAnimation(mIPGWProgressWheel, 1.0f, 0.0f, 250)
		);

		finishRequestAnimation.addListener(new Animator.AnimatorListener() {
			@Override
			public void onAnimationStart(Animator animator) {
				mIPGWConnectButton.setVisibility(View.VISIBLE);
				mIPGWDisconnectButton.setVisibility(View.VISIBLE);
			}

			@Override
			public void onAnimationEnd(Animator animator) {
				mIPGWProgressWheel.setVisibility(View.INVISIBLE);
			}

			@Override
			public void onAnimationCancel(Animator animator) {}

			@Override
			public void onAnimationRepeat(Animator animator) {}
		});

		return finishRequestAnimation;
	}

    /**
     * 隐藏键盘
     */
    private void hideSoftKeyboard(Activity activity) {
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService(Activity.INPUT_METHOD_SERVICE);
        inputMethodManager.hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 0);
    }

    /**
     * 重response中提取响应的响应
     */
    private Map<String, String> extractValuesFromResponse(String response) {
        String comment = "";
        Pattern p = Pattern.compile("\\<!--(.+)--\\>");
        Matcher m = p.matcher(response);
        while (m.find()) {
            comment = m.group();
        }
        String[] params = comment.split(" ");
        Map<String, String> map = new HashMap<String, String>();
        for (String param : params) {
            if (param.contains("=")) {
                String name = param.split("=")[0];
                String value = param.split("=")[1];
                map.put(name, value);
            }
        }
        return map;
    }

    /**
     * 显示Toast
     */
    private void showToastWithString(String message, boolean isShort) {
        if (!isShort) {
            Toast.makeText(getApplicationContext(), message, Toast.LENGTH_LONG).show();
        } else {
            Toast.makeText(getApplicationContext(), message, Toast.LENGTH_SHORT).show();
        }
    }

    /**
     * 获取当前天气信息
     */
    private void obtainCurrentWeatherInfo() {
        String url = "http://api.openweathermap.org/data/2.5/weather?q=Shengyang,CN&units=metric&APPID=66e616f33710e6af3c0f25b185001dde";
        JsonObjectRequest jsonObjReq = new JsonObjectRequest(Request.Method.GET, url
                , new Response.Listener<JSONObject>() {
            @Override
            public void onResponse(JSONObject response) {
                Log.d("weather", response.toString());
                try {
                    JSONObject mainObject = response.getJSONObject("main");
                    int currentTemp = mainObject.getInt("temp");
                    mWeatherItem.setupCurrentTemperature(currentTemp);

                    JSONObject weatherObject = response.getJSONArray("weather").getJSONObject(0);
                    String icon = weatherObject.getString("icon");
                    mWeatherItem.setupCurrentWeatherIcon(icon);
                    Log.d("weather", "" + currentTemp);
                    Log.d("weather", icon);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                showToastWithString("天气更新失败，请检查当前网路连接", true);
                Log.d("weather", "Error: " + error.getMessage());
            }
        });
    // Adding request to request queue
        AppController.getInstance().addToRequestQueue(jsonObjReq, WEATHER_TAG);
    }

    /**
     * 获取每日信息
     */
    private void obtainDaliyWeather() {
        String url = "http://api.openweathermap.org/data/2.5/forecast/daily?q=Shenyang,CN&cnt=3&units=metric&APPID=66e616f33710e6af3c0f25b185001dde";
        JsonObjectRequest jsonObjReq = new JsonObjectRequest(Request.Method.GET, url
                , new Response.Listener<JSONObject>() {
            @Override
            public void onResponse(JSONObject response) {
                Log.d("weather", response.toString());
                try {
                    JSONArray listArray = response.getJSONArray("list");
                    for (int i = 0; i < listArray.length(); i++) {
                        JSONObject object = listArray.getJSONObject(i);
                        JSONObject tempObject = object.getJSONObject("temp");
                        int minTemp = (int) tempObject.getDouble("min");
                        int maxTemp = (int) tempObject.getDouble("max");
                        JSONObject weatherObject = object.getJSONArray("weather").getJSONObject(0);
                        String icon = weatherObject.getString("icon");
                        mWeatherItem.setupTemperature(i, minTemp, maxTemp);
                        mWeatherItem.setupWeatherIcon(i, icon);

                        Log.d("weather", "" + minTemp);
                        Log.d("weather", "" + maxTemp);
                        Log.d("weather", icon);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                Log.d("weather", "Error: " + error.getMessage());
            }
        });
// Adding request to request queue
        AppController.getInstance().addToRequestQueue(jsonObjReq, WEATHER_TAG);
    }

    /**
     * 设置星期textView
     */
    private void setupWeatherWeekNo() {
        Calendar calendar = Calendar.getInstance();
        Date todayDate = new Date();
        calendar.setTime(todayDate);
        int i = calendar.get(Calendar.DAY_OF_WEEK);
        mWeatherItem.setupWeedNoTextview(i);
    }

    /**
     * 设置学习生活的底部四个按钮所要跳转的activity
     */
    private void setupButtonTargetActivity(){
        mCheckClassListButton.setIntentActivity("edu.neu.campusassistant.activity.CourseTableActivity");
        mCheckEmprtClassroomButton.setIntentActivity("edu.neu.campusassistant.activity.CourseTableActivity");
        mCheckGradeButton.setIntentActivity("edu.neu.campusassistant.activity.GradeListActivity");
        mCheckTextAgendaButton.setIntentActivity("edu.neu.campusassistant.activity.ExamAgendaListActivity");
    }

    private AlertDialog.Builder createAlertDialogBuilder() {
        if (mTheme == NATIVE_THEME) {
            return new AlertDialog.Builder(this);
        }

        return new AlertDialogPro.Builder(this, mTheme);
    }

    private void showMessageAlertDialog() {
        createAlertDialogBuilder()
                .setTitle(R.string.app_name)
                .setMessage("Hello, charming AlertDialogPro!")
                .setPositiveButton("Nice Job", new ButtonClickedListener("Dismiss"))
                .show();
    }

    private class ButtonClickedListener implements DialogInterface.OnClickListener {
        private CharSequence mShowWhenClicked;

        public ButtonClickedListener(CharSequence showWhenClicked) {
            mShowWhenClicked = showWhenClicked;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            showToastWithString("\"" + mShowWhenClicked + "\"" + " button clicked.", true);
        }
    }

}
