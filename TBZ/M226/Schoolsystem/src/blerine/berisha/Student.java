package blerine.berisha;

import java.util.Random;
import java.util.UUID;

/**
 * -----------------------------------------------------
 * Author:          Blerinë Berisha
 * Date:            30.11.2021
 * Project:         School class with topic
 * Description:     A program that simulates a school,
 *                  its students and its courses
 * ------------------------------------------------------
 **/
public class Student extends Person {
    private SchoolClass schoolClass;
    private int studentNumber;

    public Student(String firstName, String lastName, String dateOfBirth, String email, String schoolClass) {
        super(firstName, lastName, dateOfBirth, email);
        this.schoolClass = SchoolManager.findClass(schoolClass);
        this.studentNumber = new Random().nextInt(1000);
    }

    public Student(String firstName, String lastName, String dateOfBirth, String email) {
        super(firstName, lastName, dateOfBirth, email);
        this.studentNumber = new Random().nextInt(1000);
    }

    @Override
    public void showInfo() {
        System.out.println("Student's information: ");
        System.out.println("-----------------------");
        super.showInfo();
        System.out.println("Student ID: " + getStudentNumber());
        System.out.println("-----------------------");
    }

    public SchoolClass getSchoolClass() {
        return schoolClass;
    }

    public void setSchoolClass(SchoolClass schoolClass) {
        this.schoolClass = schoolClass;
    }

    public int getStudentNumber() {
        return studentNumber;
    }

    public void setStudentNumber(int studentNumber) {
        this.studentNumber = studentNumber;
    }
}