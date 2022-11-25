package com.kolon.dao;

import java.util.List;

import com.kolon.dto.FreeDTO;

public interface FreeDAO {
	public List<FreeDTO> freeList() throws Exception;
	public FreeDTO getFree(int fno) throws Exception;
	public void freeInsert(FreeDTO dto) throws Exception;

}
