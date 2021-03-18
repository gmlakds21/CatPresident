package teamproject.mvc.service;

import teamproject.mvc.vo.CatSpeciesVO;
import teamproject.mvc.vo.CatVO;
import teamproject.mvc.vo.MembersVO;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface MembersService {

    // 해당 아이디 존재 여부 확인
    int checkUserid(String email);

    // 주소 검색
    String findZipCode(String dong);

    // 신규 회원 등록
    int newMember(MembersVO mvo);

    // 로그인
    String tryLogin(MembersVO mvo, HttpSession sess);



    String newCatMember(CatVO cvo); // 고양이 새로 등록.

    String findUserId(String email);


    boolean modifyUser(MembersVO mvo);

    // 승희
    List<CatSpeciesVO> readSpecies();

}
