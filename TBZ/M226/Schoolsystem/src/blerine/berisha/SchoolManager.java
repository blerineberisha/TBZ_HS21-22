package blerine.berisha;

import java.util.ArrayList;
import java.util.Scanner;

/**
 * -----------------------------------------------------
 * Author:          Blerinë Berisha
 * Date:            date
 * Project:         project name
 * Description:     Short description
 * ------------------------------------------------------
 **/

public class SchoolManager {
    private static ArrayList<SchoolClass> allClasses;
    private static ArrayList<Student> allStudents;
    private static ArrayList<Teacher> allTeachers;

    public SchoolManager(ArrayList<SchoolClass> allClasses, ArrayList<Student> allStudents, ArrayList<Teacher> allTeachers) {
        SchoolManager.allClasses = allClasses;
        SchoolManager.allStudents = allStudents;
        SchoolManager.allTeachers = allTeachers;
    }

    public static SchoolClass findClassIO() {
        SchoolClass foundClass = null;
        Scanner scan = new Scanner(System.in);
        System.out.println("What class would you like to look for?");
        String schoolClass = scan.nextLine();
        for (SchoolClass sc : allClasses) {
            if (sc.getClassName().equals(schoolClass)) {
                foundClass = sc;
            }
        }
        return foundClass;
    }

    public static SchoolClass findClass(String schoolClass) {
        SchoolClass foundClass = null;
        for (SchoolClass sc : allClasses) {
            if (sc.getClassName().equals(schoolClass)) {
                foundClass = sc;
            }
        }
        return foundClass;
    }

    public static Student findByID(int ID) {
        Student foundStudent = null;
        for (Student s : allStudents) {
            if (s.getStudentNumber() == ID) {
                System.err.println("Student with this ID: " + s.getLastName() + ", " + s.getFirstName());
                foundStudent = s;
            }
        }
        return foundStudent;
    }

    public static Teacher findByName(String lastname) {
        Teacher foundTeacher = null;
        for (Teacher t : allTeachers) {
            if (t.getLastName().equals(lastname)) {
                System.err.println("Teacher with this lastname: " + t.getLastName() + ", " + t.getFirstName());
                foundTeacher = t;
            }
        }
        return foundTeacher;
    }

    public static ArrayList<SchoolClass> getAllClasses() {
        return allClasses;
    }

    public static void setAllClasses(ArrayList<SchoolClass> allClasses) {
        SchoolManager.allClasses = allClasses;
    }

    public static ArrayList<Student> getAllStudents() {
        return allStudents;
    }

    public static void setAllStudents(ArrayList<Student> allStudents) {
        SchoolManager.allStudents = allStudents;
    }

    public static ArrayList<Teacher> getAllTeachers() {
        return allTeachers;
    }

    public static void setAllTeachers(ArrayList<Teacher> allTeachers) {
        SchoolManager.allTeachers = allTeachers;
    }
}
