package edu.neu.campusassistant.bean;

import java.util.Calendar;

/**
 * Created with Android Studio.
 * Author: Enex Tapper
 * Date: 15/12/31
 * Project: CampusAssistant
 * Package: edu.neu.campusassistant.bean
 */
public class Course {
	private Calendar startTime;
	private Calendar endTime;
	private String courseName;
	private String classroom;
	private String teacher;
	private String weeks;
	private int startSection;
	private int sections;

	public String getClassroom() {
		return classroom;
	}

	public void setClassroom(String classroom) {
		this.classroom = classroom;
	}

	public Calendar getEndTime() {
		return endTime;
	}

	public void setEndTime(Calendar endTime) {
		this.endTime = endTime;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public Calendar getStartTime() {
		return startTime;
	}

	public void setStartTime(Calendar startTime) {
		this.startTime = startTime;
	}

	public String getTeacher() {
		return teacher;
	}

	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}

	public String getWeeks() {
		return weeks;
	}

	public void setWeeks(String weeks) {
		this.weeks = weeks;
	}

	public int getSections() {
		return sections;
	}

	public void setSections(int sections) {
		this.sections = sections;
	}

	public int getStartSection() {
		return startSection;
	}

	public void setStartSection(int startSection) {
		this.startSection = startSection;
	}

	@Override
	public String toString() {
		return "\nCourse{" +
				"\n\tclassroom= " + classroom +
				",\n\tstartTime= " + startTime.getTime() +
				",\n\tendTime= " + endTime.getTime() +
				",\n\tcourseName= " + courseName +
				",\n\tteacher= " + teacher +
				",\n\tweeks= " + weeks +
				",\n\tsections= " + sections +
				",\n\tstartSection= " + startSection +
				"\n}";
	}
}
