package com.carbonara.spring;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.ArrayList;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import org.springframework.jdbc.core.RowMapper;


public class UserDaoImpl implements UserDao {

  @Autowired
  DataSource datasource;

  @Autowired
  JdbcTemplate jdbcTemplate;

  @Override
  public void register(User user) {
    String sql = "insert into users values(?,?,?,?,?,?,?)";
    jdbcTemplate.update(sql, new Object[] { user.getUsername(), user.getPassword(), user.getFirstname().toUpperCase(),
    user.getLastname().toUpperCase(), user.getEmail().toLowerCase(), user.getAddress().toUpperCase(), user.getPhone() });
    }

  @Override
  public void deleteUser(String username) {
    String sql = "DELETE FROM USERS WHERE username=?";
        jdbcTemplate.update(sql, new Object[]
        { username });
    }
  
  @Override
    public User validateUser(Login login) {
    String sql = "select * from users where username='" + login.getUsername() + "' and password='" + login.getPassword()
    + "'";
    List<User> users = jdbcTemplate.query(sql, new UserMapper());

    return users.size() > 0 ? users.get(0) : null;

    }
    @Override
    public List<User> getAllUsers()
    {
        String sql = "SELECT * FROM users";

        List<User> userList = jdbcTemplate.query(sql, new ResultSetExtractor<List<User>>()
        {
            @Override
            public List<User> extractData(ResultSet rs) throws SQLException, DataAccessException
            {
                List<User> list = new ArrayList<User>();
                while (rs.next())
                {
                    User user = new User();
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setFirstname(rs.getString("firstname").toUpperCase());
                    user.setLastname(rs.getString("lastname").toUpperCase());
                    user.setEmail(rs.getString("email").toLowerCase());
                    user.setAddress(rs.getString("address").toUpperCase());
                    user.setPhone(rs.getString("phone"));
                    list.add(user);
                }
                return list;
            }

        });
        return userList;
    }

  }

  class UserMapper implements RowMapper<User> {

  @Override
  public User mapRow(ResultSet rs, int arg1) throws SQLException {

    User user = new User();

    user.setUsername(rs.getString("username"));

    user.setPassword(rs.getString("password"));

    user.setFirstname(rs.getString("firstname"));

    user.setLastname(rs.getString("lastname"));

    user.setEmail(rs.getString("email"));

    user.setAddress(rs.getString("address"));

    user.setPhone(rs.getString("phone"));

    return user;

  }

}
