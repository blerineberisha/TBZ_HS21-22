package blerine.berisha;

import java.util.ArrayList;
import java.util.Scanner;

/**
 * -----------------------------------------------------
 * Author:          Blerinë Berisha
 * Date:            30.11.2021
 * Project:         School class with topic
 * Description:     A program that simulates a school,
 * its students and its courses
 * ------------------------------------------------------
 **/
public class SchoolClass {
    private String className;
    private ArrayList<Student> studentList;
    private Teacher mainTeacher;
    private Student classRep;

    public SchoolClass(String className, Teacher mainTeacher, Student classRep) {
        this.className = className;
        this.mainTeacher = mainTeacher;
        this.classRep = classRep;
    }

    public static SchoolClass newClass() {
        Scanner scan = new Scanner(System.in);
        System.out.println("Enter the classname: \n<");
        String className = scan.next();
        System.out.println("Enter the main teacher's last name: \n<");
        String mainTeacher = scan.next();
        Teacher teacher = SchoolManager.findByName(mainTeacher);
        if (teacher == null) {
            System.err.println("Teacher not found");
        }
        System.out.println("Enter the class representative's student ID: \n<");
        int studentID = scan.nextInt();
        Student student = SchoolManager.findByID(studentID);
        if (student == null) {
            System.err.println("Student not found");
        }
        return new SchoolClass(className, teacher, student);
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
