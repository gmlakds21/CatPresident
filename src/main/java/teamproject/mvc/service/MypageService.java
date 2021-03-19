package teamproject.mvc.service;

import teamproject.mvc.vo.CatSpeciesVO;
import teamproject.mvc.vo.CatVO;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface MypageService {

    // 고양이 리스트
    List<CatVO> catList(String uno);

    // 고양이 품종 불러오기
    List<CatSpeciesVO> readSpecies();

    // 고양이 정보 등록
    int newCat(CatVO cvo, HttpSession sess);

}
