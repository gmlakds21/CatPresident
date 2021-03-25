package teamproject.mvc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import teamproject.mvc.vo.CatSpeciesVO;
import teamproject.mvc.vo.CatVO;
import teamproject.mvc.vo.MembersVO;

import java.util.List;

@Repository("mydao")
public class MypageDaoImpl implements MypageDAO {

    @Autowired
    private SqlSession sqlSession;

    // 고양이 리스트 읽어오기
    @Override
    public List<CatVO> selectCatList(String uno) {
        return sqlSession.selectList("Mypage.readCatList", uno);
    }

    // 고양이 품종 읽어오기
    @Override
    public List<CatSpeciesVO> selectSpeciesList() {
        return sqlSession.selectList("Mypage.readSpeciesList");
    }

    // 고양이 번호 읽어오기
    @Override
    public String selectCatCno(CatVO cvo) {
        return sqlSession.selectOne("Mypage.readCatCno", cvo);
    }

    // 고양이 정보 등록
    @Override
    public int insertNewCat(CatVO cvo) {
        return sqlSession.insert("Mypage.addNewCat", cvo);
    }

    // 대표고양이 번호 수정
    @Override
    public int updateMemberCno(MembersVO mvo) {
        return sqlSession.update("Mypage.modifyMemberCno", mvo);
    }

    // 고양이 정보 읽어오기
    @Override
    public CatVO selectCatOne(String catno) {
        return sqlSession.selectOne("Mypage.readCatOne", catno);
    }

    // 고양이 정보 수정
    @Override
    public int updateCatOne(CatVO cvo) {
        return sqlSession.update("Mypage.modifyCatOne", cvo);
    }
}
