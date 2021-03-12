package teamproject.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import teamproject.mvc.service.ProductsService;

import javax.servlet.http.HttpSession;

@Controller
public class ProductsController {

    @Autowired
    private ProductsService pdsrv;

    @GetMapping("/")
    public String MainPage() {
        return "products/MainPage.tiles";
    }

    @GetMapping("/Today-Deals/list") // 오늘의 딜 리스트
    public ModelAndView TodayDealsList(ModelAndView mv, String cp) {
        mv.setViewName("products/List_TodayDeals.tiles");
        mv.addObject("cates", pdsrv.readCategory());
        mv.addObject("PPs", pdsrv.readProductsList(cp, "order by disco desc"));
        mv.addObject("PPcnt", pdsrv.countProducts(""));
        return mv;
    }

    @GetMapping("/Recent-Product/list") // 신상품 리스트
    public ModelAndView RecentProductList(ModelAndView mv, String cp) {
        mv.setViewName("products/List_RecentProduct.tiles");
        mv.addObject("cates", pdsrv.readCategory());
        mv.addObject("PPs", pdsrv.readProductsList(cp, "order by pno desc"));
        mv.addObject("PPcnt", pdsrv.countProducts(""));
        return mv;
    }

    @GetMapping("/Best-Products/list")  // 랭킹 리스트
    public ModelAndView BestProductsList(ModelAndView mv, String cp) {
        mv.setViewName("products/List_BestProduct.tiles");
        mv.addObject("cates", pdsrv.readCategory());
        mv.addObject("PPs", pdsrv.readProductsList(cp, "order by sales desc"));
        mv.addObject("PPcnt", pdsrv.countProducts(""));
        return mv;
    }

    @GetMapping("/StickerShop/list") // 스티커 리스트
    public ModelAndView StickerShopList(ModelAndView mv, String cp) {
        mv.setViewName("products/List_StickerShop.tiles");
        mv.addObject("cates", pdsrv.readCategory());
        mv.addObject("PPs", pdsrv.readProductsList(cp, "order by pno desc"));
        mv.addObject("PPcnt", pdsrv.countProducts(""));
        return mv;
    }

    @GetMapping("/CategoryPage") // 카테고리 페이지
    public ModelAndView Category(ModelAndView mv) {
        mv.setViewName("products/CategoryPage.tiles");
        mv.addObject("cates", pdsrv.readCategory());
        return mv;
    }

    @GetMapping("/Category/list") // 카테고리 리스트 페이지
    public ModelAndView CategoryList(ModelAndView mv, String cp, String cate) {
        mv.setViewName("products/CategoryList.tiles");
        // 왼쪽에 카테고리 목록
        mv.addObject("cates",pdsrv.readCateAll());

        // 타이틀 카테고리 명
        mv.addObject("ct_title", pdsrv.readcatename(cate));

        // 카테고리 목록
        String target = "where ctno = "+cate+"";
        if ((Integer.parseInt(cate) % 100) == 0) {
            target = "where ctno like \'"+cate.substring(0,2)+"%\'";
        }
        mv.addObject("PPs", pdsrv.readProductsList(cp, target));
        mv.addObject("PPcnt", pdsrv. countProducts(target));

        return mv;
    }

    @GetMapping("/Products/View") // 제품 뷰 페이지
    public ModelAndView ProductsView(ModelAndView mv, String pno) {
        mv.setViewName("products/ProductsView.tiles");
        mv.addObject("PP", pdsrv.readProductOne(pno));
        // 리플은 미구현
        // mv.addObject("rp",pdsrv.readReply(pno));
        return mv;
    }
    
//////////////////////////////////////////////////////////////////////////////////////////////////////



    // 5 - 재선
    @GetMapping("/Planned/list") // 기획전 list 출력
    public ModelAndView plannedList(ModelAndView mv) {
        mv.setViewName("products/PlannedList.tiles");
        mv.addObject("pls", pdsrv.readPlanned());

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

