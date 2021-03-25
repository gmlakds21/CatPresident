package teamproject.mvc.dao;


import teamproject.mvc.vo.BoardVO;
import teamproject.mvc.vo.CategoryVO;
import teamproject.mvc.vo.ProductsVO;

import java.util.List;
import java.util.Map;

public interface ProductsDAO {
    
    // 카테고리 대분류 읽어오기
    List<CategoryVO> selectBigCategory();

    // 카테고리 전체 읽어오기
    List<CategoryVO> selectCategoryList();

    // 카테고리 타이틀 읽어오기
    String selectCategoryCatename(String target);

    // 기획전, 노하우 게시물 리스트 읽어오기
    List<BoardVO> selectBoardList(String bgroup);

    // 기획전, 노하우 게시물 읽어오기
    BoardVO selectBoardOne(String bno);

    // 기획전, 노하우 제품 리스트 읽어오기
    String selectBoardProducts(String bno);

    // 제품 목록 읽어오기
    List<ProductsVO> selectProductsList(Map param);

    // 제품 갯수 읽어오기
    int selectCountProducts(String target);

    // 제품 하나 읽어오기
    ProductsVO selectProductsOne(String pno);
}
