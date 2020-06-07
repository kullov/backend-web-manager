package com.example.internproject.domain;

import lombok.*;
import org.hibernate.annotations.BatchSize;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "tbl_user")
@Data // lombok
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class User {
    @Id
    @GeneratedValue
    private Long id;

    @Column(nullable = false, unique = true)
    private String username;
    @Column(nullable = false)
    private String password;

    @Column(nullable = true, unique = true)
    private Long internId;

    @Column(nullable = true, unique = true)
    private Long teacherId;

    @Column(nullable = true, unique = true)
    private Long organizationId;

    @ManyToMany(fetch =FetchType.EAGER, cascade = {
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
}
