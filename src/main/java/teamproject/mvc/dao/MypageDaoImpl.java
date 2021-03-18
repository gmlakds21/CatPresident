package teamproject.mvc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("mydao")
public class MypageDaoImpl implements MypageDAO {

    @Autowired
    private SqlSession sqlSession;



}
