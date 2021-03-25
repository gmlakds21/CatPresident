package teamproject.mvc.service;

import teamproject.mvc.vo.BoardVO;
import teamproject.mvc.vo.CategoryVO;
import teamproject.mvc.vo.ProductsVO;

import java.util.List;

public interface ProductsService {

    // 카테고리 대분류 읽어오기
    List<CategoryVO> readBigCategory();

    // 카테고리 전체 읽어오기
    List<CategoryVO> readCategoryList();

    // 카테고리 타이틀 읽어오기
    String readCategoryCatename(String target);

    // 기획전, 노하우 게시물 리스트 읽어오기
    List<BoardVO> readBoardList(String bgroup);

    // 기획전, 노하우 게시물 읽어오기
    BoardVO readBoardOne(String bno);

    // 기획전, 노하우 제품 리스트 읽어오기
    List<ProductsVO> readBoardProducts(String bno);

    // 카테고리 조건 정리
    String categoryNeed(String cate);
    String whereNeed(String where);
    String orderNeed(String order);

    // 제품 리스트 읽어오기
    List<ProductsVO> readProductsList(String cp, String target);

    // 제품 갯수 읽어오기
    int readCountProducts(String target);

    // 제품 한개 읽어오기
    ProductsVO readProductOne(String pno);
}
