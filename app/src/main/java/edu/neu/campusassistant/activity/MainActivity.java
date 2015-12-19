package edu.neu.campusassistant.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.nineoldandroids.view.ViewHelper;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.view.BoxLayout;
import edu.neu.campusassistant.view.CircularRevealLayout;

import edu.neu.campusassistant.R;
import edu.neu.campusassistant.view.FunctionButton;

import com.pnikosis.materialishprogress.ProgressWheel;

public class MainActivity extends AppCompatActivity {

    private int mCircularViewX;
    private int mCircularViewY;
    private int mCircularViewTranslateX;
    private int mCircularViewTranslateY;
    private int mCircularViewHeight;
    private int mCircularViewWidth;
    private int mBoxYOffset;
    private int mBoxXOffset;
    private boolean mIsCircularViewInitialized = false;
    private String username;
    private String password;

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
    @Bind(R.id.drawer_ipwg_connect_button)
    Button mIPWGConnectButton;
    @Bind(R.id.drawer_ipwg_disconnect_button)
    Button mIPWGDisconnectButton;
    @Bind(R.id.drawer_ipwg_user_name_edit_text)
    EditText mIPWGUsernameEditText;
    @Bind(R.id.drawer_ipwg_password_edit_text)
    EditText mIPWGPasswordEditText;
    @Bind(R.id.ipwg_progress_wheel)
    ProgressWheel mIPWGProgressWheel;


    RequestQueue requestQueue;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        initView();

        /** IP网关相关操作 **/
        ipwgOperation();

        /** 点击EditView以外区域关闭键盘 **/
//        closeKeyboard(mDrawerLayout);

