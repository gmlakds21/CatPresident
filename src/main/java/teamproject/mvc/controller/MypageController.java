package teamproject.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import teamproject.mvc.service.MembersService;
import teamproject.mvc.vo.CatVO;

import javax.servlet.http.HttpSession;

@Controller
public class MypageController {

    @Autowired
    private MembersService mysrv;

    @GetMapping("/mypage/add-pet") // 고양이 정보 등록 페이지 뷰
    public ModelAndView addpet(HttpSession sess) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("UID", sess.getAttribute("UID"));
        mv.addObject("kinds", mysrv.readSpecies());
        mv.setViewName("mypage/add-pet.tiles");
        return mv;
    }

    @PostMapping("/mypage/add-pet") // 고양이 정보 등록
    public String addpetOK(CatVO cvo, RedirectAttributes rds) {
        String returnPage2;
        mysrv.newCatMember(cvo);
        rds.addFlashAttribute("cvo", cvo); // 양식에서 입력받은 값을 서버에 전송.
        returnPage2 = "redirect:/mypage";
        return returnPage2;
    }



}
