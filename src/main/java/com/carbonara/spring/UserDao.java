package com.carbonara.spring;

import java.util.List;

public interface UserDao {
  void register(User user);
  void deleteUser(String username);
  User validateUser(Login login);
  public List<User> getAllUsers();
}
