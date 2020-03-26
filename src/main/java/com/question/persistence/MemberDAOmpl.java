package com.question.persistence;


import com.question.domain.MemberVO;
import lombok.extern.log4j.Log4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;

@Log4j
@Repository
public class MemberDAOmpl implements MemberDAO {

    @Inject
    private SqlSession sqlSession;

    private static final String namespace = "com.question.mapper.MemberMapper";
    private static final String namespace2 = "com.question.mapper.GroupMapper";

    @Override
    public List<MemberVO> findId(MemberVO vo) {
        // TODO Auto-generated method stub
        log.info("아이디 찾기 dao 진입");
        log.info(vo.toString());
        return sqlSession.selectList(namespace + ".findId" , vo);

    }

    @Override
    public List<MemberVO> findPw(MemberVO vo) {
        // TODO Auto-generated method stub
        log.info("비밀번호 찾기 dao 진입");
        log.info(vo.toString());
        return sqlSession.selectList(namespace + ".findPw" , vo);
    }

    @Override
    public void mypageInformation2(MemberVO vo) {
        log.info("회원 수정 진입");
        log.info(vo.toString());
        sqlSession.update(namespace2 + ".mypageInformation2", vo);

    }
}
