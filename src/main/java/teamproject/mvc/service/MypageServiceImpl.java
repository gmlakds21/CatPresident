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

    // 고양이 목록
    @Override
    public List<CatVO> catList(String uno) {
        return mydao.selectCat(uno);
    }

    // 고양이 품종 불러오기
    @Override
    public List<CatSpeciesVO> readSpecies() {
        return mydao.selectCatSpecies();
    }

    // 고양이 이름 중복 체크
    @Override
    public String checkCat(CatVO cvo) {
        return mydao.selectCatNo(cvo);
    }

    // 고양이 정보 등록
    @Override
    public boolean newCat(CatVO cvo, HttpSession sess) {
        mydao.insertCat(cvo);

        // 대표 고양이 번호 지정
        if (cvo.getPrima().equals("Y")) {
            cvo.setPrima("N");
            String catno = mydao.selectCatNo(cvo);
            MembersVO mvo = (MembersVO) sess.getAttribute("user");
            mvo.setCatno(catno);
            mydao.updateCatNo(mvo);
        }

        return true;
    }

    // 고양이 정보 불러오기
    @Override
    public CatVO readOneCat(String catno) {
        return mydao.selectOneCat(catno);
    }

    // 고양이 정보 수정
    @Override
    public int modifyCat(CatVO cvo) {
        System.out.println(cvo.getCatname()+" "+cvo.getUno());
        return mydao.updateCat(cvo);
    }


}
