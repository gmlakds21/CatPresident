package teamproject.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import teamproject.mvc.dao.MembersDAO;

@Service("mysrv")
public class MypageServiceImpl implements MypageService {

    @Autowired
    private MembersDAO mydao;




}
