package edu.neu.campusassistant.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.os.Build;
import android.support.design.widget.FloatingActionButton;
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

import com.nineoldandroids.view.ViewHelper;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.view.RevealCircleBackground;

import edu.neu.campusassistant.R;

public class MainActivity extends AppCompatActivity {

	private int mCircularViewX;
	private int mCircularViewY;
	private int mCircularViewTranslateX;
	private int mCircularViewTranslateY;
	private int mCircularViewHeight;
	private int mCircularViewWidth;
	private boolean mIsCircularViewInitialized = false;

	@Bind(R.id.app_bar)
	Toolbar mToolBar;
	ActionBar mAppBar;
	@Bind(R.id.circular_test_view)
	RevealCircleBackground mCircularView;
	@Bind(R.id.box_fab)
	FloatingActionButton mBoxFab;
	@Bind(R.id.box_layout)
	RelativeLayout mBoxLayout;
	@Bind(R.id.box_title_bar)
	RelativeLayout mBoxTitleBar;
	@Bind(R.id.close_box_button)
	ImageButton mCloseBoxButton;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		initView();
	}

	private void initView(){
		ButterKnife.bind(this);

		setSupportActionBar(mToolBar);
		mAppBar = getSupportActionBar();

		mBoxFab.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View view) {
				if(!mIsCircularViewInitialized){
					mCircularViewX = (int) ViewHelper.getX(mCircularView);
					mCircularViewY = (int) ViewHelper.getY(mCircularView);
					mCircularViewHeight = mCircularView.getHeight();
					mCircularViewWidth = mCircularView.getWidth();

					int cx = mCircularViewX + mCircularViewWidth / 2;
					int cy = mCircularViewY + mCircularViewHeight / 2;

					int fabcx = (int) ViewHelper.getX(mBoxFab) + mBoxFab.getWidth() / 2;
					int fabcy = (int) ViewHelper.getY(mBoxFab) + mBoxFab.getHeight() / 2 - (int)ViewHelper.getY(mBoxLayout);

					mCircularViewTranslateX = mCircularViewX+fabcx-cx;
					mCircularViewTranslateY = mCircularViewY+fabcy-cy;

					Log.d("Test",mCircularViewX + " "+ mCircularViewY + " "+ mCircularViewHeight + " "+ mCircularViewWidth + " " + mCircularViewTranslateX + " "+ mCircularViewTranslateY);

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
	}

	@TargetApi(21)
	private void applyCircularRevealAnimation(){
		if(Build.VERSION.SDK_INT >= 21){
			// get the center for the clipping circle

			int circlecx = mCircularViewWidth / 2;
			int circlecy = mCircularViewHeight / 2;

			// get the final radius for the clipping circle
			int finalRadius = Math.max(mCircularView.getWidth(), mCircularView.getHeight());

			// create the animator for this view (the start radius is zero)
			Animator anim =
					ViewAnimationUtils.createCircularReveal(mCircularView, circlecx, circlecy, mBoxFab.getWidth() / 2, finalRadius);

			ObjectAnimator translateXAnim = ObjectAnimator.ofFloat(mCircularView,"x",mCircularViewTranslateX,mCircularViewX);
			ObjectAnimator translateYAnim = ObjectAnimator.ofFloat(mCircularView,"y",mCircularViewTranslateY,mCircularViewY);
			ObjectAnimator dimBoxBarAnim = ObjectAnimator.ofFloat(mBoxTitleBar,"alpha",0.0f,1.0f);

			// make the view visible and start the animation
			mBoxFab.setVisibility(View.INVISIBLE);
			mCircularView.setVisibility(View.VISIBLE);
			mBoxTitleBar.setVisibility(View.VISIBLE);
			mCloseBoxButton.setEnabled(true);
			AnimatorSet animatorSet = new AnimatorSet();
			anim.setInterpolator(new AccelerateInterpolator(1.5f));
			anim.setDuration(250);
			translateXAnim.setDuration(200);
			translateYAnim.setDuration(200);
			dimBoxBarAnim.setDuration(200);
			animatorSet.playTogether(anim,translateXAnim,translateYAnim,dimBoxBarAnim);
			animatorSet.start();
		}else{
			mCircularView.setVisibility(View.VISIBLE);
		}
	}

	@TargetApi(21)
	private void applyCircularCloseAnimation(){
		if(Build.VERSION.SDK_INT >= 21){
			// get the center for the clipping circle

			int circlecx = mCircularViewWidth / 2;
			int circlecy = mCircularViewHeight / 2;

			// get the initial radius for the clipping circle
			int initialRadius = Math.max(mCircularView.getWidth(), mCircularView.getHeight());

			// create the animation (the final radius is zero)
			Animator anim =
					ViewAnimationUtils.createCircularReveal(mCircularView, circlecx, circlecy, initialRadius, mBoxFab.getWidth() / 2);

			ObjectAnimator translateXAnim = ObjectAnimator.ofFloat(mCircularView,"x",mCircularViewX,mCircularViewTranslateX);
			ObjectAnimator translateYAnim = ObjectAnimator.ofFloat(mCircularView,"y",mCircularViewY,mCircularViewTranslateY);
			ObjectAnimator dimBoxBarAnim = ObjectAnimator.ofFloat(mBoxTitleBar,"alpha",1.0f,0.0f);

			// make the view invisible when the animation is done
			anim.addListener(new AnimatorListenerAdapter() {
				@Override
				public void onAnimationEnd(Animator animation) {
					super.onAnimationEnd(animation);
					mCircularView.setVisibility(View.INVISIBLE);
					mBoxTitleBar.setVisibility(View.INVISIBLE);
					mBoxFab.setVisibility(View.VISIBLE);
				}
			});

			// start the animation
			mCloseBoxButton.setEnabled(false);
			AnimatorSet animatorSet = new AnimatorSet();
			anim.setInterpolator(new DecelerateInterpolator(2.0f));
			anim.setDuration(400);
			translateXAnim.setDuration(200);
			translateYAnim.setDuration(200);
			dimBoxBarAnim.setDuration(200);
			animatorSet.playTogether(anim,translateXAnim,translateYAnim,dimBoxBarAnim);
			animatorSet.start();
		}else{
			mCircularView.setVisibility(View.INVISIBLE);
		}
	}
}
