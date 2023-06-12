package HashMap1;

import java.util.HashMap;
import java.util.Map;

import sec01.exam001.Student;

public class HashMapExample {

	public static void main(String[] args) {
		Map<Student, Integer>map = new HashMap<Student, Integer>();
		
		map.put(new Student(1,"홍길돌"),95);
		map.put(new Student(1,"홍길돌"),95);
		
		System.out.println("총 Entry 수 : " + map.size());
	
	}

}
