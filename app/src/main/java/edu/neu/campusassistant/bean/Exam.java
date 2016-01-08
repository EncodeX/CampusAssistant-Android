package edu.neu.campusassistant.bean;

/**
 * Created by JacobKong on 16/1/8.
 */
public class Exam {
    private String courseName; // 课程名称
    private String weeks; // 未知 无数据 根据名称看是上课周
    private String dayOfWeek; // 未知 无数据 根据名称看是上课日
    private String time; // 考试时间
    private String classroom; // 考试教室

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getWeeks() {
        return weeks;
    }

    public void setWeeks(String weeks) {
        this.weeks = weeks;
    }

    public String getDayOfWeek() {
        return dayOfWeek;
    }

    public void setDayOfWeek(String dayOfWeek) {
        this.dayOfWeek = dayOfWeek;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getClassroom() {
        return classroom;
    }

    public void setClassroom(String classroom) {
        this.classroom = classroom;
    }

    @Override
    public String toString() {
        return "Exam{" +
                "courseName='" + courseName + '\'' +
                ", weeks='" + weeks + '\'' +
                ", dayOfWeek='" + dayOfWeek + '\'' +
                ", time='" + time + '\'' +
                ", classroom='" + classroom + '\'' +
                '}';
    }
}
