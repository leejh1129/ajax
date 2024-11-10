package com.yedam.service;

import java.util.List;

import com.yedam.vo.MemberVO;

public interface MemberService {

	MemberVO memberList(String id, String pw);
	
}
