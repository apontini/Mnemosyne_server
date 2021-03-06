package ap.mnemosyne.database;

import ap.mnemosyne.enums.ConstraintTemporalType;
import ap.mnemosyne.util.Tuple;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GetConstraintMarkerFromMarkerDatabase
{
	private final String stmt = "SELECT * FROM mnemosyne.constraint_marker WHERE marker=?";
	private final Connection conn;
	private final String marker;

	public GetConstraintMarkerFromMarkerDatabase(Connection conn, String marker)
	{
		this.conn = conn;
		this.marker = marker;
	}

	public Tuple<String, ConstraintTemporalType> getConstraintFromMarker() throws SQLException
	{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Tuple<String, ConstraintTemporalType> ret = null;

		try
		{
			pstmt = conn.prepareStatement(stmt);
			pstmt.setString(1, marker);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				ret = new Tuple<>(rs.getString("marker"), ConstraintTemporalType.valueOf(rs.getString("timing")));
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

		return ret;
	}

}

