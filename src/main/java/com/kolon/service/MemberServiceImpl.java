package com.kolon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kolon.dao.MemberDAO;
import com.kolon.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDAO memberDao;

	@Override
	public List<MemberDTO> memberList() throws Exception {
		return memberDao.memberList();
	}

	@Override
	public MemberDTO getMember(String id) throws Exception {
		return memberDao.getMember(id);
	}
	
	
	

}
