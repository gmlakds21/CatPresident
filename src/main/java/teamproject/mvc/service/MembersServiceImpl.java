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
        return mbdao.checkUserid(email);
    }

    // 주소 검색
    @Override
    public String findZipCode(String dong) {
        ObjectMapper mapper = new ObjectMapper();
        String json = "";
        dong = "%" + dong + "%";
        try {
            json = mapper.writeValueAsString(mbdao.findZipCode(dong));
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return json;
    }

    // 신규 회원 등록
    @Override
    public int addNewMember(MembersVO mvo) {
        return mbdao.insertMember(mvo);
    }

    // 로그인
    @Override
    public String tryLogin(MembersVO mvo, HttpSession sess) {
        if (mbdao.selectMemberOne(mvo) == null) {
            mvo.setUno("X");
        } else {
            mvo = mbdao.selectMemberOne(mvo);
            sess.setAttribute("user", mvo);
        }
        return mvo.getUno();
    }



    ///////////////////////////////////////////////////////////////////////


    // 1 - 현우
    @Override
    public String findUserId(String email) {
        ObjectMapper mapper = new ObjectMapper();
        String json = "";
        email = email + "%";
        try {
            json = mapper.writeValueAsString(mbdao.checkUserid(email));
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




}
