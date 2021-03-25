package teamproject.mvc.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


import java.util.List;

@Controller
public class CompanyController {

    @Autowired
    private SqlSession session;

//    // 테스트용
//    @GetMapping("/test/test")
//    public String TEST() {
//        String target = "select pno, totprice from Products where totprice < 2000";
//        List<String> pnos = session.selectList("Products.TEST", target);
//        String result = "";
//        for ( String pno : pnos ) {
//            result = result +","+pno;
//        }
//        System.out.println(result);
//        return
//    }

    // 메인 페이지
    @GetMapping("/")
    public String MainPage() {
        return "company/main.tiles";
    }

    // 7가지 가치
    @GetMapping("/company/value7")
    public String Value7() {
        return "company/value7.tiles";
    }

    // 신선한 사료&간식
    @GetMapping("/company/fresh")
    public String Fresh() {
        return "company/fresh.tiles";
    }

    // 오늘 배송
    @GetMapping("/company/today")
    public String Today() {
        return "company/today.tiles";
    }

    // 무료 배송
    @GetMapping("/company/free")
    public String Free() {
        return "company/free.tiles";
    }

    // 이용약관
    @GetMapping("/company/clause")
    public String Clause() {
        return "company/clause.tiles";
    }

    // 개인 정보
    @GetMapping("/company/personal")
    public String Personal() {
        return "company/personal.tiles";
    }
}
