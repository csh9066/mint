package mint.noticeBoard.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mint.noticeBoard.bean.NoticeBoardDTO;

@Repository
public class NoticeBoardDAOMybatis implements NoticeBoardDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<NoticeBoardDTO> noticeBoardList(Map<String, Integer> map) {
		return sqlSession.selectList("noticeBoardSQL.noticeBoardList", map);
	}

	
	
}
