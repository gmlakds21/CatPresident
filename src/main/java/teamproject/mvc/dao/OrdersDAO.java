package teamproject.mvc.dao;

import teamproject.mvc.vo.CategoryVO;
import teamproject.mvc.vo.MembersVO;
import teamproject.mvc.vo.ProductsVO;

import java.util.List;

public interface OrdersDAO {

    // 현재의 장바구니설정 불러오기
    MembersVO selectBuylist(String uno);

    int updateBuyamount(MembersVO mvo);

    List<CategoryVO> selectCategory();

    List<ProductsVO> selectPrdBrand();
}
