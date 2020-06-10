package com.example.internproject.service.impl;

import com.example.internproject.domain.*;
import com.example.internproject.repository.*;
import com.example.internproject.service.UserService;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
@Transactional
public class UserDetailsServiceImpl implements UserDetailsService, UserService {

  @Autowired
  private BCryptPasswordEncoder bCryptPasswordEncoder;

  @Autowired
  private UserRepository userDAO;

  @Autowired
  private RoleRepository roleDAO;
  @Autowired
  private OrganizationRepository organizationRepository;
 @Autowired
  private TeacherRepository teacherRepository;
 @Autowired
  private InternRepository internRepository;

  @Override
  public Page<User> getAllUsers(int pageN, int limit) {
    Page<User> page = userDAO.findAll(PageRequest.of(pageN, limit));
    return page;
  }

  @Override
  public User findByUserId(long userId) {
    return userDAO.findById(userId).get();
  }

  @Override
  public boolean addUser(User account) {
    User checkUser = userDAO.findByUsername(account.getUsername());
    if (checkUser != null) {
      return false;
    } else {
      User user = new User();
      String encodedPassword = bCryptPasswordEncoder.encode(account.getPassword());
      user.setUsername(account.getUsername());
      user.setPassword(encodedPassword);
      user.setTypeUser(account.getTypeUser());
      Long typeUserId;
      Role userRole = new Role();
      if (account.getTypeUser() == 1) {
        userRole = roleDAO.findByRoleName("INTERN");
        int code = Integer.parseInt(RandomStringUtils.randomNumeric(6));
        Intern intern = new Intern();
        intern.setEmail(account.getEmail());
        intern.setCode(code);
        intern.setPassword(encodedPassword);
        internRepository.save(intern);
        typeUserId = internRepository.findByCode(code).getId();
      } else if (account.getTypeUser() == 2) {
        userRole = roleDAO.findByRoleName("ORGANIZATION");
        String taxNumber = RandomStringUtils.randomAlphanumeric(6);
        Organization organization = new Organization();
        organization.setEmail(account.getEmail());
        organization.setTaxNumber(taxNumber);
        organization.setPassword(encodedPassword);
        organizationRepository.save(organization);
        typeUserId = organizationRepository.findByTaxNumber(taxNumber).getId();
      } else {
        userRole = roleDAO.findByRoleName("TEACHER");
        String code = RandomStringUtils.randomAlphanumeric(6);
        Teacher teacher = new Teacher();
        teacher.setEmail(account.getEmail());
        teacher.setCode(code);
        teacher.setPassword(encodedPassword);
        teacherRepository.save(teacher);
        typeUserId = teacherRepository.findByCode(code).getId();
      }
      user.setRoles(new HashSet<>(Arrays.asList(userRole)));
      user.setTypeUserId(typeUserId);
//	    	user.setRoles(new HashSet<>(roleDAO.findAll()));
      userDAO.save(user);
      return true;
    }
  }

  @Override
  public void updateUser(User account) {
    User accountDb = userDAO.findById(account.getId()).get();
//		accountDb.setUserId(account.getUserId());
    accountDb.setUsername(account.getUsername());
    accountDb.setPassword(account.getPassword());
//    accountDb.setOrganizationId(account.getOrganizationId());
//      accountDb.setInternId(account.getInternId() != null ? account.getInternId() : null);
//      accountDb.setTeacherId(account.getTeacherId());
    userDAO.save(accountDb);
  }

  @Override
  public void deleteUser(long id) {
    User account = userDAO.findById(id).get();
    if (account != null) {
      userDAO.delete(account);
    }
  }

  @Override
  public User findByUsername(String userName) {
    return userDAO.findByUsername(userName);
  }

  @Override
  public boolean checkLogin(User user) {
    for (User userExist : userDAO.findAll()) {
      if (user.getUsername().equalsIgnoreCase(userExist.getUsername())
        && user.getPassword().equals(userExist.getPassword())) {
        return true;
      }
    }
    return false;
  }

  @Override
  public List<User> findAll() {
    return userDAO.findAll();
  }

  @Override
  @Transactional(readOnly = true)
  public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
    User user = userDAO.findByUsername(username);

    if (user == null) {
      throw new UsernameNotFoundException("User " //
        + username + " was not found in the database");
    }
    Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
    for (Role role : user.getRoles()){
      grantedAuthorities.add(new SimpleGrantedAuthority(role.getRoleName()));
    }
//	        user.getRoles().forEach(role -> {
//	        	grantedAuthorities.add(new SimpleGrantedAuthority("ROLE_" + role.getRoleName()));
//			});
    return new org.springframework.security.core.userdetails.User(
      user.getUsername(), user.getPassword(), grantedAuthorities);
  }

}

