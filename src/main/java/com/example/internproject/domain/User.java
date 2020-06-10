package com.example.internproject.domain;

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
    private Long typeUserId;

    @Column(nullable = true)
    private int typeUser;

    @Column(nullable = true)
    private String email;

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
