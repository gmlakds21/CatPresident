package teamproject.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import teamproject.mvc.dao.ProductsDAO;
import teamproject.mvc.vo.BoardVO;
import teamproject.mvc.vo.CategoryVO;
import teamproject.mvc.vo.ProductsVO;

import java.util.*;


@Service("pdsrv")
public class ProductsServiceImpl implements ProductsService {

    @Autowired
    private ProductsDAO pddao;

    // 2 - 창욱
    @Override
    public List<ProductsVO> readCategoryProducts() {
        return null;
    }


// 4 - 승희

    @Override // 제품 갯수 읽어오기
    public int countProducts(String target) {
        return pddao.selectCountProducts(target);
    }

    @Override // 제품 리스트 읽어오기
    public List<ProductsVO> readProductsList(String cp, String target) {
        Map<String, String> param = new HashMap<>();
        String snum = String.valueOf((Integer.parseInt(cp)-1)*30);
        param.put("snum", snum);
        param.put("target", target);
        return pddao.selectProductsList(param);
    }

    @Override // 제품 하나 읽어오기
    public ProductsVO readProductOne(String pno) {
        return pddao.selectProductsOne(pno);
    }

    @Override // 카테고리 대분류 읽어오기
    public List<CategoryVO> readCategory() {
        return pddao.selectCateList();
    }

    @Override // 카테고리 전체 읽어오기
    public List<CategoryVO> readCateAll() {
        return pddao.selectCateAll();
    }

    @Override // 카테고리 명 읽어오기
    public String readcatename(String target) {
        return pddao.selectCatename(target);
    }

    // 기획전, 노하우 게시물 리스트 읽어오기
    @Override
    public List<BoardVO> readBoardList(String bgroup) {
        return pddao.selectBoardList(bgroup);
    }

    // 기획전, 노하우 게시물 읽어오기
    @Override
    public BoardVO readBoardOne(String bno) {
        return pddao.selectBoardOne(bno);
    }

    // 기획전, 노하우 제품 리스트 읽어오기
    @Override
    public List<ProductsVO> readBoardProducts(String bno) {
        String[] pnos = (pddao.selectBoardProducts(bno)).split("[,]");
        List<ProductsVO> pvos = new ArrayList<>();
        for (String pno : pnos) {
            pvos.add(pddao.selectProductsOne(pno));
        }
        return pvos;
    }


    @Override
    public List<BoardVO> readKnowHow() {
        return pddao.selectKnowHow();
    }


    @Override
    public BoardVO readOneKnowView(String bno) {
        return pddao.selectOneKnowHow(bno);
    }

    @Override
    public List<BoardVO> readEvent(String bno) {
        return pddao.selectEvent(bno);
    }

    @Override
    public int countEvent(String bno) {
        return pddao.countProductEvent(bno);
    }

}
