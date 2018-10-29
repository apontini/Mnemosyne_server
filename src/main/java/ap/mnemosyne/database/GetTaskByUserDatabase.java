package ap.mnemosyne.database;

import ap.mnemosyne.resources.*;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GetTaskByUserDatabase
{
	private final String stmt = "SELECT * FROM mnemosyne.task WHERE useremail=?";
	private final Connection conn;
	private final User u;

	public GetTaskByUserDatabase(Connection conn, User u)
	{
		this.conn = conn;
		this.u = u;
	}

	public List<Task> getTaskByUser() throws SQLException, IOException, ClassNotFoundException
	{
		PreparedStatement pstmt = null;
		List<Task> l = new ArrayList<>();
		ResultSet rs = null;
		try
		{
			pstmt = conn.prepareStatement(stmt);
			pstmt.setString(1, u.getEmail());

			rs = pstmt.executeQuery();

			while (rs.next())
			{
				Task t;
				ObjectInputStream in = new ObjectInputStream(new ByteArrayInputStream(rs.getBytes("placesToSatisfy")));
				List<Point> list = (List<Point>) in.readObject();
				in.close();

				in = new ObjectInputStream(new ByteArrayInputStream(rs.getBytes("constr")));
				Object read = in.readObject();
				in.close();

				if(read instanceof TaskPlaceConstraint)
				{
					t = new Task(rs.getInt("id"), rs.getString("useremail"), rs.getString("name"), (TaskPlaceConstraint) read,
							rs.getBoolean("possibleAtWork"), rs.getBoolean("repeatable"), rs.getBoolean("doneToday"),
							rs.getBoolean("failed"), list);
				}
				else if(read instanceof TaskTimeConstraint)
				{
					t = new Task(rs.getInt("id"), rs.getString("useremail"), rs.getString("name"), (TaskTimeConstraint) read,
							rs.getBoolean("possibleAtWork"), rs.getBoolean("repeatable"), rs.getBoolean("doneToday"),
							rs.getBoolean("failed"), list);
				}
				else
				{
					t = new Task(rs.getInt("id"), rs.getString("useremail"), rs.getString("name"), null,
							rs.getBoolean("possibleAtWork"), rs.getBoolean("repeatable"), rs.getBoolean("doneToday"),
							rs.getBoolean("failed"), list);
				}
				l.add(t);
			}
		}
		finally
		{
			if (rs != null)
			{
				rs.close();
			}

			if (pstmt != null)
			{
				pstmt.close();
			}

			conn.close();
		}

		return l;
	}
}
