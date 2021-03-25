package teamproject.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import teamproject.mvc.service.OrdersService;
import teamproject.mvc.vo.MembersVO;
import teamproject.mvc.vo.ProductsVO;

import javax.servlet.http.HttpSession;

@Controller
public class OrdersController {

    @Autowired
    private OrdersService odsrv;

    // 상세페이지에서 장바구니에 담기
    @PostMapping("/Products/View-Basket")
    public String View_Basket(ProductsVO pvo, HttpSession sess) {

        // UID 로 uno 어떻게 뽑지 ???
        MembersVO mvo = (MembersVO) sess.getAttribute("UID");
        String result = odsrv.addBuylist(pvo, mvo.getUno());
        return result;
    }

    // 상세페이지에서 주문페이지에 담기
    @PostMapping("/Products/View-Order")
    public String View_Order(ProductsVO pvo, HttpSession sess) {

        return "";
    }

    @GetMapping("/Order/Basket")
    public String Basket(ModelAndView mv, HttpSession sess) {

        MembersVO mvo = (MembersVO) sess.getAttribute("UID");
        mv.setViewName("orders/basket.tiles");
        mv.addObject("PPs",odsrv.readbuylist( mvo.getUno() ));
        System.out.println("==> "+odsrv.readbuylist( mvo.getUno() ).size());
        return "orders/basket.tiles";
    }

    @GetMapping("/Order/OrderView")
    public String OrderView() {

        return "";
    }

    @PostMapping("/Order/Basket-Order")
    public String Bakset_Order () {
        return "";
    }

    // 관리자페이지 확인용
    @GetMapping("/admin") // 상품 카테고리 가져오기.
    public ModelAndView admin() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("CATE", odsrv.readCategory());
        mv.addObject("PRD", odsrv.readProduct());
        mv.setViewName("orders/admin.tiles");
        return mv;
    }


    @GetMapping("/Order/view")
    public ModelAndView orderView(ModelAndView mv) {
        mv.setViewName("products/OrderView.tiles");

        return mv;
    }

}
