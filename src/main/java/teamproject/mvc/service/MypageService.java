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

    // 고양이 이름 중복 체크
    String checkCat(CatVO cvo);

    // 고양이 정보 등록
    boolean newCat(CatVO cvo, HttpSession sess);

    // 고양이 정보 불러오기
    CatVO readOneCat(String catno);

    // 고양이 정보 수정
    int modifyCat(CatVO cvo);
}
