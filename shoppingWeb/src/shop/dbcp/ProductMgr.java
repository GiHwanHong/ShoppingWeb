package shop.dbcp;

import com.oreilly.servlet.*;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;

import java.sql.*;
import java.util.Vector;

public class ProductMgr {
	private DBConnectionMgr pool=null;
	
	public ProductMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			System.out.println("Error : 커넥션 가져오기 실패!!");
		}
	
	}
	
	public boolean insertProduct(HttpServletRequest req) {
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean res = false;

		try {
			String uploadDir = "/Users/****/eclipse_workspace/shoppingWeb/WebContent";
			MultipartRequest multi = new MultipartRequest(req,uploadDir,5*1024*1024,"euc-kr",new DefaultFileRenamePolicy());
			con = pool.getConnection();
			String query= "insert into shop_product(name, price,detail,date , stock , image)"
					+ "values(?,?,?,now(),?,?)";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, multi.getParameter("name"));
			pstmt.setString(2, multi.getParameter("price"));
			pstmt.setString(3, multi.getParameter("detail"));
			pstmt.setString(4, multi.getParameter("stock"));
			
			if(multi.getFilesystemName("image") == null) {
				pstmt.setString(5, "ready.gif");
			} else {
				pstmt.setString(5, multi.getFilesystemName("image"));
			}
			int count = pstmt.executeUpdate();
			if( count ==	1) res = true;
			
		} catch (Exception ex) {
			System.out.println("Exception : " + ex);
		
		}finally {
			pool.freeConnection(con,pstmt);
		}
		return res;
	}
	
	public Vector getProductList() throws SQLException{
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		Vector vProduct = new Vector();
		
		try {
			con = pool.getConnection();
			String query = "select * from shop_product order by no desc";
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			
			while (rs.next()) {
				ProductBean product = new ProductBean();
				product.setNo(rs.getInt("no"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getString("price"));
				product.setDetail(rs.getString("detail"));
				product.setDate(rs.getString("date"));
				product.setStock(rs.getString("stock"));
				product.setImage(rs.getString("image"));
				vProduct.add(product);
			}
		} catch (Exception ex) {
			System.out.println("Exception : " + ex);
		} finally {
			pool.freeConnection(con,stmt,rs);
		}
		return vProduct;
	}
	public ProductBean getProduct(String no) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductBean product = null;
		
		try {
			con = pool.getConnection();
			String query = "select * from shop_product where no=?";
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				product = new ProductBean();
				product.setNo(rs.getInt("no"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getString("price"));
				product.setDetail(rs.getString("detail"));
				product.setDate(rs.getString("date"));
				product.setStock(rs.getString("stock"));
				product.setImage(rs.getString("image"));
			}
		} catch (Exception ex) {
			System.out.println("Exception : " + ex);
		}finally {
			pool.freeConnection(con, pstmt,rs);
		}
		return product;
	}
}








