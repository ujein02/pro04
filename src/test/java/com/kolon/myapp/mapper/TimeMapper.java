package com.kolon.myapp.mapper;

import org.apache.ibatis.annotations.Select;

public interface TimeMapper {
	@Select("SELECT to_char(sysdate,'YYYY-MM-DD HH:mm:ss') FROM dual")
	public String getTime1();

}
