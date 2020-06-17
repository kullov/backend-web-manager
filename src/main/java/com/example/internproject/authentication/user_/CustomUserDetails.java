package com.example.internproject.authentication.user_;

import com.example.internproject.domain.Role;
import com.example.internproject.domain.User;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

public class CustomUserDetails implements UserDetails {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
        Set<Role> roles = user.getRoles();
        for (Role role : roles) {
            grantedAuthorities.add(new SimpleGrantedAuthority(role.getRoleName()));
        }
        return grantedAuthorities;
    }

    public CustomUserDetails(User user) {
		super();
		this.user = user;
	}

	@Override
    public String getPassword() {
        return user.getPassword();
    }

    @Override
    public String getUsername() {
        return user.getUsername();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
