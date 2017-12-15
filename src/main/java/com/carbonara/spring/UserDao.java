/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.carbonara.spring;

public interface UserDao {
  void register(User user);
  User validateUser(Login login);
}
