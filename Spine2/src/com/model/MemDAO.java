package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public int join(MemDTO dto) {

		int cnt = 0;

		try {
			getConnection();
			String sql = "INSERT INTO MEM VALUES(?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getTel());
			psmt.setString(4, dto.getSex());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}

	public MemDTO login(MemDTO dto) {
		MemDTO info = null;
		
		getConnection();
		
		try {
			String sql = "SELECT * FROM MEM WHERE ID = ? AND PW = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				String id=rs.getString("ID");
				String pw=rs.getString("PW");
				String tel = rs.getString("TEL");
				String sex = rs.getString("SEX");
				info = new MemDTO(id, pw, tel, sex);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return info;
	}
	public ArrayList<String> getIDList(){
		ArrayList<String> list=new ArrayList<String>();
		try {
			getConnection();
			String sql = "SELECT * FROM MEM";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				list.add(rs.getString("ID"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	
	public MemDTO getInfo(String name) {
		MemDTO dto=null;
		try {
			getConnection();
			String sql = "SELECT * FROM MEM WHERE NAME=? ";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			rs = psmt.executeQuery();
			if(rs.next()) {
				String id=rs.getString("ID");
				String pw=rs.getString("PW");
				String tel = rs.getString("TEL");
				String sex = rs.getString("SEX");
				dto = new MemDTO(id, pw, tel, sex);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}

	public ArrayList<String> BDATE(String id) {
		ArrayList<String> list=new ArrayList<String>();
		try {
			getConnection();
			String sql = "select TM from CS5 where ID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			while(rs.next()) {
				list.add(rs.getString("TM"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	
	
	
	
	
	
	
	
	
	public ArrayList<String> CS5(String id) {
		ArrayList<String> list=new ArrayList<String>();
		try {
			getConnection();
			String sql = "select CSPINE from CS5 where ID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			while(rs.next()) {
				list.add(rs.getString("CSPINE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	public ArrayList<String> TS5(String id) {
		ArrayList<String> list=new ArrayList<String>();
		try {
			getConnection();
			String sql = "SELECT TSPINE FROM TS5 where ID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			while(rs.next()) {
				list.add(rs.getString("TSPINE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	public ArrayList<String> LUMBER5(String id) {
		ArrayList<String> list=new ArrayList<String>();
		try {
			getConnection();
			String sql = "SELECT LUMBER FROM LUMBER5 where ID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			while(rs.next()) {
				list.add(rs.getString("LUMBER"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	public ArrayList<String> RS5(String id) {
		ArrayList<String> list=new ArrayList<String>();
		try {
			getConnection();
			String sql = "SELECT RSHOULDER FROM RS5 where ID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			while(rs.next()) {
				list.add(rs.getString("RSHOULDER"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	public ArrayList<String> LS5(String id) {
		ArrayList<String> list=new ArrayList<String>();
		try {
			getConnection();
			String sql = "SELECT LSHOULDER FROM LS5 where ID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			while(rs.next()) {
				list.add(rs.getString("LSHOULDER"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
}