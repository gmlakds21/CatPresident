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

    // 1 - 현우
    @Override
    public int insertMember(MembersVO mvo) {

        return sqlSession.insert("Members.insertMember", mvo);
    }

    @Override
    public int selectOneUserid(String email) {
        return sqlSession.selectOne("Members.checkuid", email);
    }

    @Override
    public List<ZipCodeVO> selectZipCode(String dong) {
        return sqlSession.selectList("Members.zipcode", dong);
    }


    @Override
    public int insertCatMember(CatVO cvo) {
        return sqlSession.insert("Members.insertCatMember", cvo);
    }

    @Override
    public Object selectUserId(String email) {
        return sqlSession.selectList("Members.getuserid", email);
    }


    @Override
    public MembersVO selectLogin(MembersVO mvo) {
        mvo = sqlSession.selectOne("Members.checklogin", mvo);

        if (mvo == null) {
            mvo = new MembersVO();
            mvo.setUno("0");
            mvo.setUsername("");
            mvo.setPhone("");
        }

        System.out.println("[" + mvo.getUno() + "/" + mvo.getUsername() + "/" + mvo.getPhone() + "]");
        return mvo;
    }

    @Override
    public int updateUser(MembersVO mvo) {
        return sqlSession.update("Members.modifyuser",mvo);
    }


    // 승희
    @Override
    public List<CatSpeciesVO> selectCateList() {
        return sqlSession.selectList("Members.speciesList");
    }



}