package edu.nbcc.person;

import java.util.ArrayList;
import java.util.List;

import edu.nbcc.course.Course;

public class Person {
	private int Id;
	private String firstName;
	private String lastName;
	private String emailAddress;
	private double salary;
	
	private List<Person> mockData = new ArrayList<Person>();;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
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

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public Person(int id, String firstName, String lastName, String emailAddress, double salary) {
		super();
		Id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.emailAddress = emailAddress;
		this.salary = salary;
	}
	
	public Person() {
		mockData.add(new Person(mockData.size() + 1, "John", "Doe", "john.doe@email.com", 55000));
		mockData.add(new Person(mockData.size() + 1, "Jane", "Doe", "jane.doe@email.com", 60000));
		mockData.add(new Person(mockData.size() + 1, "Joe", "Black", "joe.black@email.com", 58000));
	}
	
	public List<Person> getPeople(){
		return mockData;
	}
	
	public Person getPerson(int id) {
		List<Person> person = mockData.stream().filter(p -> p.getId()==id).toList();
		if(person.size() >0 ) {
			return person.get(0);
		} else {
			return null; 
		}
	}
	
	

}
