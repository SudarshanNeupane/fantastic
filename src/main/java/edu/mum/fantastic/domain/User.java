package edu.mum.fantastic.domain;

import java.io.Serializable;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.NumberFormat;


public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	@NotNull
	private String firstName;
	private String middleName;
	@NotNull
	private String lastName;
	@NotNull
	@Email(message = "{validate.user.userName.email}")
	private String userName;
	@NotNull
	private String password;
	@NumberFormat
	@Size(max = 15, min = 9)
	@NotNull
	private Long mobile;
	@NotNull
	private String address1;
	private String address2;
	@NotNull
	private String city;
	@NotNull
	private String state;
	@NumberFormat
	@Size(max = 10, min = 6)
	@NotNull
	private String zipCode;
	@NotNull
	private String country;

	public User() {
	}

	public User(String firstName, String lastName, String userName,
			String password, Long mobile, String address1, String city,
			String state, String zipCode, String country) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.password = password;
		this.mobile = mobile;
		this.address1 = address1;
		this.city = city;
		this.state = state;
		this.zipCode = zipCode;
		this.country = country;
	}

	public User(String firstName, String middleName, String lastName,
			String userName, String password, Long mobile, String address1,
			String address2, String city, String state, String zipCode,
			String country) {
		this(firstName, lastName, userName, password, mobile, address1, city,
				state, zipCode, country);
		this.middleName = middleName;
		this.address2 = address2;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Long getMobile() {
		return mobile;
	}

	public void setMobile(Long mobile) {
		this.mobile = mobile;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Override
	public String toString() {
		return "User [firstName=" + firstName + ", middleName=" + middleName
				+ ", lastName=" + lastName + ", userName=" + userName
				+ ", password=" + password + ", mobile=" + mobile
				+ ", address1=" + address1 + ", address2=" + address2
				+ ", city=" + city + ", state=" + state + ", zipCode="
				+ zipCode + ", country=" + country + "]";
	}
}