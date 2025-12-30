package model;
import java.time.LocalDate;

public class Ticket {
	private int tqid;
	private String regno;
	private String faculty;
	private int year;
	private int semester;
	private String contactno;
	private String category;
	private int lecture;
	private String subject;
	private String question;
	private LocalDate raisedate;
	
	public Ticket(int tqid, String regno, String faculty, int year, int semester, String contactno, String category,
			int lecture, String subject, String question, LocalDate raisedate) {
		super();
		this.tqid = tqid;
		this.regno = regno;
		this.faculty = faculty;
		this.year = year;
		this.semester = semester;
		this.contactno = contactno;
		this.category = category;
		this.lecture = lecture;
		this.subject = subject;
		this.question = question;
		this.raisedate = raisedate;
	}

	public int getTqid() {
		return tqid;
	}

	public String getRegno() {
		return regno;
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

	public String getContactno() {
		return contactno;
	}

	public String getCategory() {
		return category;
	}

	public int getLecture() {
		return lecture;
	}

	public String getSubject() {
		return subject;
	}

	public String getQuestion() {
		return question;
	}

	public LocalDate getRaisedate() {
		return raisedate;
	}

	public void setTqid(int tqid) {
		this.tqid = tqid;
	}

	public void setRegno(String regno) {
		this.regno = regno;
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

	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public void setLecture(int lecture) {
		this.lecture = lecture;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public void setRaisedate(LocalDate raisedate) {
		this.raisedate = raisedate;
	}
	
	
	
	
	

}
