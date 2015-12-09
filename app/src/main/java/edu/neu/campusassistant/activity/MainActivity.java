package edu.neu.campusassistant.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.os.Build;
import android.support.design.widget.FloatingActionButton;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
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

	@Bind(R.id.circular_test_view)
	RevealCircleBackground mCircularTestView;
	@Bind(R.id.box_fab)
	FloatingActionButton mBoxFab;
	@Bind(R.id.box_layout)
	RelativeLayout mBoxLayout;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		ButterKnife.bind(this);

		mBoxFab.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View view) {
				if(!mIsCircularViewInitialized){
					mCircularViewX = (int) ViewHelper.getX(mCircularTestView);
					mCircularViewY = (int) ViewHelper.getY(mCircularTestView);
					mCircularViewHeight = mCircularTestView.getHeight();
					mCircularViewWidth = mCircularTestView.getWidth();

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

		mCircularTestView.setOnClickListener(new View.OnClickListener() {
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
			int finalRadius = Math.max(mCircularTestView.getWidth(), mCircularTestView.getHeight());

			// create the animator for this view (the start radius is zero)
			Animator anim =
					ViewAnimationUtils.createCircularReveal(mCircularTestView, circlecx, circlecy, mBoxFab.getWidth() / 2, finalRadius);

			ObjectAnimator translateXAnim = ObjectAnimator.ofFloat(mCircularTestView,"x",mCircularViewTranslateX,mCircularViewX);
			ObjectAnimator translateYAnim = ObjectAnimator.ofFloat(mCircularTestView,"y",mCircularViewTranslateY,mCircularViewY);

			// make the view visible and start the animation
			mBoxFab.setVisibility(View.INVISIBLE);
			mCircularTestView.setVisibility(View.VISIBLE);
			AnimatorSet animatorSet = new AnimatorSet();
			anim.setInterpolator(new AccelerateInterpolator(1.5f));
			anim.setDuration(250);
			translateXAnim.setDuration(200);
			translateYAnim.setDuration(200);
			animatorSet.playTogether(anim,translateXAnim,translateYAnim);
			animatorSet.start();
		}else{
			mCircularTestView.setVisibility(View.VISIBLE);
		}
	}

	@TargetApi(21)
	private void applyCircularCloseAnimation(){
		if(Build.VERSION.SDK_INT >= 21){
			// get the center for the clipping circle

			int circlecx = mCircularViewWidth / 2;
			int circlecy = mCircularViewHeight / 2;

			// get the initial radius for the clipping circle
			int initialRadius = Math.max(mCircularTestView.getWidth(), mCircularTestView.getHeight());

			// create the animation (the final radius is zero)
			Animator anim =
					ViewAnimationUtils.createCircularReveal(mCircularTestView, circlecx, circlecy, initialRadius, mBoxFab.getWidth() / 2);

			ObjectAnimator translateXAnim = ObjectAnimator.ofFloat(mCircularTestView,"x",mCircularViewX,mCircularViewTranslateX);
			ObjectAnimator translateYAnim = ObjectAnimator.ofFloat(mCircularTestView,"y",mCircularViewY,mCircularViewTranslateY);

			// make the view invisible when the animation is done
			anim.addListener(new AnimatorListenerAdapter() {
				@Override
				public void onAnimationEnd(Animator animation) {
					super.onAnimationEnd(animation);
					mCircularTestView.setVisibility(View.INVISIBLE);
					mBoxFab.setVisibility(View.VISIBLE);
				}
			});

			// start the animation
			AnimatorSet animatorSet = new AnimatorSet();
			anim.setInterpolator(new DecelerateInterpolator(2.0f));
			anim.setDuration(400);
			translateXAnim.setDuration(200);
			translateYAnim.setDuration(200);
			animatorSet.playTogether(anim,translateXAnim,translateYAnim);
			animatorSet.start();
		}else{
			mCircularTestView.setVisibility(View.INVISIBLE);
		}
	}
}
