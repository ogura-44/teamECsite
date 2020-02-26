package com.internousdev.rosso.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.rosso.dto.DestinationInfoDTO;
import com.internousdev.rosso.util.DBConnector;

public class DestinationInfoDAO {

	//destination.jspから受け取った値を宛先テーブルにインサートする
	public int createUser(String userId, String familyName, String firstName, String familyNameKana,
			String firstNameKana, String userAddress, String telNumber, String email) throws SQLException {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		int result = 0;

		String sql = "INSERT INTO destination_info"
				+ "(user_id, family_name, first_name, family_name_kana, first_name_kana, user_address,"
				+ "tel_number, email, regist_date, update_date)"
				+ "VALUES(?,?,?,?,?,?,?,?,now(),now())";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, userId);
			ps.setString(2, familyName);
			ps.setString(3, firstName);
			ps.setString(4, familyNameKana);
			ps.setString(5, firstNameKana);
			ps.setString(6, userAddress);
			ps.setString(7, telNumber);
			ps.setString(8, email);
			result = ps.executeUpdate();

		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	//宛先idを値としてもらってそれに紐づく宛先情報を削除する
	public int dereteDestinationInfo(int id) throws SQLException {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		int result = 0;

		String sql = "DELETE FROM destination_info WHERE id=?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			result =  ps.executeUpdate();

		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	//ユーザーIDを値としてもらって、そのIDの宛先情報をSELECTしてdestinationDTOに格納する
	public List<DestinationInfoDTO> getDestinationInfo(String userId) throws SQLException {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		List<DestinationInfoDTO> destinationlist = new ArrayList<DestinationInfoDTO>();

		String sql = "SELECT * FROM destination_info WHERE user_id=? ORDER BY regist_date ASC";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, userId);
			ResultSet rs = ps.executeQuery();

			while(rs.next()) {
				DestinationInfoDTO destinationdto = new DestinationInfoDTO();
				destinationdto.setId(rs.getInt("id"));
				destinationdto.setFamilyName(rs.getString("family_name"));
				destinationdto.setFirstName(rs.getString("first_name"));
				destinationdto.setFamilyNameKana(rs.getString("family_name_kana"));
				destinationdto.setFirstNameKana(rs.getString("first_name_kana"));
				destinationdto.setUserAddress(rs.getString("user_address"));
				destinationdto.setTelNumber(rs.getString("tel_number"));
				destinationdto.setEmail(rs.getString("email"));
				destinationlist.add(destinationdto);
			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return destinationlist;
	}

}
