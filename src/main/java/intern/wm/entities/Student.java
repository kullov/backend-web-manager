//package intern.wm.entities;
//
//import java.util.Date;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.Table;
//import javax.persistence.Temporal;
//import javax.persistence.TemporalType;
//
//@Entity
//@Table(name = "intern_profile")
//public class Student {		
//	@Id	
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    @Column(name = "id", nullable = false)
//    private Long id;
// 
//    @Column(name = "code", nullable = false)
//    private String code;
// 
//    @Temporal(TemporalType.DATE)
//    @Column(name = "date_of_birth")
//    private Date dateOfBirth;
//    
//    @Temporal(TemporalType.DATE)
//    @Column(name = "join_date")
//    private Date joinDate;
//    
//    @Column(name = "last_name", nullable = false)
//	private String lastName;
//    
//    @Column(name = "first_name", nullable = false)
//	private String firstName;
//    
//    @Column(name = "class_name")
//	private String className;
//    
//    @Column(name = "avatar")
//	private String avatar;
//    
//    @Column(name = "password")
//	private String password;
//    
//    @Column(name = "email")
//	private String email;
//    
//    @Column(name = "phone")
//	private String phone;
//    
//    @Column(name = "description")
//	private String description;
//    
//    @Column(name = "address")
//	private String address;
//
//	public Student() {
//		super();
//	}
//
//	public Student(Long id, String code, Date dateOfBirth, Date joinDate, String lastName, String firstName,
//			String className, String avatar, String password, String email, String phone, String description,
//			String address) {
//		super();
//		this.id = id;
//		this.code = code;
//		this.dateOfBirth = dateOfBirth;
//		this.joinDate = joinDate;
//		this.lastName = lastName;
//		this.firstName = firstName;
//		this.className = className;
//		this.avatar = avatar;
//		this.password = password;
//		this.email = email;
//		this.phone = phone;
//		this.description = description;
//		this.address = address;
//	}
//
//	public Long getId() {
//		return id;
//	}
//
//	public void setId(Long id) {
//		this.id = id;
//	}
//
//	public String getCode() {
//		return code;
//	}
//
//	public void setCode(String code) {
//		this.code = code;
//	}
//
//	public Date getDateOfBirth() {
//		return dateOfBirth;
//	}
//
//	public void setDateOfBirth(Date dateOfBirth) {
//		this.dateOfBirth = dateOfBirth;
//	}
//
//	public Date getJoinDate() {
//		return joinDate;
//	}
//
//	public void setJoinDate(Date joinDate) {
//		this.joinDate = joinDate;
//	}
//
//	public String getLastName() {
//		return lastName;
//	}
//
//	public void setLastName(String lastName) {
//		this.lastName = lastName;
//	}
//
//	public String getFirstName() {
//		return firstName;
//	}
//
//	public void setFirstName(String firstName) {
//		this.firstName = firstName;
//	}
//
//	public String getClassName() {
//		return className;
//	}
//
//	public void setClassName(String className) {
//		this.className = className;
//	}
//
//	public String getAvatar() {
//		return avatar;
//	}
//
//	public void setAvatar(String avatar) {
//		this.avatar = avatar;
//	}
//
//	public String getPassword() {
//		return password;
//	}
//
//	public void setPassword(String password) {
//		this.password = password;
//	}
//
//	public String getEmail() {
//		return email;
//	}
//
//	public void setEmail(String email) {
//		this.email = email;
//	}
//
//	public String getPhone() {
//		return phone;
//	}
//
//	public void setPhone(String phone) {
//		this.phone = phone;
//	}
//
//	public String getDescription() {
//		return description;
//	}
//
//	public void setDescription(String description) {
//		this.description = description;
//	}
//
//	public String getAddress() {
//		return address;
//	}
//
//	public void setAddress(String address) {
//		this.address = address;
//	}
//
//	@Override
//	public String toString() {
//		return "Student [id=" + id + ", code=" + code + ", dateOfBirth=" + dateOfBirth + ", joinDate=" + joinDate
//				+ ", lastName=" + lastName + ", firstName=" + firstName + ", className=" + className + ", avatar="
//				+ avatar + ", password=" + password + ", email=" + email + ", phone=" + phone + ", description="
//				+ description + ", address=" + address + "]";
//	}
//    
//}
