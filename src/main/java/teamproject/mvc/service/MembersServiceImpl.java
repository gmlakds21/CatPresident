package teamproject.mvc.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import teamproject.mvc.dao.MembersDAO;
import teamproject.mvc.vo.CatSpeciesVO;
import teamproject.mvc.vo.CatVO;
import teamproject.mvc.vo.MembersVO;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service("mbsrv")
public class MembersServiceImpl implements MembersService {

    @Autowired
    private MembersDAO mbdao;

    // 해당 아이디 존재 여부 확인
    @Override
    public int checkUserid(String email) {
        return mbdao.countUserid(email);
    }

    // 주소 검색
    @Override
    public String findZipCode(String dong) {
        ObjectMapper mapper = new ObjectMapper();
        String json = "";
        dong = "%" + dong + "%";
        try {
            json = mapper.writeValueAsString(mbdao.selectZipCode(dong));
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return json;
    }

    // 신규 회원 등록
    @Override
    public int newMember(MembersVO mvo) {
        return mbdao.insertMember(mvo);
    }

    // 로그인
    @Override
    public String tryLogin(MembersVO mvo, HttpSession sess) {
        mvo = mbdao.selectLogin(mvo);
        if ((mvo.getUno()) != null) sess.setAttribute("UID", mvo);
        return mvo.getUno();
    }



    ///////////////////////////////////////////////////////////////////////


    // 1 - 현우
    @Override
    public String newCatMember(CatVO cvo) {
        String result = "회원가입 실패";
        int cnt = mbdao.insertCatMember(cvo);
        if (cnt > 0) result = "회원가입 성공";
        return result;
    }

    @Override
    public String findUserId(String email) {
        ObjectMapper mapper = new ObjectMapper();
        String json = "";
        email = email + "%";
        try {
            json = mapper.writeValueAsString(mbdao.countUserid(email));
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        return json;
    }

    @Override
    public boolean modifyUser(MembersVO mvo) {
        boolean isOk = false;
        int cnt = mbdao.updateUser(mvo);
        if (cnt > 0) {
            isOk = true;
            System.out.println("[" + cnt + "]");
            System.out.println("[" + isOk + "]");
        }
        return isOk;
    }


    @Override
    public List<CatSpeciesVO> readSpecies() {
        return mbdao.selectCateList();
    }


}
