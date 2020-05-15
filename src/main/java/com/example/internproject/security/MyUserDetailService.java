package com.example.internproject.security;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class MyUserDetailService implements UserDetailsService {

  @Override
  public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
    return new User("foo", "foo", new ArrayList<>());
  }

  private User createSpringSecurityUser(User user) {
    List<GrantedAuthority> grantedAuthorities = user.getAuthorities().stream()
            .map(authority -> new SimpleGrantedAuthority(authority.getAuthority()))
            .collect(Collectors.toList());
    return new User(user.getUsername(), user.getPassword(), grantedAuthorities);
  }
}
