package com.yedam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yedam.vo.MemberVO;

public interface MemberMapper {

	MemberVO memberList(@Param("id") String id, @Param("pw") String pw);
	
}
