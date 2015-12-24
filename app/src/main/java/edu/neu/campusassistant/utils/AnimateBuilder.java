package edu.neu.campusassistant.utils;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.animation.Interpolator;

/**
 * Created with Android Studio.
 * Author: Enex Tapper
 * Date: 15/12/24
 * Project: CampusAssistant
 * Package: edu.neu.campusassistant.utils
 */
public class AnimateBuilder {

	/**\
	 *      动画处理器
	\**/

	public final static int DIRECTION_X = 0;
	public final static int DIRECTION_Y = 1;

	public static ObjectAnimator buildTranslateAnimation(View view, int direction, float fromValue, float toValue, int duration){
		ObjectAnimator translateAnimation = null;

		if(direction == DIRECTION_X){
			translateAnimation = ObjectAnimator.ofFloat(view, "translationX", fromValue, toValue);
			translateAnimation.setDuration(duration);
		}else if(direction == DIRECTION_Y){
			translateAnimation = ObjectAnimator.ofFloat(view, "translationY", fromValue, toValue);
			translateAnimation.setDuration(duration);
		}

		return translateAnimation;
	}

	public static ObjectAnimator buildAbsoluteTranslateAnimation(View view, int direction, float fromValue, float toValue, int duration){
		ObjectAnimator translateAnimation = null;

		if(direction == DIRECTION_X){
			translateAnimation = ObjectAnimator.ofFloat(view, "x", fromValue, toValue);
			translateAnimation.setDuration(duration);
		}else if(direction == DIRECTION_Y){
			translateAnimation = ObjectAnimator.ofFloat(view, "y", fromValue, toValue);
			translateAnimation.setDuration(duration);
		}

		return translateAnimation;
	}

	public static ObjectAnimator buildAlphaAnimation(View view, float fromValue, float toValue, int duration){
		ObjectAnimator alphaAnimation = ObjectAnimator.ofFloat(view, "alpha", fromValue, toValue);
		alphaAnimation.setDuration(duration);

		return alphaAnimation;
	}

	public static ObjectAnimator buildColorAnimation(View view, int fromValue, int toValue, int duration){
		ObjectAnimator colorAnimation = ObjectAnimator.ofObject(view, "backgroundColor", new ArgbEvaluator(), fromValue, toValue);
		colorAnimation.setDuration(duration);

		return colorAnimation;
	}

	@TargetApi(21)
	public static Animator buildCircularRevealAnimation(View view, int centerX, int centerY, float startRadius, float endRadius, int duration){
		Animator circularRevealAnimation =
				ViewAnimationUtils.createCircularReveal(view, centerX, centerY, startRadius, endRadius);
		circularRevealAnimation.setDuration(duration);

		return circularRevealAnimation;
	}

	public static Animator setStartDelay(Animator animator, long delay){
		animator.setStartDelay(delay);

		return animator;
	}

	public static Animator setInterpolator(Animator animator, Interpolator interpolator){
		animator.setInterpolator(interpolator);

		return animator;
	}
}
