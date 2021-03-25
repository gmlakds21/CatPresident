package teamproject.mvc.service;

import teamproject.mvc.vo.CatSpeciesVO;
import teamproject.mvc.vo.CatVO;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface MypageService {

    // 고양이 리스트 읽어오기
    List<CatVO> readCatList(String uno);

    // 고양이 품종 읽어오기
    List<CatSpeciesVO> readSpeciesList();

    // 고양이 이름 중복 체크
    String checkCat(CatVO cvo);

    // 고양이 정보 등록
    boolean addNewCat(CatVO cvo, HttpSession sess);

    // 고양이 정보 읽어오기
    CatVO readCatOne(String catno);

    // 고양이 정보 수정
    int modifyCatOnt(CatVO cvo);
}
