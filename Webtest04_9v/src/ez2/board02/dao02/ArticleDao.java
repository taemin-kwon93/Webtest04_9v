package ez2.board02.dao02;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import ez2.board02.model02.Article;
import ez2.loader.JdbcUtil;

public class ArticleDao {
	private static ArticleDao instance = new ArticleDao();
	public static ArticleDao getInstance() {
		return instance;
	}
	private ArticleDao() {}
	
	public int selectCount(Connection conn)throws SQLException{
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select count(*) from article");
			rs.next();
			return rs.getInt(1);
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}//public int selectCount(Connection conn)
	
	public List<Article> select(Connection conn, int firstRow, int endRow)
	throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select article_id, group_id, sequence_no, posting_date, read_count, writer_name, password, title from " 
				+ " (select rownum rnum, article_id, group_id, sequence_no, posting_date, read_count, writer_name, password, title from "
				+ "(select * from article m order by m.sequence_no desc) "
				+ " where rownum <= ?) where rnum >= ? ");
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, firstRow);
			rs = pstmt.executeQuery();
			if(!rs.next()) {
				return Collections.emptyList();
			}
			List<Article> articleList = new ArrayList<Article>();
			do {
				Article article = makeArticleFromResultSet(rs, false);
				articleList.add(article);
			}while(rs.next());
			return articleList;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}//public List<Article> select(Connection conn, int firstRow, int endRow)
	
	private Article makeArticleFromResultSet(ResultSet rs, boolean readContent)
	throws SQLException{
		Article article = new Article();
		
		article.setId(rs.getInt("article_id"));
		article.setGroupId(rs.getInt("group_id"));
		article.setSequenceNumber(rs.getString("sequence_no"));
		article.setPostingDate(rs.getTimestamp("posting_date"));
		article.setReadCount(rs.getInt("read_count"));
		article.setWriterName(rs.getString("writer_name"));
		article.setPassword(rs.getString("password"));
		article.setTitle(rs.getString("title"));
		if(readContent) {
			article.setId(rs.getInt("article_id"));
		}
		return article;
	}//private Article makeArticleFromResultSet(ResultSet rs, boolean readCount)
}//public class ArticleDao
