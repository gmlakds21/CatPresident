package teamproject.mvc.dao;

import teamproject.mvc.vo.CatSpeciesVO;
import teamproject.mvc.vo.CatVO;
import teamproject.mvc.vo.MembersVO;
import teamproject.mvc.vo.ZipCodeVO;

import java.util.List;

public interface MembersDAO {

// 1 - 현우
    int insertMember(MembersVO mvo);

    List<ZipCodeVO> selectZipCode(String dong);

    int selectOneUserid(String email);

    int insertCatMember(CatVO cvo);

    Object selectUserId(String email);

    MembersVO selectLogin(MembersVO mvo);

    List<CatSpeciesVO> selectCateList();

    int updateUser(MembersVO mvo);
}
