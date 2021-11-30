package blerine.berisha;

import java.util.ArrayList;

/**
 * -----------------------------------------------------
 * Author:          Blerinë Berisha
 * Date:            30.11.2021
 * Project:         School class with topic
 * Description:     A program that simulates a school,
 *                  its students and its courses
 * ------------------------------------------------------
 **/
public class SchoolClass {
    private String className;
    private ArrayList<Student> studentList;
    private Teacher mainTeacher;
    private Student classRep;

    public SchoolClass(String className, ArrayList<Student> studentList, Teacher mainTeacher, Student classRep) {
        this.className = className;
        this.studentList = studentList;
        this.mainTeacher = mainTeacher;
        this.classRep = classRep;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public ArrayList<Student> getStudentList() {
        return studentList;
    }

    public void setStudentList(ArrayList<Student> studentList) {
        this.studentList = studentList;
    }

    public Teacher getMainTeacher() {
        return mainTeacher;
    }

    public void setMainTeacher(Teacher mainTeacher) {
        this.mainTeacher = mainTeacher;
    }

    public Student getClassRep() {
        return classRep;
    }

    public void setClassRep(Student classRep) {
        this.classRep = classRep;
    }
}
