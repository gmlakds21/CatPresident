package teamproject.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import teamproject.mvc.service.MembersService;
import teamproject.mvc.vo.MembersVO;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class MembersController {

    @Autowired
    private MembersService mbsrv;

    // 회원가입 1
    @GetMapping("/member/agree")
    public String newMemberAgree() {
        return "members/new_agree.tiles";
    }

    // 회원가입 2
    @GetMapping("/member/info")
    public String newMemberInfo() {
        return "members/new_info.tiles";
    }

    // 해당 아이디 중복검사  ID input -> distinct(uno)
    @GetMapping("/member/checkID")
    public void checkID(String email, HttpServletResponse res) {
        try {
            res.getWriter().print(mbsrv.checkUserid(email));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    // 주소 검색  dong -> address List
    @ResponseBody
    @GetMapping("/member/findZip")
    public void findZip(String dong, HttpServletResponse res) {
        try {
            res.setContentType("application/json; charset=UTF-8");
            res.getWriter().print(mbsrv.findZipCode(dong));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    // 신규 회원 등록
    @PostMapping("/member/info")
    public String newMemberInfoOK(MembersVO mvo, HttpSession sess) {
        String returnPage = "redirect:/member/info";
        if(mbsrv.addNewMember(mvo) > 0 ) {
            mbsrv.tryLogin(mvo, sess);
            returnPage = "redirect:/member/join";
        }
        return returnPage;
    }

    // 회원가입 3
    @GetMapping("/member/join")
    public String newMemberJoin() {
        return "members/new_join.tiles";
    }

    // 로그인
    @GetMapping("/member/login")
    public String login() {
        return "members/login.tiles";
    }

    @GetMapping("/member/loginOk")
    public void loginOk(MembersVO mvo, HttpSession sess, HttpServletResponse res) {
        try {
            res.getWriter().print(mbsrv.tryLogin(mvo, sess));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    // 로그아웃
    @GetMapping("/member/logout")
    public String logout(HttpSession sess) {
        // 세션객체를 서버에서 삭제.
        sess.invalidate();
        return "redirect:/";
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




        //  2 - 광표 장바구니
    @GetMapping("/basket3")
    public String basket() {
        return "members/basket.tiles";
    }
}

