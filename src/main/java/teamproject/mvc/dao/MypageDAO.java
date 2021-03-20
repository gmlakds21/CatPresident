package teamproject.mvc.dao;

import teamproject.mvc.vo.CatSpeciesVO;
import teamproject.mvc.vo.CatVO;

import java.util.List;

public interface MypageDAO {

    // 고양이 목록
    List<CatVO> selectCat(String uno);

    // 고양이 품종 불러오기
    List<CatSpeciesVO> selectCatSpecies();

    // 고양이 정보 등록
    int insertCat(CatVO cvo);

    // 고양이 정보 불러오기
    String selectOneCat(CatVO cvo);


}