        /** FunctionButton开启新Activity **/
        mCheckClassListButton.setIntentActivity("edu.neu.campusassistant.activity.CourseTableActivity");
    }

    /**
     * ip网关操作
     */
    private void ipwgOperation() {
        mIPWGConnectButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                doIPWGOperation("connect");
            }
        });
        mIPWGDisconnectButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                doIPWGOperation("disconnectall");
            }
        });

        mIPWGProgressWheel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                mIPWGProgressWheel.setVisibility(View.INVISIBLE);
                mIPWGConnectButton.setVisibility(View.VISIBLE);
                mIPWGDisconnectButton.setVisibility(View.VISIBLE);
            }
        });

    }

    private void initView() {
        ButterKnife.bind(this);

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

                    Log.d("Test", mCircularViewX + " " + mCircularViewY + " " + mCircularViewHeight + " " + mCircularViewWidth + " " + mCircularViewTranslateX + " " + mCircularViewTranslateY);

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
//				Log.d("Test","offset: "+slideOffset);
                ViewHelper.setRotationY(mDrawerButton, (180 * (float) (Math.cos(Math.PI * (slideOffset - 1)) / 2 + 0.5)));
            }

            @Override
            public void onDrawerOpened(View drawerView) {

            }

            @Override
            public void onDrawerClosed(View drawerView) {
                // 隐藏键盘
                hideSoftKeyboard(MainActivity.this);
            }

            @Override
            public void onDrawerStateChanged(int newState) {

            }
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

            // create the animator for this view (the start radius is zero)
            Animator anim =
                    ViewAnimationUtils.createCircularReveal(mCircularRevealLayout, circlecx, circlecy, mBoxFab.getWidth() / 2, finalRadius);

            ObjectAnimator translateXAnim = ObjectAnimator.ofFloat(mCircularRevealLayout, "x", mCircularViewTranslateX, mCircularViewX);
            ObjectAnimator translateYAnim = ObjectAnimator.ofFloat(mCircularRevealLayout, "y", mCircularViewTranslateY, mCircularViewY);
            ObjectAnimator backgroundAnim = ObjectAnimator.ofObject(mCircularRevealLayout, "backgroundColor", new ArgbEvaluator(), 0xFFFF4081, 0xFFFFFFFF);
            ObjectAnimator translateBoxXAnim = ObjectAnimator.ofFloat(mBoxLayout, "translationX", mBoxXOffset, 0.0f);

            // make the view visible and start the animation
            mBoxFab.setVisibility(View.INVISIBLE);
            anim.setInterpolator(new AccelerateInterpolator(1.5f));
            anim.setDuration(250);
            translateXAnim.setDuration(200);
            translateYAnim.setDuration(200);
            backgroundAnim.setDuration(400);
            translateBoxXAnim.setDuration(300);
            animatorSet.playTogether(anim, translateXAnim, translateYAnim, backgroundAnim, translateBoxXAnim);
        } else {
            ObjectAnimator fadeAnim = ObjectAnimator.ofFloat(mCircularRevealLayout, "alpha", 0.0f, 1.0f);
            ObjectAnimator fabFadeAnim = ObjectAnimator.ofFloat(mBoxFab, "alpha", 1.0f, 0.0f);
            fadeAnim.setDuration(200);
            fabFadeAnim.setDuration(200);
            mBoxFab.setEnabled(false);
            animatorSet.playTogether(fadeAnim);
        }
        ObjectAnimator dimBoxBarAnim = ObjectAnimator.ofFloat(mBoxTitleBar, "alpha", 0.0f, 1.0f);
        ObjectAnimator dimBoxAnim = ObjectAnimator.ofFloat(mBoxLayout, "alpha", 0.0f, 1.0f);
        ObjectAnimator translateBoxYAnim = ObjectAnimator.ofFloat(mBoxLayout, "translationY", mBoxYOffset, 0.0f);
        dimBoxBarAnim.setDuration(200);
        dimBoxAnim.setDuration(300);
        translateBoxYAnim.setDuration(350);
        dimBoxAnim.setStartDelay(100);
        mBoxTitleBar.setVisibility(View.VISIBLE);
        mCircularRevealLayout.setVisibility(View.VISIBLE);
        animatorSet.playTogether(dimBoxBarAnim, dimBoxAnim, translateBoxYAnim);
        mCloseBoxButton.setEnabled(true);
        animatorSet.start();
    }

    @TargetApi(21)
    private void applyCircularCloseAnimation() {
        AnimatorSet animatorSet = new AnimatorSet();
        if (Build.VERSION.SDK_INT >= 21) {
            // get the center for the clipping circle
            int circlecx = mCircularViewWidth / 2;
            int circlecy = mCircularViewHeight / 2;

            // get the initial radius for the clipping circle
            int initialRadius = Math.max(mCircularRevealLayout.getWidth(), mCircularRevealLayout.getHeight());

            // create the animation (the final radius is zero)
            Animator anim =
                    ViewAnimationUtils.createCircularReveal(mCircularRevealLayout, circlecx, circlecy, initialRadius, mBoxFab.getWidth() / 2);

            ObjectAnimator translateXAnim = ObjectAnimator.ofFloat(mCircularRevealLayout, "x", mCircularViewX, mCircularViewTranslateX);
            ObjectAnimator translateYAnim = ObjectAnimator.ofFloat(mCircularRevealLayout, "y", mCircularViewY, mCircularViewTranslateY);
            ObjectAnimator backgroundAnim = ObjectAnimator.ofObject(mCircularRevealLayout, "backgroundColor", new ArgbEvaluator(), 0xFFFFFFFF, 0xFFFF4081);

            // start the animation
            anim.setInterpolator(new DecelerateInterpolator(2.0f));
            anim.setDuration(400);
            translateXAnim.setDuration(200);
            translateYAnim.setDuration(200);
            backgroundAnim.setDuration(200);
            animatorSet.playTogether(anim, translateXAnim, translateYAnim, backgroundAnim);
        } else {
            ObjectAnimator viewFadeAnim = ObjectAnimator.ofFloat(mCircularRevealLayout, "alpha", 1.0f, 0.0f);
            ObjectAnimator fabFadeAnim = ObjectAnimator.ofFloat(mBoxFab, "alpha", 0.0f, 1.0f);
            ObjectAnimator translateBoxYAnim = ObjectAnimator.ofFloat(mBoxLayout, "translationY", 0.0f, mBoxYOffset);
            viewFadeAnim.setDuration(200);
            fabFadeAnim.setDuration(200);
            translateBoxYAnim.setDuration(350);
            animatorSet.playTogether(viewFadeAnim, fabFadeAnim, translateBoxYAnim);
        }
        ObjectAnimator dimBoxBarAnim = ObjectAnimator.ofFloat(mBoxTitleBar, "alpha", 1.0f, 0.0f);
        ObjectAnimator dimBoxAnim = ObjectAnimator.ofFloat(mBoxLayout, "alpha", 1.0f, 0.0f);
        dimBoxBarAnim.setDuration(300);
        dimBoxAnim.setStartDelay(100);
        dimBoxAnim.setDuration(200);
        animatorSet.playTogether(dimBoxBarAnim, dimBoxAnim);
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

    /***
     * 执行IPWG相关操作
     */
    private void doIPWGOperation(final String operation){
        username = mIPWGUsernameEditText.getText().toString();
        password = mIPWGPasswordEditText.getText().toString();
        if (username.equals("")) {
            showToastWithString("请输入校园网账号", true);
        } else if (password.equals("")) {
            showToastWithString("请输入校园网密码", true);
        } else {
            hideSoftKeyboard(MainActivity.this); // 隐藏键盘
            new Handler().postDelayed(new Runnable(){
                public void run() {
                    //execute the task
                    mIPWGProgressWheel.setVisibility(View.VISIBLE);
                    mIPWGConnectButton.setVisibility(View.INVISIBLE);
                    mIPWGDisconnectButton.setVisibility(View.INVISIBLE);

                    new Handler().postDelayed(new Runnable() {
                        @Override
                        public void run() {

                            /** ip网关与网络请求 **/
                            requestQueue = Volley.newRequestQueue(getBaseContext());
                            StringRequest request = new StringRequest(
                                    Request.Method.POST,
                                    "http://ipgw.neu.edu.cn/ipgw/ipgw.ipgw",
                                    new Response.Listener<String>() {
                                        @Override
                                        public void onResponse(String response) {
                                            mIPWGProgressWheel.setVisibility(View.INVISIBLE);
                                            mIPWGConnectButton.setVisibility(View.VISIBLE);
                                            mIPWGDisconnectButton.setVisibility(View.VISIBLE);
                                            Map<String, String> map = extractValuesFromResponse(response);
                                            String isSuccess = map.get("SUCCESS");
                                            if (isSuccess.equals("NO")){
                                                String reason = map.get("REASON");
                                                if (operation.equals("connect")){
                                                    showToastWithString("连接失败,原因：" + reason, true);
                                                }else {
                                                    showToastWithString("断开连接失败,原因：" + reason, true);
                                                }
                                            }else {
                                                if (operation.equals("connect")){
                                                    showToastWithString("连接成功", true);
                                                }else {
                                                    showToastWithString("断开连接成功", true);
                                                }
                                            }
                                        }
                                    },
                                    new Response.ErrorListener() {
                                        @Override
                                        public void onErrorResponse(VolleyError error) {
                                            mIPWGProgressWheel.setVisibility(View.INVISIBLE);
                                            mIPWGConnectButton.setVisibility(View.VISIBLE);
                                            mIPWGDisconnectButton.setVisibility(View.VISIBLE);
                                            showToastWithString("连接超时，请检查WIFI是否连接到校园网", true);
                                        }
                                    }) {
                                @Override
                                protected Map<String, String> getParams() throws AuthFailureError {
                                    Map<String, String> params = new HashMap<String, String>();
                                    params.put("uid", username); // 20134649
                                    params.put("password", password); // 950426
                                    params.put("operation", operation);
                                    params.put("range", "2");
                                    params.put("timeout", "1");
                                    return params;
                                }
                            };
                            // 此句会发送联网请求
                            requestQueue.add(request);
                        }
                    }, 1500);
                }
            }, 1000);
        }
    }

    /**
     * 隐藏键盘
     */
    private static void hideSoftKeyboard(Activity activity) {
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService(Activity.INPUT_METHOD_SERVICE);
        inputMethodManager.hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 0);
    }

    /**
     * 重response中提取响应的响应
     */
    private static Map<String, String> extractValuesFromResponse(String response) {
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

    private void showToastWithString(String message, boolean isShort){
        if (!isShort){
            Toast.makeText(getApplicationContext(), message , Toast.LENGTH_LONG).show();
        }else {
            Toast.makeText(getApplicationContext(), message , Toast.LENGTH_SHORT).show();
        }
    }
}
