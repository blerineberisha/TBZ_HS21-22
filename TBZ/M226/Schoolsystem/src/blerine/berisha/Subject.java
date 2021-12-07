package blerine.berisha;

/**
 * -----------------------------------------------------
 * Author:          Blerinë Berisha
 * Date:            30.11.2021
 * Project:         School class with topic
 * Description:     A program that simulates a school,
 *                  its students and its courses
 * ------------------------------------------------------
 **/
public class Subject {
    String subject; 
    int noOfLessons;

    public Subject(String subject, int noOfLessons) {
        this.subject = subject;
        this.noOfLessons = noOfLessons;
    }

    public String getSubject() {
        return this.subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public int getNoOfLessons() {
        return this.noOfLessons;
    }

    public void setNoOfLessons(int noOfLessons) {
        this.noOfLessons = noOfLessons;
    }
}