package com.kolon.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kolon.dto.MemberDTO;
import com.kolon.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	//의존성 주입
	@Autowired
	MemberService memberService;
	
	//member/list.do -> MemberService -> MemberDAO -> MyBatis(memberMapper) -> DB
	//localhost:8092/member/list.do
	
	@RequestMapping(value="list.do", method=RequestMethod.GET)
	public String memberList(Model model) throws Exception{
		List<MemberDTO> memberList = memberService.memberList();
		model.addAttribute("memberList", memberList);
		return "member/memberList";
	}
	
	//localhost:8092/member/getMember.do
	//@RequestMapping("getMember.do")

}
