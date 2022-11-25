package com.kolon.service;

import java.util.List;

import com.kolon.dto.MemberDTO;

public interface MemberService {
	public List<MemberDTO> memberList() throws Exception;
	public MemberDTO getMember(String id) throws Exception;

}
