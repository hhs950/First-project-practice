package model;

public class MemberVO {
	// 변수(필드)
	private String id;
	private String nick;
	private int point;
	private String sex;
	private String age;
	
	
	
	
	public MemberVO(String id, String nick) {		
		this.id = id;
		this.nick = nick;
	}

	public MemberVO(String id, String nick, int point ,String sex,String age) {		
		this.id = id;
		this.nick = nick;
		this.point = point;
		this.sex = sex;
		this.age = age;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public int getPoint() {
		return point;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public void setPoint(int point) {
		this.point = point;
	}
	
	
	
	
	
	
	
	
		
	
	

}
