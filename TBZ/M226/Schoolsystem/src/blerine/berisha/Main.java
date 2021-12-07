package blerine.berisha;

import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {
        ArrayList<Student> studentsClassAvengers = new ArrayList<Student>();
        Teacher teacherAvengers = new Teacher("Nick", "Fury", "04-07-1950", "nickthefurious@SHIELD.com", "B412");
        ArrayList<Subject> subjects = new ArrayList<Subject>();
        subjects.add(new Subject("Maths", 2));
        subjects.add(new Subject("English", 1));
        SchoolClass avengers = new SchoolClass("avengers", studentsClassAvengers, teacherAvengers, subjects);
        Student natasha = new Student("Natasha", "Romanoff", "03-12-1983", "nat@romanoff.ru", avengers, 1);
        avengers.setClassRep(natasha);
        studentsClassAvengers.add(natasha);
        studentsClassAvengers.add(new Student("Steve", "Rogers", "04-07-1918", "cap@america.com", avengers, 2));
        avengers.printClassInfo();
        ArrayList<Student> classBin20b = new ArrayList<Student>();
        Teacher teacherBin20b = new Teacher("Alisha", "Khalid", "10-02-2005", "alishak@bms.ch", "019");
        ArrayList<Subject> subjectsBin20b = new ArrayList<Subject>();
        subjectsBin20b.add(new Subject("Maths", 3));
        subjectsBin20b.add(new Subject("French", 1));
        SchoolClass Bin20b = new SchoolClass("BIN20b", classBin20b, teacherBin20b, subjectsBin20b);
        Student milena = new Student("Milena", "Blaser", "28-06-1998", "milena98@gmail.com", Bin20b, 3);
        Bin20b.setClassRep(milena);
        classBin20b.add(milena);
        classBin20b.add(new Student("Nuwera", "Mohammad", "31-12-2003", "nuwi@gmx.ch", Bin20b, 7));
        System.out.println("-------------------------------");
        Bin20b.printClassInfo();
    }
}