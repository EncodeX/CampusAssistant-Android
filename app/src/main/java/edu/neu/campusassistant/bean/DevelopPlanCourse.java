package edu.neu.campusassistant.bean;

import org.json.JSONObject;

/**
 * Created with Android Studio.
 * Author: Enex Tapper
 * Date: 16/1/9
 * Project: CampusAssistant
 * Package: edu.neu.campusassistant.bean
 */
public class DevelopPlanCourse {
	private String termName;
	private String courseId;
	private String courseName;
	private String courseProperty;

	public DevelopPlanCourse() {
	}

	public DevelopPlanCourse(JSONObject object) {
		this.termName = object.optString("termName");
		this.courseId = object.optString("courseId");
		this.courseName = object.optString("courseName");
		this.courseProperty = object.optString("courseProperty");
	}

	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCourseProperty() {
		return courseProperty;
	}

	public void setCourseProperty(String courseProperty) {
		this.courseProperty = courseProperty;
	}

	public String getTermName() {
		return termName;
	}

	public void setTermName(String termName) {
		this.termName = termName;
	}

	@Override
	public String toString() {
		return "DevelopPlanCourse{" +
				"courseId='" + courseId + '\'' +
				", termName='" + termName + '\'' +
				", courseName='" + courseName + '\'' +
				", courseProperty='" + courseProperty + '\'' +
				'}';
	}
}
