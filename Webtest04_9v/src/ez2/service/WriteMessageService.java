package ez2.service;

import java.sql.*;
import ez2.dao.MessageDao;
import ez2.dao.MessageDaoProvider;
import ez2.model.Message;
import ez2.loader.JdbcUtil;
import ez2.jdbc.connection.ConnectionProvider;

public class WriteMessageService {

	private static WriteMessageService instance = new WriteMessageService();

	public static WriteMessageService getInstance () {
		return instance;
	}
	private WriteMessageService() {}
	
	public void write(Message message) throws ServiceException {
		Connection conn =null;
		try {
			conn=ConnectionProvider.getConnection();
			MessageDao messageDao = MessageDaoProvider.getInstatnce().getMessageDao();
			messageDao.insert(conn, message);
			
		}catch(SQLException e) {
			throw new ServiceException (
				"메시지 등록 실패" + e.getMessage(),e);
			}finally {
				JdbcUtil.close(conn);			
		}	
	}

	
	
}