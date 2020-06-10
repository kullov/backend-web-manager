package com.example.internproject.controller;

import com.example.internproject.domain.Role;
import com.example.internproject.domain.User;
import com.example.internproject.repository.RoleRepository;
import com.example.internproject.service.UserService;
import java.util.List;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
public class UserController {

  @Autowired
  UserService userService;

  @Autowired
  RoleRepository roleDAO;

  @RequestMapping({ "api/roles" })
  public List<Role> getAllRoles() {
    return roleDAO.findAll();
  }

  @RequestMapping({ "api/users" })
  public List<User> getAllUsers() {
    List<User> list = userService.findAll();
    for (User appUser : list) {
      System.out.println(appUser.toString());
    }
    return list;
  }

  @RequestMapping({ "api/hello" })
  public String firstPage() {
    return "Hello World";
  }

  @RequestMapping({ "/403" })
  public String errorPage() {
    return "You do not have permission to access this site!";
  }

  @GetMapping("api/user/all")
  public Page<User> getAllUsers(@RequestParam(value="page", defaultValue = "1") int page) {
    Page<User> list = userService.getAllUsers(page-1, 5);
    return list;
  }

  @GetMapping("api/user/detail/{id}")
  public User getTaskById(@PathVariable("id") long userId) {
    User user = userService.findByUserId(userId);
    return user;
  }

  @GetMapping("api/user/{username}")
  public User getUserById(@PathVariable("username") String username) {
    User user = userService.findByUsername(username);
    return user;
  }

  @PostMapping("/api/user/create")
  public User doSaveCustomer( @RequestBody User user, UriComponentsBuilder builder) {
    boolean flag = userService.addUser(user);
    if (flag == true) {
      return user;
    } else {
      return null;
    }
  }

  @PutMapping("api/user/update/{id}")
  public User updateUser(@RequestBody User user) {
    userService.updateUser(user);
    return user;
  }

  @DeleteMapping("api/user/delete/{id}")
  public void deleteUser(@PathVariable("id") Integer id) {
    userService.deleteUser(id);
  }

  @PostMapping("/login")
  public String login(@RequestBody User user) {
    String result = "";
    try {
      if (userService.checkLogin(user)) {
        result = user.getUsername();
      } else {
        result = "Wrong userId and password";
      }
    } catch (Exception ex) {
      result = "Server Error";
    }
    return result;
  }

}
