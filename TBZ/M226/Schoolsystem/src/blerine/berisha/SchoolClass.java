package blerine.berisha;

import java.util.ArrayList;

/**
 * -----------------------------------------------------
 * Author: Blerinë Berisha
 * Date: 30.11.2021
 * Project: School class with topic
 * Description: A program that simulates a school,
 * its students and its courses
 * ------------------------------------------------------
 **/
public class SchoolClass {
    private String className;
    private ArrayList<Student> studentList;
    private Teacher mainTeacher;
    private Student classRep;
    private ArrayList<Subject> subjects;

    public SchoolClass(String className, ArrayList<Student> studentList, Teacher mainTeacher, Student classRep,
            ArrayList<Subject> subjects) {
        this.className = className;
        this.studentList = studentList;
        this.mainTeacher = mainTeacher;
        this.classRep = classRep;
        this.subjects = subjects;
    }

    public void printClassInfo() {
        System.out.println("CLASS INFO: " + getClassName());
        System.out.println("-------------------------------");
        System.out.println("Main teacher: " + getMainTeacher().getFirstName() + " " + getMainTeacher().getLastName());
        System.out.println("Class rep: " + getClassRep().getFirstName() + " " + getClassRep().getLastName());
        System.out.println("Subjects: ");
        System.out.println("-------------------------------");
        for (Subject s : subjects) {
            System.out.println("Subject: " + s.subject + " Number of Lessons: " + s.noOfLessons);
        }
        System.out.println("Students: ");
        for (Student s : studentList) {
            System.out.println(s.getLastName() + ", " + s.getFirstName());
        }

    }

    public SchoolClass() {
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

    public ArrayList<Subject> getSubjects() {
        return subjects;
    }

    public void setSubjects(ArrayList<Subject> subjects) {
        this.subjects = subjects;
    }
}
