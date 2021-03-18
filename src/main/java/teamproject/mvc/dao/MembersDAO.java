package teamproject.mvc.dao;

import teamproject.mvc.vo.CatSpeciesVO;
import teamproject.mvc.vo.CatVO;
import teamproject.mvc.vo.MembersVO;
import teamproject.mvc.vo.ZipCodeVO;

import java.util.List;

public interface MembersDAO {

    // 해당 아이디 존재 여부 확인
    int countUserid(String email);

    // 주소 검색
    List<ZipCodeVO> selectZipCode(String dong);

    // 신규 회원 등록
    int insertMember(MembersVO mvo);

    // 로그인
    MembersVO selectLogin(MembersVO mvo);







// 1 - 현우


    int selectOneUserid(String email);

    int insertCatMember(CatVO cvo);



    List<CatSpeciesVO> selectCateList();

    int updateUser(MembersVO mvo);
}
