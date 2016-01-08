package edu.neu.campusassistant.bean;

/**
 * Created by JacobKong on 16/1/8.
 */
public class Grade {
    private String termName; // 学期名称
    private String courseName; // 课程名称
    private String credit; // 学分
    private String examType; // 考试类型
    private String score; // 总成绩
    private String score1; // 平时成绩
    private String score2; // 期中成绩
    private String score3; // 期末成绩
    private String courseType; // 课程类型
    private String courseGroup; // 所属课程名称

    public String getCourseGroup() {
        return courseGroup;
    }

    public void setCourseGroup(String courseGroup) {
        this.courseGroup = courseGroup;
    }

    public String getTermName() {
        return termName;
    }

    public void setTermName(String termName) {
        this.termName = termName;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCredit() {
        return credit;
    }

    public void setCredit(String credit) {
        this.credit = credit;
    }

    public String getExamType() {
        return examType;
    }

    public void setExamType(String examType) {
        this.examType = examType;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getScore1() {
        return score1;
    }

    public void setScore1(String score1) {
        this.score1 = score1;
    }

    public String getScore2() {
        return score2;
    }

    public void setScore2(String score2) {
        this.score2 = score2;
    }

    public String getScore3() {
        return score3;
    }

    public void setScore3(String score3) {
        this.score3 = score3;
    }

    public String getCourseType() {
        return courseType;
    }

    public void setCourseType(String courseType) {
        this.courseType = courseType;
    }

    @Override
    public String toString() {
        return "Grade{" +
                "termName='" + termName + '\'' +
                ", courseName='" + courseName + '\'' +
                ", credit='" + credit + '\'' +
                ", examType='" + examType + '\'' +
                ", score='" + score + '\'' +
                ", score1='" + score1 + '\'' +
                ", score2='" + score2 + '\'' +
                ", score3='" + score3 + '\'' +
                ", courseType='" + courseType + '\'' +
                ", courseGroup='" + courseGroup + '\'' +
                '}';
    }
}
