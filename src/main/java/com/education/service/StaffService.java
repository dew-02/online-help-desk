package com.education.service;

import com.education.model.Staff;
import com.education.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StaffService {

    // Create Staff
    public boolean createStaff(Staff staff) {
        String query = "INSERT INTO staff (name, email, password, fileName) VALUES (?, ?, ?, ?)";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, staff.name);
            stmt.setString(2, staff.email);
            stmt.setString(3, staff.password);
            stmt.setString(4, staff.fileName);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Get Staff by ID
    public Staff getStaff(int id) {
        String query = "SELECT * FROM staff WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                Staff staff = new Staff();
                staff.id = rs.getInt("id");
                staff.name = rs.getString("name");
                staff.email = rs.getString("email");
                staff.password = rs.getString("password");
                staff.fileName = rs.getString("fileName");
                return staff;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
 // Get staff by email
    public Staff getStaffByEmail(String email) {
        String query = "SELECT * FROM staff WHERE email = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                Staff staff = new Staff();
                staff.id = rs.getInt("id");
                staff.name = rs.getString("name");
                staff.email = rs.getString("email");
                staff.password = rs.getString("password");
                staff.fileName = rs.getString("fileName");
                return staff;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    // Get All Staff
    public List<Staff> getAllStaff() {
        List<Staff> staffList = new ArrayList<>();
        String query = "SELECT * FROM staff";
        try (Connection connection = DBConnection.getConnection();
             Statement stmt = connection.createStatement()) {
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                Staff staff = new Staff();
                staff.id = rs.getInt("id");
                staff.name = rs.getString("name");
                staff.email = rs.getString("email");
                staff.password = rs.getString("password");
                staff.fileName = rs.getString("fileName");
                staffList.add(staff);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return staffList;
    }

    // Update Staff
    public boolean updateStaff(Staff staff) {
        String query = "UPDATE staff SET name = ?, email = ?, password = ?, fileName = ? WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, staff.name);
            stmt.setString(2, staff.email);
            stmt.setString(3, staff.password);
            stmt.setString(4, staff.fileName);
            stmt.setInt(5, staff.id);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Delete Staff
    public boolean deleteStaff(int id) {
        String query = "DELETE FROM staff WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
} 