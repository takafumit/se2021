package dao;
public class Dao extends DriverAccessor{

	private Connection connection;

	}

	public User getUserById(String id) {
		try{
			String sql = "select * from user where id = ?";
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setString(1, id);
			ResultSet rs = stmt.executeQuery();

		}catch(SQLException e){
			this.closeConnection(this.connection);
			e.printStackTrace();

		} finally {
		}

		return user;
	}
}
