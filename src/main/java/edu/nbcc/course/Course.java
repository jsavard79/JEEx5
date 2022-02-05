/**
 * 
 */
package edu.nbcc.course;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author Arun.John
 * 
 *
 */
public class Course {

	private int id;
	/**
	 * @param id
	 * @param name
	 * @param term
	 */
	public Course(int id, String name, int term) {		
		this.id = id;
		this.name = name;
		this.term = term;
	}
	private String name;
	private int term;
	private List<Course> mockUpData = new ArrayList<Course>();
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the term
	 */
	public int getTerm() {
		return term;
	}
	/**
	 * @param term the term to set
	 */
	public void setTerm(int term) {
		this.term = term;
	}
	
	public Course() {
		mockUpData.add(new Course(mockUpData.size() + 1, "Course 1", 1));
		mockUpData.add(new Course(mockUpData.size() + 1, "Course 2", 2));
		mockUpData.add(new Course(mockUpData.size() + 1, "Course 3", 3));
		mockUpData.add(new Course(mockUpData.size() + 1, "Course 4", 4));
		mockUpData.add(new Course(mockUpData.size() + 1, "Course 5", 5));
		mockUpData.add(new Course(mockUpData.size() + 1, "Course 6", 6));
		mockUpData.add(new Course(mockUpData.size() + 1, "Course 7", 7));
	}
	
	public List<Course> getCourses() {
		return mockUpData;
	}
	
	public Course getCourse(int id) {
		List<Course> course = mockUpData.stream().filter(m -> m.getId()==id).collect(Collectors.toList());
		
		if (course.size() >0) {
			return course.get(0);
		} else {
			return null;
		}
	}
}
