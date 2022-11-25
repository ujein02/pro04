package com.kolon.myapp;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.kolon.dto.SampleDTO;

public class LombokTest {
	private static final Logger logger = LoggerFactory.getLogger(LombokTest.class);

	@Test
	public void testLombok() {
		SampleDTO dto = new SampleDTO();
		dto.setName("김지은");
		dto.setAge(7);
		dto.setIq(80.2);
		
		logger.info(dto.toString());
	}
	

}
