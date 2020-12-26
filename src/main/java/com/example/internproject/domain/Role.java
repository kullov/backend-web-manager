package com.example.internproject.domain;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
@Entity
@Table(name = "tbl_Role")
@Data
public class Role implements Serializable {

  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", nullable = false)
  private int role_id;

  @Column(name = "role_name", length = 30, nullable = false)
  private String roleName;

  @Override
  public String toString() {
    return roleName;
  }

public int getRole_id() {
	return role_id;
}

public void setRole_id(int role_id) {
	this.role_id = role_id;
}

public String getRoleName() {
	return roleName;
}

public void setRoleName(String roleName) {
	this.roleName = roleName;
}


}

