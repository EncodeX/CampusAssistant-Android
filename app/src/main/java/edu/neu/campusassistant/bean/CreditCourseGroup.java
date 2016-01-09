package edu.neu.campusassistant.bean;

import org.json.JSONObject;

/**
 * Created with Android Studio.
 * Author: Enex Tapper
 * Date: 16/1/10
 * Project: CampusAssistant
 * Package: edu.neu.campusassistant.bean
 */
public class CreditCourseGroup {
	private String courseGroup;
	private String graduationStandard;
	private String haveCredit;
	private String creditDiff;
	private String failCredit;
	private String failCourse;

	public CreditCourseGroup() {
	}

	public CreditCourseGroup(JSONObject object) {
		this.courseGroup = object.optString("courseGroup");
		this.graduationStandard = object.optString("graduationStandard");
		this.haveCredit = object.optString("haveCredit");
		this.creditDiff = object.optString("creditDiff");
		this.failCredit = object.optString("failCredit");
		this.failCourse = object.optString("failCourse");
	}

	public String getCourseGroup() {
		return courseGroup;
	}

	public void setCourseGroup(String courseGroup) {
		this.courseGroup = courseGroup;
	}

	public String getCreditDiff() {
		return creditDiff;
	}

	public void setCreditDiff(String creditDiff) {
		this.creditDiff = creditDiff;
	}

	public String getFailCourse() {
		return failCourse;
	}

	public void setFailCourse(String failCourse) {
		this.failCourse = failCourse;
	}

	public String getFailCredit() {
		return failCredit;
	}

	public void setFailCredit(String failCredit) {
		this.failCredit = failCredit;
	}

	public String getGraduationStandard() {
		return graduationStandard;
	}

	public void setGraduationStandard(String graduationStandard) {
		this.graduationStandard = graduationStandard;
	}

	public String getHaveCredit() {
		return haveCredit;
	}

	public void setHaveCredit(String haveCredit) {
		this.haveCredit = haveCredit;
	}
}
