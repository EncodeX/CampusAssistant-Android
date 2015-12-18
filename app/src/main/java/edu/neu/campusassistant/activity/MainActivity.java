package edu.neu.campusassistant.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Intent;
import android.os.Build;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageButton;
import android.widget.RelativeLayout;

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

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.view.BoxLayout;
import edu.neu.campusassistant.view.CircularRevealLayout;

import edu.neu.campusassistant.R;
import edu.neu.campusassistant.view.FunctionButton;

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

	RequestQueue requestQueue;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		initView();

		/** ip网关与网络请求 **/

		requestQueue = Volley.newRequestQueue(this);

		StringRequest request = new StringRequest(
				Request.Method.POST,
				"http://ipgw.neu.edu.cn/ipgw/ipgw.ipgw",
				new Response.Listener<String>() {
					@Override
					public void onResponse(String response) {
						Log.d("test",response);
					}
				},
				new Response.ErrorListener() {
					@Override
					public void onErrorResponse(VolleyError error) {

					}
				}){
			@Override
			protected Map<String, String> getParams() throws AuthFailureError {
				Map<String, String> params = new HashMap<String, String>();
				params.put("uid", "20134649");
				params.put("password", "950426");
				params.put("operation", "connect");
				params.put("range", "2");
				params.put("timeout", "1");
				return params;
			}
		};

		// 此句会发送联网请求
//		requestQueue.add(request);

		/** FunctionButton开启新Activity **/
		mCheckClassListButton.setIntentActivity("edu.neu.campusassistant.activity.CourseTableActivity");
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
}
