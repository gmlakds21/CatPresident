package teamproject.mvc.service;

import teamproject.mvc.vo.CatSpeciesVO;
import teamproject.mvc.vo.CatVO;
import teamproject.mvc.vo.MembersVO;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface MembersService {

    // 아이디 중복 체크
    String checkUserid(String email);

    // 주소 찾기
    String findZipCode(String dong);

    // 신규 회원 등록
    int newMember(MembersVO mvo);



    String newCatMember(CatVO cvo); // 고양이 새로 등록.

    String findUserId(String email);

    boolean checkLogin(MembersVO mvo, HttpSession sess);

    boolean modifyUser(MembersVO mvo);

    // 승희
    List<CatSpeciesVO> readSpecies();



}
