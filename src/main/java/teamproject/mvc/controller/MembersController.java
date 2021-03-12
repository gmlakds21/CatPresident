package teamproject.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import teamproject.mvc.service.MembersService;
import teamproject.mvc.vo.CatVO;
import teamproject.mvc.vo.MembersVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

@Controller
public class MembersController {

    @Autowired
    private MembersService mbsrv;

    // 1 - 현우
    @GetMapping("/members/sign-in")
    public String signIn() {
        return "members/sign-in.tiles";
    }

    @GetMapping("/members/logout") // 로그아웃 처리
    public String logout(HttpSession sess) {

        // 세션객체를 서버에서 삭제.
        sess.invalidate();

        return "redirect:/";
    }

    @GetMapping("/members/agree")
    public String newMemberAgree() {
        return "members/agree.tiles";
    }

    @GetMapping("/members/checkuid") // 아이디 중복검사
    public void checkuid(String email, HttpServletResponse res) {
        try {
            res.getWriter().print(mbsrv.checkUserid(email)); // email은 js의 중복검사값.
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @GetMapping("/members/joinme")
    public String newJoinme() {
        return "members/joinme.tiles";
    }


    @PostMapping("/members/joinme")
    public String newJoinmeOK(MembersVO mvo, RedirectAttributes rds) { // 양식에서 입력받은 값들을 mvo에 저장, 서버에 전송.
        System.out.println(mvo.getZipcode());

        String returnPage;
        mbsrv.newMember(mvo);
        rds.addFlashAttribute("mvo", mvo); // 양식에서 입력받은 값을 서버에 전송.
        returnPage = "redirect:/members/joinok";

        return returnPage;
    }

    @ResponseBody
    @GetMapping("/members/zipcode")
    public void zipcode(String dong, HttpServletResponse res) {
        try {
            res.setContentType("application/json; charset=UTF-8");
            res.getWriter().print(mbsrv.findZipCode(dong));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @GetMapping("/members/joinok")
    public String newJoinOK() {
        return "members/joinok.tiles";
    }

    @GetMapping("/members/add-pet") // 고양이 정보 등록 페이지 뷰
    public ModelAndView addpet(HttpSession sess) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("UID", sess.getAttribute("UID"));
        mv.addObject("kinds", mbsrv.readSpecies());
        mv.setViewName("members/add-pet.tiles");
        return mv;
    }

    @PostMapping("/members/add-pet") // 고양이 정보 등록
    public String addpetOK(CatVO cvo, RedirectAttributes rds) {
        String returnPage2;
        mbsrv.newCatMember(cvo);
        rds.addFlashAttribute("cvo", cvo); // 양식에서 입력받은 값을 서버에 전송.
        returnPage2 = "redirect:/mypage";
        return returnPage2;
    }

////////////////////////////////////////////////////////////////////////////////////////////////////////////



    @ResponseBody
    @GetMapping("/members/getuserid") // 회원정보 테이블에서 uno 값 추출
    public void getuserid(String email, HttpServletResponse res) {
        try {
            res.setContentType("application/json; charset=UTF-8");
            res.getWriter().print(mbsrv.findUserId(email));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @PostMapping("/login/login") // 로그인 처리
    public String loginok(MembersVO mvo, HttpSession sess) {
        String returnPage = "redirect:/login/loginfail";

        if (mbsrv.checkLogin(mvo, sess))
            returnPage = "redirect:/mypage/orders";

        return returnPage;
    }

    // 로그인실패 처리
    @GetMapping("/login/loginfail")
    public String fail() {
        return "redirect:/members/sign-in";
    }

    @GetMapping("/basket2")
    public String basket2() {
        return "members/basket2.tiles";
    }


    // 마이페이지

    @GetMapping("/mypage/orders") // 주문배송
    public String mypage() {
        return "members/mypage.tiles";
    }


    @GetMapping("/mypage/cs") // 고객센터
    public String cs() {
        return "members/cs.tiles";
    }

    @GetMapping("/mypage/mileage") // 마일리지
    public String mileage() {
        return "members/mileage.tiles";
    }


    @GetMapping("/mypage/stickers") // 스티커
    public String mystickers() {
        return "members/stickers.tiles";
    }

    @GetMapping("/mypage/frequent") // 자주구매
    public String frequent() {
        return "members/frequent.tiles";
    }


    @GetMapping("/mypage/wishlist") // 관심
    public String wishlist() {
        return "members/wishlist.tiles";
    }


    @GetMapping("/mypage/recentview") // 최근본
    public String recentview() {
        return "members/recentview.tiles";
    }


    @GetMapping("/mypage/update")
    public ModelAndView memberupdate(HttpSession sess) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("UID", sess.getAttribute("UID"));
        mv.setViewName("members/update.tiles");
        return mv;

    }

    @PostMapping("/mypage/update") // 회원정보 수정
    public String memberupdateok(MembersVO mvo) {
        String returnPage = "redirect:/mypage/fail";
        if (mbsrv.modifyUser(mvo))
            returnPage = "redirect:/mypage/orders";

        return returnPage;
    }



        //  2 - 광표 장바구니
    @GetMapping("/basket3")
    public String basket() {
        return "members/basket.tiles";
    }
}

