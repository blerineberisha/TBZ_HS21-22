package com.company;

/**
 * -----------------------------------------------------
 * Author:          Blerinë Berisha
 * Date:            30.11.2021
 * Project:         School class with topic
 * Description:     A program that simulates a school,
 *                  its students and its courses
 * ------------------------------------------------------
 **/
public class Teacher extends Person {
    private String classRoom;

    public Teacher(String firstName, String lastName, String dateOfBirth, String email, String classRoom) {
        super(firstName, lastName, dateOfBirth, email);
        this.classRoom = classRoom;
    }
    @Override
    public void showInfo(){
        System.out.println("Teacher's information: ");
        System.out.println("-----------------------");
        super.showInfo();
        System.out.println("-----------------------");
    }
}