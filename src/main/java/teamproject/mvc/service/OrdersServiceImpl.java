package teamproject.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import teamproject.mvc.dao.OrdersDAO;
import teamproject.mvc.vo.CategoryVO;
import teamproject.mvc.vo.MembersVO;
import teamproject.mvc.vo.ProductsVO;

import java.util.ArrayList;
import java.util.List;

@Service("odsrv")
public class OrdersServiceImpl implements OrdersService {

    @Autowired
    private OrdersDAO oddao;


    @Override
    public String addBuylist(ProductsVO pvo, String uno) {

        // 유저 정보에 buylist 추가
        MembersVO mvo = oddao.selectBuylist(uno);
        mvo.setBuylist( mvo.getBuylist()+","+pvo.getPno() );
        mvo.setBuyamounts( mvo.getBuyamounts()+","+pvo.getAmount() );

        // 추가된 정보 다시 업로드
        String result = "/";
        if( oddao.updateBuyamount(mvo) > 0 )
            result = "redirect:/Products/View?pno="+pvo.getPno();
        // 성공 새로고침 / 실패 메인페이지
        
        return result;
    }

    @Override
    public List<ProductsVO> readbuylist(String uno) {
        MembersVO mvo = oddao.selectBuylist(uno);;
        String[] mBuylist = (mvo.getBuylist()).split("[,]");
//      장바구니에 있는 제품 pno 의 목록 (gallery file 처럼)
//      3075, 3022, 3017, ...
        System.out.println("==> "+mvo.getBuylist());
        String[] mAmounts = (mvo.getBuyamounts()).split("[,]");
//      해당 제품 pno 의 갯수 ( `` )
//      1   , 2   , 3   , ...

        List<ProductsVO> buylist = new ArrayList<>();
        for(int i=0; i<mBuylist.length; i++) {
            // pno 를 가지고 productsVO 전체를 가져와서 담아야함
            ProductsVO pvo = new ProductsVO( mBuylist[i], mAmounts[i] );
            // 그런다음 amounts 를 set 으로 넣어야 함
            buylist.add(pvo);
        }

        return buylist;
    }



    @Override
    public List<CategoryVO> readCategory() {
        return oddao.selectCategory();
    }

    @Override
    public List<ProductsVO> readProduct() {
        return oddao.selectPrdBrand();
    }
}
