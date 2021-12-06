package blerine.berisha;

import java.util.ArrayList;

public class Main {

    public static void main(String[] args) throws Exception{
            ArrayList<Student> AP20aStudents = new ArrayList<Student>();
            Teacher teacher = new Teacher("Natasha", "Romanoff", "03.12.1983", "nat@romanoff.ru", "523");
            teacher.showInfo();
            SchoolManager.getAllTeachers().add(teacher);
            Student student = new Student("Blerinë", "Berisha", "23.06.2002", "bb@gmail.com");
            student.showInfo();
            SchoolManager.getAllStudents().add(student);
            SchoolManager.getAllClasses().add(SchoolClass.newClass());
            AP20aStudents.add(student);
    }
}