package blerine.berisha;

import java.util.ArrayList;

public class Main {

    public static void main(String[] args){
        ArrayList<Student> studentsClassAvengers = new ArrayList<Student>();
        Teacher teacherAvengers = new Teacher("Nick", "Fury", "04-07-1950", "nickthefurious@SHIELD.com", "B412");
        Student natasha = new Student("Natasha", "Romanoff", "03-12-1983", "nat@romanoff.ru", );
        SchoolClass Avengers = new SchoolClass("Avengers", studentsClassAvengers, teacherAvengers, );
    }
}