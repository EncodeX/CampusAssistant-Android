package edu.neu.campusassistant.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatDialogFragment;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;

import org.json.JSONObject;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;
import edu.neu.campusassistant.utils.AppController;
import edu.neu.campusassistant.utils.Constants;
import edu.neu.campusassistant.utils.MD5Utils;

/**
 * Created with Android Studio.
 * Author: Enex Tapper
 * Date: 15/12/25
 * Project: CampusAssistant
 * Package: edu.neu.campusassistant.view
 */
public class LoginDialogFragment extends AppCompatDialogFragment {
	public final static String ACCOUNT_TYPE_KEY = "account_type";
	public final static int ACCOUNT_TYPE_UNKNOWN = -1;
	public final static int ACCOUNT_TYPE_AAO = 0;
	public final static int ACCOUNT_TYPE_LIBRARY = 1;
	public final static int ACCOUNT_TYPE_ECARD = 2;

	@Bind(R.id.confirm_button)
	Button mConfirmButton;
	@Bind(R.id.cancel_button)
	Button mCancelButton;
	@Bind(R.id.user_name_input)
	EditText mUserNameInput;
	@Bind(R.id.password_input)
	EditText mPasswordInput;

	LoginDialogListener mListener;
	int mAccountType;
	SharedPreferences mSharedPreferences;

	@Override
	public void onAttach(Activity activity) {
		super.onAttach(activity);
		try{
			mListener = (LoginDialogListener) activity;
		} catch (ClassCastException e){
			throw new ClassCastException(activity.toString() + " must implement LoginFragment");
		}
	}

	@NonNull
	@Override
	public Dialog onCreateDialog(Bundle savedInstanceState) {
		AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
		View dialogView = View.inflate(getActivity(), R.layout.login_dialog, null);

		ButterKnife.bind(this,dialogView);
		initView();

		this.setCancelable(true);
		builder.setView(dialogView);

		this.mAccountType = getArguments().getInt(ACCOUNT_TYPE_KEY, ACCOUNT_TYPE_UNKNOWN);
		mSharedPreferences = getContext().getSharedPreferences(Constants.SHARED_PREFS_KEY, Context.MODE_PRIVATE);

		return builder.create();
	}

	private void initView(){
		mConfirmButton.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View view) {
				bindAccount();
			}
		});

		mCancelButton.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View view) {
				if(mListener!=null) mListener.onCancel(LoginDialogFragment.this);
				LoginDialogFragment.this.dismiss();
			}
		});
	}

	private void bindAccount(){
		// TODO: 15/12/30 添加多种账户类型请求与正确性检查
		Request request = null;

		switch (mAccountType){
			case ACCOUNT_TYPE_AAO:
				request = getBindAAOAccountRequest();
				break;
			case ACCOUNT_TYPE_LIBRARY:
				break;
			case ACCOUNT_TYPE_ECARD:
				break;
		}

		if(request != null) AppController.getInstance().addToRequestQueue(request);
	}

	private JsonObjectRequest getBindAAOAccountRequest(){
		final String userName = mUserNameInput.getText().toString();
		final String password = MD5Utils.generateMD5(mPasswordInput.getText().toString());
		final String requestString =
				"http://202.118.31.241:8080/api/v1/login?userName=" + userName + "&passwd=" + password;
		JsonObjectRequest request = new JsonObjectRequest(
				requestString,
				new Response.Listener<JSONObject>() {
					@Override
					public void onResponse(JSONObject response) {
						switch (response.optInt("success")){
							case 0:
								JSONObject data = response.optJSONObject("data");
								assert data != null;

								final String token = data.optString("token");
								SharedPreferences.Editor editor = mSharedPreferences.edit();

								editor.putString(Constants.AAO_TOKEN, token);
								editor.putString(Constants.AAO_USERNAME, userName);
								editor.putString(Constants.AAO_PASSWORD, password);
								editor.putBoolean(Constants.IS_AAO_BOUND, true);
								editor.apply();
								LoginDialogFragment.this.dismiss();
								Toast.makeText(getContext(), "绑定成功", Toast.LENGTH_LONG).show();
								break;
							case -1:
								Toast.makeText(getContext(), response.optString("errMsg"), Toast.LENGTH_LONG).show();
								break;
						}
					}
				},
				new Response.ErrorListener() {
					@Override
					public void onErrorResponse(VolleyError error) {
						Toast.makeText(getContext(), "绑定失败 请检查网络连接", Toast.LENGTH_LONG).show();
						Log.d("LoginDialog", "Error: " + error.getMessage());
					}
				}
		);

		return request;
	}

	@Override
	public void onCancel(DialogInterface dialog) {
		mListener.onCancel(LoginDialogFragment.this);
	}

	public interface LoginDialogListener {
		void onLoginSuccess(AppCompatDialogFragment dialog);
		void onCancel(AppCompatDialogFragment dialog);
		void onError(AppCompatDialogFragment dialog);
	}
}
