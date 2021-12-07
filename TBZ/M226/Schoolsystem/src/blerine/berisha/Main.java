package blerine.berisha;

import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {
        ArrayList<Student> studentsClassAvengers = new ArrayList<Student>();
        Teacher teacherAvengers = new Teacher("Nick", "Fury", "04-07-1950", "nickthefurious@SHIELD.com", "B412");
        SchoolClass avengers = new SchoolClass();
        Student natasha = new Student("Natasha", "Romanoff", "03-12-1983", "nat@romanoff.ru", avengers, 1);
        studentsClassAvengers.add(natasha);
        avengers.setClassName("avengers");
        avengers.setStudentList(studentsClassAvengers);
        avengers.setMainTeacher(teacherAvengers);
        avengers.setClassRep(natasha);
        ArrayList<Subject> subjects = new ArrayList<Subject>();
        subjects.add(new Subject("Maths", 2));
        subjects.add(new Subject("English", 1));
        avengers.setSubjects(subjects);
        avengers.printClassInfo();
    }
}