package edu.neu.campusassistant.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatDialogFragment;
import android.view.View;

import edu.neu.campusassistant.R;

/**
 * Created with Android Studio.
 * Author: Enex Tapper
 * Date: 15/12/25
 * Project: CampusAssistant
 * Package: edu.neu.campusassistant.view
 */
public class TestDialogFragment extends AppCompatDialogFragment {
	public interface TestDialogListener{
		public void onDialogPositiveClick(AppCompatDialogFragment dialog);
		public void onDialogNegativeClick(AppCompatDialogFragment dialog);
	}

	TestDialogListener mListener;

	@Override
	public void onAttach(Activity activity) {
		super.onAttach(activity);
		try{
			mListener = (TestDialogListener) activity;
		} catch (ClassCastException e){
			throw new ClassCastException(activity.toString() + " must implement TestDialogFragment");
		}
	}

	@Override
	public Dialog onCreateDialog(Bundle savedInstanceState) {
		AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
//		builder.setMessage("test")
//				.setPositiveButton("OK", new DialogInterface.OnClickListener() {
//					@Override
//					public void onClick(DialogInterface dialogInterface, int i) {
//						mListener.onDialogPositiveClick(TestDialogFragment.this);
//					}
//				})
//				.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
//					@Override
//					public void onClick(DialogInterface dialogInterface, int i) {
//						mListener.onDialogNegativeClick(TestDialogFragment.this);
//					}
//				});
		View dialogView = View.inflate(getActivity(), R.layout.login_dialog, null);

		builder.setView(dialogView);

		return builder.create();
	}
}
