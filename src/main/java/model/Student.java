package model;

public class Student {
	private String regno;
	private String name;
	private String faculty;
	private int year;
	private int semester;
	private String email;
	private String password;
	
	
	public Student(String regno, String name, String faculty, int year, int semester, String email, String password) {
		super();
		this.regno = regno;
		this.name = name;
		this.faculty = faculty;
		this.year = year;
		this.semester = semester;
		this.email = email;
		this.password = password;
	}


	public String getRegno() {
		return regno;
	}


	public String getName() {
		return name;
	}


	public String getFaculty() {
		return faculty;
	}


	public int getYear() {
		return year;
	}


	public int getSemester() {
		return semester;
	}


	public String getEmail() {
		return email;
	}


	public String getPassword() {
		return password;
	}


	public void setRegno(String regno) {
		this.regno = regno;
	}


	public void setName(String name) {
		this.name = name;
	}


	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}


	public void setYear(int year) {
		this.year = year;
	}


	public void setSemester(int semester) {
		this.semester = semester;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
}
