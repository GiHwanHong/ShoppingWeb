package shop.dbcp;

import java.sql.*;
import java.util.Vector;

public class OrderMgr {
	private DBConnectionMgr pool = null;

	public OrderMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			System.out.println("Error : 커넥션 가져오기 실패!!");
		}
	}
	
	//주문 목록조회 부분
	public Vector getOrderList() {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		Vector vRes = new Vector();
		
		try {
			con = pool.getConnection();
			String query = "select * from shop_order by no desc";
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				OrderBean order = new OrderBean();
				order.setId(rs.getString("id"));
				order.setQuantity(rs.getInt("quantity"));
				order.setDate(rs.getString("date"));
				order.setNo(rs.getString("no"));
				order.setState(rs.getString("state"));
				order.setProduct_no(rs.getString("product_no"));
				vRes.add(order);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			
		}
		return vRes;
	}
}
