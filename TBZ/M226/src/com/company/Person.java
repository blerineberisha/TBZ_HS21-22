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
public class Person {
    private String firstName;
    private String lastName;
    private String dateOfBirth;
    private String email;

    public Person(String firstName, String lastName, String dateOfBirth, String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.dateOfBirth = dateOfBirth;
        this.email = email;
    }

    public void showInfo() {
        System.out.println("Name: " + getLastName() + ", " + getFirstName());
        System.out.println("Date of birth: " + getDateOfBirth());
        System.out.println("Email: " + getEmail());
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
