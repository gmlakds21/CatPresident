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

    // 카테고리 대분류 읽어오기
    @Override
    public List<CategoryVO> selectBigCategory() {
        return sqlSession.selectList("Products.readBigCategory");
    }

    // 카테고리 전체 읽어오기
    @Override
    public List<CategoryVO> selectCategoryList() {
        return sqlSession.selectList("Products.readCategoryList");
    }

    // 카테고리 타이틀 읽어오기
    @Override
    public String selectCategoryCatename(String target) {
        return sqlSession.selectOne("Products.readCategoryCatename", target);
    }





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




    ///

    // 기획전, 노하우 게시물 리스트 읽어오기
    @Override
    public List<BoardVO> selectBoardList(String bgroup) {
        return sqlSession.selectList("Products.readBoardList", bgroup);
    }

    // 기획전, 노하우 게시물 읽어오기
    @Override
    public BoardVO selectBoardOne(String bno) {
        return sqlSession.selectOne("Products.readBoardOne", bno);
    }

    // 기획전, 노하우 제품 리스트 읽어오기
    @Override
    public String selectBoardProducts(String bno) {
        return sqlSession.selectOne("Products.readBoardProducts", bno);
    }












    // 5 - 재선


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
