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

import javax.servlet.http.HttpSession;

@Controller
public class MypageController {

    @Autowired
    private MypageService mysrv;

    // 고양이 정보 등록 페이지
    @GetMapping("/mypage/add-pet")
    public ModelAndView newCat(HttpSession sess) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("UID", sess.getAttribute("UID"));
        mv.addObject("kinds", mysrv.readSpecies());
        mv.setViewName("mypage/add-pet.tiles");
        return mv;
    }

    // 고양이 정보 등록
    @PostMapping("/mypage/add-pet")
    public String newCatOK(CatVO cvo, HttpSession sess) {
        String returnPage = "redirect:/mypage/add-pet";
        if (mysrv.newCat(cvo, sess) > 0 )
            returnPage = "redirect:/mypage/main";
//        rds.addFlashAttribute("cvo", cvo); // 양식에서 입력받은 값을 서버에 전송.
        return returnPage;
    }



}
