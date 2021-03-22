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
        mv.addObject("cates", pdsrv.readCategory());
        return mv;
    }

    // 카테고리 리스트
    @GetMapping("/category/list")
    public ModelAndView CategoryList(ModelAndView mv, String cp, String cate) {
        mv.setViewName("products/category_list.tiles");
        // 왼쪽에 카테고리 목록
        mv.addObject("cates",pdsrv.readCateAll());

        // 타이틀 카테고리 명
        mv.addObject("ct_title", pdsrv.readcatename(cate));

        // 카테고리 목록
        String target = "where ctno = "+cate+"";
        if ((Integer.parseInt(cate) % 100) == 0) {
            target = "where ctno like \'"+cate.substring(0,2)+"%\'";
        }
        mv.addObject("PDs", pdsrv.readProductsList(cp, target));
        mv.addObject("PDcnt", pdsrv. countProducts(target));

        return mv;
    }

    // 오늘의 딜 리스트
    @GetMapping("/today's/list")
    public ModelAndView TodayDealsList(ModelAndView mv, String cp) {
        mv.setViewName("products/list_today.tiles");
        mv.addObject("cates", pdsrv.readCategory());
        mv.addObject("PDs", pdsrv.readProductsList(cp, "order by disco desc"));
        mv.addObject("PDcnt", pdsrv.countProducts(""));
        return mv;
    }

    // 신상품 리스트
    @GetMapping("/recent/list")
    public ModelAndView RecentProductList(ModelAndView mv, String cp) {
        mv.setViewName("products/list_recent.tiles");
        mv.addObject("cates", pdsrv.readCategory());
        mv.addObject("PDs", pdsrv.readProductsList(cp, "order by pno desc"));
        mv.addObject("PDcnt", pdsrv.countProducts(""));
        return mv;
    }

    // 랭킹 리스트
    @GetMapping("/best/list")
    public ModelAndView BestProductsList(ModelAndView mv, String cp) {
        mv.setViewName("products/list_best.tiles");
        /*
         * if (where != null)
         * target = "where" + (where);
         * if (order != null) {
         * target = target + "order by" + (order) + "desc";
         * } else {
         * target = target + "order by sales desc"
         */
        mv.addObject("cates", pdsrv.readCategory());
        mv.addObject("PDs", pdsrv.readProductsList(cp, "order by sales desc"));
        mv.addObject("PDcnt", pdsrv.countProducts(""));
        return mv;
    }

    // 스티커 리스트
    @GetMapping("/sticker/list")
    public ModelAndView StickerShopList(ModelAndView mv, String cp) {
        mv.setViewName("products/list_sticker.tiles");
        mv.addObject("cates", pdsrv.readCategory());
        mv.addObject("PDs", pdsrv.readProductsList(cp, "order by pno desc"));
        mv.addObject("PDcnt", pdsrv.countProducts(""));
        return mv;
    }





    // 제품 뷰 페이지
    @GetMapping("/Products/View")
    public ModelAndView ProductsView(ModelAndView mv, String pno) {
        mv.setViewName("products/ProductsView.tiles");
        mv.addObject("PP", pdsrv.readProductOne(pno));
        // 리플은 미구현
        // mv.addObject("rp",pdsrv.readReply(pno));
        return mv;
    }
    
//////////////////////////////////////////////////////////////////////////////////////////////////////



    // 5 - 재선
    @GetMapping("/planned/page") // 기획전 list 출력
    public ModelAndView plannedList(ModelAndView mv) {
        mv.setViewName("products/planned_page.tiles");
        mv.addObject("BDs", pdsrv.readPlanned());

        return mv;
    }

    @GetMapping("/Planned/view") // 기획전 상세
    public ModelAndView plannedView(ModelAndView mv,String bno) {
        mv.setViewName("products/PlannedView.tiles");
        mv.addObject("plview", pdsrv.readOneEventView(bno));
        mv.addObject("cnt",pdsrv.countEvent(bno));
        mv.addObject("prods",pdsrv.readEvent(bno));

        return mv;
    }

    @GetMapping("/Knowhow/list") // 노하우 list 출력
    public ModelAndView knowHowList(ModelAndView mv)  {

        mv.setViewName("products/KnowhowList.tiles");
        mv.addObject("knows", pdsrv.readKnowHow());

        return mv;
    }

    @GetMapping("/Knowhow/view") // 기획전 상세
    public ModelAndView knowhowView(ModelAndView mv,String bno) {
        mv.setViewName("products/KnowhowView.tiles");
        mv.addObject("knview", pdsrv.readOneEventView(bno));
        mv.addObject("cnt",pdsrv.countEvent(bno));
        mv.addObject("knprods",pdsrv.readEvent(bno));

        return mv;
    }

    @GetMapping("/Order/view")
    public ModelAndView orderView(ModelAndView mv) {
        mv.setViewName("products/OrderView.tiles");

        return mv;
    }

/* Step 3

    @GetMapping("/Products/View")
    public ModelAndView ProductsView( ) {
        ModelAndView mv = null;

        gsrv.readOneGallery(pdno)

        return mv;
    }
*/
}

