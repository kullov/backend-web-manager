package com.example.internproject.domain;

import lombok.*;
import org.hibernate.annotations.BatchSize;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "tbl_user")
@Builder
public class User {
    @Id
    @GeneratedValue
    private Long id;

    @Column(nullable = false, unique = true)
    private String username;
    
    @Column(nullable = false)
    private String password;

    @Column(nullable = true, unique = true)
    private Long typeUserId;

    @Column(nullable = true)
    private int typeUser;

    @Column(nullable = true)
    private String email;

    @ManyToMany(fetch = FetchType.EAGER, cascade = {
      CascadeType.PERSIST,
      CascadeType.MERGE
    })
    @JoinTable(
      name = "user_roles",
      joinColumns = @JoinColumn(name = "user_id"),
      inverseJoinColumns = @JoinColumn(name = "role_id")
    )
    @BatchSize(size = 20)
    private Set<Role> roles;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(Long id, String username, String password, Long typeUserId, int typeUser, String email,
			Set<Role> roles) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.typeUserId = typeUserId;
		this.typeUser = typeUser;
		this.email = email;
		this.roles = roles;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Long getTypeUserId() {
		return typeUserId;
	}

	public void setTypeUserId(Long typeUserId) {
		this.typeUserId = typeUserId;
	}

	public int getTypeUser() {
		return typeUser;
	}

	public void setTypeUser(int typeUser) {
		this.typeUser = typeUser;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
    
}
