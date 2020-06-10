package com.example.internproject.controller;

import com.example.internproject.authentication.JwtTokenUtil;
import com.example.internproject.authentication.payload.JwtRequest;
import com.example.internproject.authentication.payload.JwtResponse;
import com.example.internproject.authentication.user_.JwtUserDetailsService;
import com.example.internproject.domain.User;
import com.example.internproject.service.UserService;

@RestController
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class JwtAuthenticationController {
  @Autowired
  private AuthenticationManager authenticationManager;

  @Autowired
  private JwtTokenUtil jwtTokenUtil;

  @Autowired
  UserService userService;

  @Autowired
  private JwtUserDetailsService userDetailsService;

  @RequestMapping(value = "/authenticate", method = RequestMethod.POST)
  public ResponseEntity<?> createAuthenticationToken(@RequestBody JwtRequest authenticationRequest) throws Exception {
    // Xác thực từ username và password.
    authenticate(authenticationRequest.getUsername(), authenticationRequest.getPassword());

    final UserDetails userDetails = userDetailsService
      .loadUserByUsername(authenticationRequest.getUsername());
    //Tao token
//        final String token = jwtTokenUtil.generateToken(userDetails);

    String token = jwtTokenUtil.createToken(authenticationRequest.getUsername(), this.userService.findByUsername(authenticationRequest.getUsername()).getRoles());
    User userResult = this.userService.findByUsername(authenticationRequest.getUsername());
    // Trả về jwt cho người dùng.
    return ResponseEntity
      .ok(new JwtResponse(token));
  }

  private void authenticate(String username, String password) throws Exception {
    try {
      authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
    } catch (DisabledException e) {
      throw new Exception("USER_DISABLED", e);
    } catch (BadCredentialsException e) {
      throw new Exception("INVALID_CREDENTIALS", e);
    }
  }
}
