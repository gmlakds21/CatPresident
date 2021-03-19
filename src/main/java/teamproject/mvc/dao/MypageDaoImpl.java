package teamproject.mvc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import teamproject.mvc.vo.CatSpeciesVO;
import teamproject.mvc.vo.CatVO;

import java.util.List;

@Repository("mydao")
public class MypageDaoImpl implements MypageDAO {

    @Autowired
    private SqlSession sqlSession;

    // 고양이 목록
    @Override
    public List<CatVO> selectCat(String uno) {
        return sqlSession.selectList("Mypage.catList", uno);
    }

    // 고양이 품종 불러오기
    @Override
    public List<CatSpeciesVO> selectCatSpecies() {
        return sqlSession.selectList("Mypage.speciesList");
    }

    // 고양이 정보 등록
    @Override
    public int insertCat(CatVO cvo) {
        return sqlSession.insert("Mypage.newCat", cvo);
    }

    // 고양이 정보 불러오기
    @Override
    public String selectOneCat(CatVO cvo) {
        return sqlSession.selectOne("Mypage.readOneCat", cvo);
    }


}
