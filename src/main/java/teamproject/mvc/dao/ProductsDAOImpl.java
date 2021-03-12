package teamproject.mvc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import teamproject.mvc.vo.BoardVO;
import teamproject.mvc.vo.CategoryVO;
import teamproject.mvc.vo.ProductsVO;

import java.util.List;
import java.util.Map;

@Repository("pddao")
public class ProductsDAOImpl implements ProductsDAO {

    @Autowired
    private SqlSession sqlSession;

    // 제품 갯수 읽어오기
    @Override
    public int selectCountProducts(String target) {
        return sqlSession.selectOne("Products.countProducts", target);
    }

    // 제품 목록 읽어오기
    @Override
    public List<ProductsVO> selectProductsList(Map param) {
        return sqlSession.selectList("Products.ProductsList", param); }

    @Override
    public ProductsVO selectProductsOne(String pno) {
        return sqlSession.selectOne("Products.ProductsOne", pno);
    }

    // 카테고리 대분류 읽어오기
    @Override
    public List<CategoryVO> selectCateList() {
        return sqlSession.selectList("Products.cateList");
    }

    // 카테고리 전체 읽어오기
    @Override
    public List<CategoryVO> selectCateAll() {
        return sqlSession.selectList("Products.cateAll");
    }

    @Override
    public String selectCatename(String target) {
        return sqlSession.selectOne("Products.cateName", target);
    }

    // 5 - 재선
    @Override // 기획전 list 출력
    public List<BoardVO> selectPlanned() {
        return sqlSession.selectList("Products.plannedList");
    }

    @Override // 기획전, 노하우 상세 (bno로만 조회하기 때문에 한개의 메서드로만 구현)
    public BoardVO selectOneEvent(String bno) {
        return sqlSession.selectOne("Products.EventView",bno);
    }

    @Override
    public List<BoardVO> selectKnowHow() {
        return sqlSession.selectList("Products.knowhowList");
    }

    @Override
    public BoardVO selectOneKnowHow(String bno) {
        return sqlSession.selectOne("Products.knowhowView",bno);
    }

    @Override
    public List<BoardVO> selectEvent(String bno) {
        return sqlSession.selectList("Products.eventList",bno);
    }

    @Override
    public int countProductEvent(String bno) {
        return sqlSession.selectOne("Products.countEvent",bno);

    }



// Step 3


}
