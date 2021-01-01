package org.nlt.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.nlt.config.DatabaseConnection;
import org.nlt.model.User;

public class PostService {

	public static int totalBlogPostedByUser(User user) {
		int blogsCount = 0;
		Connection connection = DatabaseConnection.getConnection();
		try {
			PreparedStatement ps = connection
					.prepareStatement("select * from posts where user_id=" + user.getId() + " and status=1");
			ResultSet resultSet = ps.executeQuery();

			while (resultSet.next()) {
				blogsCount++;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return blogsCount;
	}
}
