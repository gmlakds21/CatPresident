package teamproject.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import teamproject.mvc.service.ProductsService;

@Controller
public class ProductsController {

    @Autowired
    private ProductsService pdsrv;

    // 메인 페이지
    @GetMapping("/")
    public String MainPage() {
        return "products/MainPage.tiles";
    }

    // 카테고리 페이지
    @GetMapping("/category/page")
    public ModelAndView Category(ModelAndView mv) {
        mv.setViewName("products/category_page.tiles");
        mv.addObject("cates", pdsrv.readBigCategory());
        return mv;
    }

    // 카테고리 리스트
    @GetMapping("/category/list")
    public ModelAndView CategoryList(ModelAndView mv, String cate, String order, String cp) {
        mv.setViewName("products/category_list.tiles");
        // 카테고리 목록
        mv.addObject("cates",pdsrv.readCategoryList());

        // 카테고리 타이틀
        mv.addObject("ct_title", pdsrv.readCategoryCatename(cate));

        // 조건 정리
        String need1 = pdsrv.categoryNeed(cate);
        String need2 = pdsrv.orderNeed(order);
        String target = need1 + need2;

        mv.addObject("PDs", pdsrv.readProductsList(cp, target));
        mv.addObject("PDCount", pdsrv.readCountProducts(target));

        return mv;
    }

    // 기획전 페이지
    @GetMapping("/planned/page")
    public ModelAndView plannedPage(ModelAndView mv) {
        mv.setViewName("products/planned_page.tiles");
        mv.addObject("BDs", pdsrv.readBoardList("1"));
        return mv;
    }

    // 기획전 리스트
    @GetMapping("/planned/list")
    public ModelAndView plannedList(ModelAndView mv,String bno) {
        mv.setViewName("products/planned_list.tiles");
        mv.addObject("BD", pdsrv.readBoardOne(bno));
        mv.addObject("PDs",pdsrv.readBoardProducts(bno));
        mv.addObject("PDCount",pdsrv.readBoardProducts(bno).size());
        return mv;
    }

    // 노하우 페이지
    @GetMapping("/knowHow/page")
    public ModelAndView knowHowPage(ModelAndView mv)  {
        mv.setViewName("products/knowHow_page.tiles");
        mv.addObject("BDs", pdsrv.readBoardList("2"));
        return mv;
    }

    // 노하우 리스트
    @GetMapping("/knowHow/list")
    public ModelAndView knowHowList(ModelAndView mv,String bno) {
        mv.setViewName("products/knowHow_list.tiles");
        mv.addObject("BD", pdsrv.readBoardOne(bno));
        mv.addObject("PDs",pdsrv.readBoardProducts(bno));
        mv.addObject("PDCount",pdsrv.readBoardProducts(bno).size());
        return mv;
    }

    // 오늘의 딜 리스트
    @GetMapping("/today's/list")
    public ModelAndView TodayDealsList(ModelAndView mv) {
        mv.setViewName("products/list_today.tiles");
        mv.addObject("cates", pdsrv.readBigCategory());
        mv.addObject("PDs", pdsrv.readBoardProducts("2"));
        mv.addObject("PDCount", pdsrv.readBoardProducts("2").size());
        return mv;
    }

    // 랭킹 리스트
    @GetMapping("/best/list")
    public ModelAndView BestProductsList(ModelAndView mv, String cate, String order) {
        mv.setViewName("products/list_best.tiles");

        // 조건 정리
        String need1 = pdsrv.categoryNeed(cate);
        String need2 = pdsrv.orderNeed(order);
        String target = need1 + need2;

        mv.addObject("cates", pdsrv.readBigCategory());
        mv.addObject("PDs", pdsrv.readProductsList("1", target));
        mv.addObject("PDCount", pdsrv.readProductsList("1", target).size());
        return mv;
    }

    // 신상품 리스트
    @GetMapping("/recent/list")
    public ModelAndView RecentProductList(ModelAndView mv, String where, String order, String cp) {
        mv.setViewName("products/list_recent.tiles");

        // 조건 정리
        String need1 = pdsrv.whereNeed(where);
        String need2 = pdsrv.orderNeed(order);
        String target = need1 + need2;

        mv.addObject("cates", pdsrv.readBigCategory());
        mv.addObject("PDs", pdsrv.readProductsList(cp, target));
        mv.addObject("PDCount", pdsrv.readCountProducts(need1));
        return mv;
    }

    // 스티커 리스트
    @GetMapping("/sticker/list")
    public ModelAndView StickerShopList(ModelAndView mv, String cate, String order, String cp) {
        mv.setViewName("products/list_sticker.tiles");

        // 조건 정리
        String need1 = pdsrv.categoryNeed(cate);
        String need2 = pdsrv.orderNeed(order);
        String target = need1 + need2;

        mv.addObject("cates", pdsrv.readBigCategory());
        mv.addObject("PDs", pdsrv.readProductsList(cp, target));
        mv.addObject("PDCount", pdsrv.readCountProducts(need1));
        return mv;
    }

    // 제품 검색
    @GetMapping("/find/list")
    public ModelAndView FindList (ModelAndView mv, String find, String cate, String order, String cp) {
        mv.setViewName("products/list_find.tiles");

        // 조건 정리
        String need1 = pdsrv.categoryNeed(cate);
        String need2 = "and pname like \'%"+find+"%\' ";
        String need3 = pdsrv.orderNeed(order);
        String target = need1 + need2 + need3;

        mv.addObject("cates", pdsrv.readBigCategory());
        mv.addObject("PDs", pdsrv.readProductsList(cp, target));
        mv.addObject("PDCount", pdsrv.readCountProducts(need1+need2));
        return mv;
    }

    // 제품 뷰 페이지
    @GetMapping("/products/view")
    public ModelAndView ProductsView(ModelAndView mv, String pno) {
        mv.setViewName("products/products_view.tiles");
        mv.addObject("PP", pdsrv.readProductOne(pno));
        // 리플은 미구현
        // mv.addObject("rp",pdsrv.readReply(pno));
        return mv;
    }
}

