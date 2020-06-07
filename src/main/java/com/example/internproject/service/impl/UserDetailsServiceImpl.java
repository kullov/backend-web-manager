package com.example.internproject.service.impl;

import com.example.internproject.domain.Role;
import com.example.internproject.domain.User;
import com.example.internproject.repository.RoleRepository;
import com.example.internproject.repository.UserRepository;
import com.example.internproject.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
  public boolean addUser(User account, String role) {
    User checkUser = userDAO.findByUsername(account.getUsername());
    if (checkUser != null) {
      return false;
    } else {
      Role userRole = roleDAO.findByRoleName(role);
      User user = new User();
      String encodedPassword = bCryptPasswordEncoder.encode(account.getPassword());
      user.setUsername(account.getUsername());
      user.setPassword(encodedPassword);
      user.setOrganizationId(account.getOrganizationId());
//      user.setInternId(account.getInternId() != null ? account.getInternId() : null);
//      user.setTeacherId(account.getTeacherId());
      user.setRoles(new HashSet<>(Arrays.asList(userRole)));
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
    accountDb.setOrganizationId(account.getOrganizationId());
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

