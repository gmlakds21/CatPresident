package teamproject.mvc.service;

import teamproject.mvc.vo.CategoryVO;
import teamproject.mvc.vo.ProductsVO;

import java.util.List;

public interface OrdersService {

    String addBuylist(ProductsVO pvo, String uno);

    List<ProductsVO> readbuylist(String uno);

    List<CategoryVO> readCategory();

    List<ProductsVO> readProduct();
}
