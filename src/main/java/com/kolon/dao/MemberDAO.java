package com.kolon.dao;

import java.util.List;

import com.kolon.dto.MemberDTO;

public interface MemberDAO {
	public List<MemberDTO> memberList() throws Exception;
	public MemberDTO getMember(String id) throws Exception;

}
