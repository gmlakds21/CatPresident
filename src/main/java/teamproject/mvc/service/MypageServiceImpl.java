package teamproject.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import teamproject.mvc.dao.MembersDAO;
import teamproject.mvc.dao.MypageDAO;
import teamproject.mvc.vo.CatSpeciesVO;
import teamproject.mvc.vo.CatVO;
import teamproject.mvc.vo.MembersVO;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("mysrv")
public class MypageServiceImpl implements MypageService {

    @Autowired
    private MypageDAO mydao;

    // 고양이 품종 불러오기
    @Override
    public List<CatSpeciesVO> readSpecies() {
        return mydao.selectCatSpecies();
    }

    // 고양이 정보 등록
    @Override
    public int newCat(CatVO cvo, HttpSession sess) {
        cvo.setUno( ((MembersVO)sess.getAttribute("UID")).getUno() );
        return mydao.insertCat(cvo);
    }




}
