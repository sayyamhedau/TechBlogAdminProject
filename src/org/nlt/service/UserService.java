package org.nlt.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.nlt.config.DatabaseConnection;
import org.nlt.model.User;

public class UserService {

	public static List<User> findAllUsers() {
		List<User> userList = new ArrayList<>();

		Connection connection = DatabaseConnection.getConnection();
		try {
			PreparedStatement ps = connection.prepareStatement("select * from users where status=1");
			ResultSet resultSet = ps.executeQuery();

			while (resultSet.next()) {
				User user = new User();

				user.setId(resultSet.getInt("id"));
				user.setName(resultSet.getString("name"));
				user.setEmail(resultSet.getString("email"));
				user.setGender(resultSet.getString("gender"));
				user.setCity(resultSet.getString("city"));
				user.setState(resultSet.getString("state"));

				userList.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userList;
	}
}
