package com.goldenPig.member.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.member.domain.MemberVO;
import com.goldenPig.mybatis.config.MyBatisConfig;


public class MemberDAO {
	public SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	회원가입
	public void join(MemberVO memberVO) {
		sqlSession.insert("member.join", memberVO);
	}
	
//	아이디 중복검사
	public boolean checkId(String memberEmail) {
		return sqlSession.selectOne("member.checkId", memberEmail) != null;
	}
	
// 핸드폰 중복검사
	public boolean checkPhoneNumber(String memberPhoneNumber) {
		return sqlSession.selectOne("member.checkPhoneNumber", memberPhoneNumber) != null;
	}
	
//	로그인
	public Long login(String memberEmail, String memberPassword) {
		Map<String, String> loginMap = new HashMap<String, String>();
		loginMap.put("memberEmail", memberEmail);
		loginMap.put("memberPassword", memberPassword);
		return sqlSession.selectOne("member.login", loginMap);
	}
	
// 조회
	public MemberVO select(Long memberId) {
		return sqlSession.selectOne("member.select", memberId);
	}
	
// 이메일 수정
	public void updateEmail(Long memberId, String memberEmail) {
		Map<String, Object> emailMap = new HashMap<String, Object>();
		emailMap.put("memberId", memberId);
		emailMap.put("memberEmail", memberEmail);
		sqlSession.selectOne("member.updateEmail", emailMap);
	}
	
// 핸드폰번호 수정
	public void updatePhoneNumber(Long memberId, String memberPhoneNumber) {
		Map<String, Object> phoneMap = new HashMap<String, Object>();
		phoneMap.put("memberId", memberId);
		phoneMap.put("memberPhoneNumber", memberPhoneNumber);
		sqlSession.selectOne("member.updatePhoneNumber", phoneMap);
	}
	
// 비밀번호 수정
	public void updatePassword(Long memberId, String memberPassword) {
		Map<String, Object> passwordMap = new HashMap<String, Object>();
		passwordMap.put("memberId", memberId);
		passwordMap.put("memberPassword", memberPassword);
		sqlSession.selectOne("member.updatePassword", passwordMap);
	}
	
//	핸드폰번호로 유저의 아이디 찾기
	public Long findMemberId(String memberPhoneNumber, String memberName) {
		Map<String, String> idMap = new HashMap<String, String>();
		idMap.put("memberPhoneNumber", memberPhoneNumber);
		idMap.put("memberName", memberName);
		return sqlSession.selectOne("member.findMemberId", idMap);
	}
	
//	이메일 찾기
	public String findEmail(long memberId) {
		return sqlSession.selectOne("member.findEmail", memberId);
	}
	
//	회원탈퇴
	public void withdrawal(long memberId) {
		sqlSession.selectOne("member.withdrawal", memberId);
	}
	
}