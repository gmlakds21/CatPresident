package teamproject.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import teamproject.mvc.service.MembersService;
import teamproject.mvc.service.MypageService;
import teamproject.mvc.vo.CatVO;
import teamproject.mvc.vo.MembersVO;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Member;

@Controller
public class MypageController {

    @Autowired
    private MypageService mysrv;

    // 마이페이지 메인페이지
    @GetMapping("/mypage/main")
    public ModelAndView main(ModelAndView mv, HttpSession sess) {
        MembersVO mvo = (MembersVO) sess.getAttribute("user");
        mv.addObject("cats", mysrv.catList(mvo.getUno()));
        mv.setViewName("mypage/main.tiles");
        return mv;
    }

    @GetMapping("/mypage/update")
    public ModelAndView update(ModelAndView mv, HttpSession sess) {

        mv.addObject("user", sess.getAttribute("user"));
        mv.setViewName("mypage/update.tiles");

        return mv;
    }
/*
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
 */

    // 고양이 정보 등록 페이지
    @GetMapping("/mypage/pet_add")
    public ModelAndView newCat(ModelAndView mv) {
        mv.addObject("kinds", mysrv.readSpecies());
        mv.setViewName("mypage/pet_add.tiles");
        return mv;
    }

    // 고양이 정보 등록
    @PostMapping("/mypage/pet_add")
    public String newCatOK(CatVO cvo, HttpSession sess) {
        String returnPage = "redirect:/mypage/pet_add";
        if (mysrv.newCat(cvo, sess) > 0 )
            returnPage = "redirect:/mypage/main";
        return returnPage;
    }



}
