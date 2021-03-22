package teamproject.mvc.dao;

import teamproject.mvc.vo.CatSpeciesVO;
import teamproject.mvc.vo.CatVO;
import teamproject.mvc.vo.MembersVO;

import java.util.List;

public interface MypageDAO {

    // 고양이 목록
    List<CatVO> selectCat(String uno);

    // 고양이 품종 불러오기
    List<CatSpeciesVO> selectCatSpecies();

    // 회원의 대표고양이 정보 수정
    int updateCatNo(MembersVO mvo);

    // 고양이 정보 등록
    int insertCat(CatVO cvo);

    // 고양이 번호 불러오기
    String selectCatNo(CatVO cvo);

    // 고양이 정보 불러오기
    CatVO selectOneCat(String catno);

    // 고양이 정보 수정
    int updateCat(CatVO cvo);

}
