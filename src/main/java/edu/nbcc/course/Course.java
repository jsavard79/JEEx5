package edu.nbcc.course;

import java.util.ArrayList;
import java.util.List;

public class Course {
	private int id;
	private String name;
	private int term;
	private List<Course> mockUpData = new ArrayList<Course>();
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getTerm() {
		return term;
	}
	public void setTerm(int term) {
		this.term = term;
	}
	
	public Course(int id, String name, int term) {
		this.id = id;
		this.name = name;
		this.term = term;
	}

	public Course() {
		mockUpData.add(new Course(mockUpData.size() + 1, "Java EE", 5));
		mockUpData.add(new Course(mockUpData.size() + 1, "iOS App Dev", 4));
		mockUpData.add(new Course(mockUpData.size() + 1, "Android App Dev", 3));
		mockUpData.add(new Course(mockUpData.size() + 1, "Alt Web Tech", 2));
		mockUpData.add(new Course(mockUpData.size() + 1, "PHP", 1));
		mockUpData.add(new Course(mockUpData.size() + 1, "Example Course", 5));
		mockUpData.add(new Course(mockUpData.size() + 1, "Another Course", 4));
		mockUpData.add(new Course(mockUpData.size() + 1, "Course 1", 3));
	}
	
	public List<Course> getCourses(){
		return mockUpData;
	}
	
	public Course getCourse(int id) {
		List<Course> course = mockUpData.stream().filter(c -> c.getId()==id).toList();
		if(course.size() >0 ) {
			return course.get(0);
		} else {
			return null; 
		}
	}
}
