package HashMap1;

public class Student {
	private int sno;
	private String name;
	
	public Student(int sno, String name) {
		this.sno = sno;
		this.name = name;
		
	}
	
	
	public boolean equals(Object obj) {
		if(obj instanceof Student) {
		Student stuent = (Student) obj;
		return (sno == student.sno) && (name.equals(student.name));
		
		}else {
			return false;
		}
	}
	
	
	public int hashcode{
		return sno + name.hashCode();
	}
	
}
