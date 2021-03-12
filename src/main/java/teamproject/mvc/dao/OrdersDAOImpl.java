package teamproject.mvc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import teamproject.mvc.vo.CategoryVO;
import teamproject.mvc.vo.MembersVO;
import teamproject.mvc.vo.ProductsVO;

import java.util.List;

@Repository("oddao")
public class OrdersDAOImpl implements OrdersDAO{

    @Autowired
    private SqlSession sqlSession;


    @Override
    public MembersVO selectBuylist(String uno) {
        return sqlSession.selectOne("Orders.downbuylist", uno);
    }

    @Override
    public int updateBuyamount(MembersVO mvo) {
        return sqlSession.update("Orders.upbuylist");
    }

    @Override
    public List<CategoryVO> selectCategory() {
        return sqlSession.selectList("Orders.cateList");
    }

    @Override
    public List<ProductsVO> selectPrdBrand() {
        return sqlSession.selectList("Orders.brandList");
    }
}
