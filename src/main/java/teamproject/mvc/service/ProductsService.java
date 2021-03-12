package teamproject.mvc.service;

import teamproject.mvc.vo.BoardVO;
import teamproject.mvc.vo.CategoryVO;
import teamproject.mvc.vo.ProductsVO;

import java.util.List;

public interface ProductsService {

    // 2 - 창욱 (카테고리 + 로그인)
    List<ProductsVO> readCategoryProducts();

    // 제품 갯수 읽어오기
    int countProducts(String target);

    // 제품 리스트 읽어오기
    List<ProductsVO> readProductsList(String cp, String target);

    // 제품 한개 읽어오기
    ProductsVO readProductOne(String pno);

    // 카테고리 대분류 읽어오기
    List<CategoryVO> readCategory();

    // 카테고리 전체 읽어오기
    List<CategoryVO> readCateAll();

    // 카테고리 명 읽어오기
    String readcatename(String target);



    // 5 - 재선 (기획전 + 노하우)

    List<BoardVO> readPlanned();
    List<BoardVO> readKnowHow();
    BoardVO readOneEventView(String bno);
    List<BoardVO> readEvent(String bno);
    BoardVO readOneKnowView(String bno);

    int countEvent(String bno);



    // Step 3
    // 메인 페이지
    // 마이 페이지
    // 장바구니
    // 기획전 뷰 페이지
    // 노하우 뷰 페이지
    // ...
}
