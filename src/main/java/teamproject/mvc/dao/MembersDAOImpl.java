package teamproject.mvc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import teamproject.mvc.vo.CatSpeciesVO;
import teamproject.mvc.vo.CatVO;
import teamproject.mvc.vo.MembersVO;
import teamproject.mvc.vo.ZipCodeVO;

import java.util.List;

@Repository("mbdao")
public class MembersDAOImpl implements MembersDAO {

    @Autowired
    private SqlSession sqlSession;

    // 해당 아이디 존재 여부 확인
    @Override
    public int checkUserid(String email) {
        return sqlSession.selectOne("Members.checkUserID", email);
    }

    // 주소 검색
    @Override
    public List<ZipCodeVO> findZipCode(String dong) {
        return sqlSession.selectList("Members.findZipcode", dong);
    }

    // 신규 회원 등록
    @Override
    public int insertMember(MembersVO mvo) {
        return sqlSession.insert("Members.addNewMember", mvo);
    }

    // 로그인
    @Override
    public MembersVO selectMemberOne(MembersVO mvo) {
        mvo = sqlSession.selectOne("Members.readMemberOne", mvo);
        return mvo;
    }













    @Override
    public int selectOneUserid(String email) {
        return sqlSession.selectOne("Members.checkuid", email);
    }



    @Override
    public int updateUser(MembersVO mvo) {
        return sqlSession.update("Members.modifyuser",mvo);
    }

}