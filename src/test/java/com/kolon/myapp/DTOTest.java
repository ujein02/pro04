package com.kolon.myapp;

import static org.junit.Assert.*;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.kolon.dto.MemberDTO;

public class DTOTest {
	private static final Logger logger = LoggerFactory.getLogger(DTOTest.class);

	@Test
	public void testLombok() {
		MemberDTO dto = new MemberDTO();
		dto.setId("test");
		dto.setPw("1234");
		dto.setName("테스트");
		dto.setTel("010-1111-1111");
		dto.setAddr("고양시 일산동구");
		dto.setPt(5);
		dto.setRegdate("2022-11-23");
		
		logger.info(dto.toString());
	}

}
