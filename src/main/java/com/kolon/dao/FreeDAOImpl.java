package com.kolon.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kolon.dto.FreeDTO;

@Repository
public class FreeDAOImpl implements FreeDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<FreeDTO> freeList() throws Exception {
		return sqlSession.selectList("free.freeList");
	}
	@Transactional
	@Override
	public FreeDTO freeDetail(int fno) throws Exception {
		sqlSession.update("free.visitCount",fno);
		return sqlSession.selectOne("free.freeDetail", fno);
	}

	@Override
	public void freeInsert(FreeDTO dto) throws Exception {
		sqlSession.insert("free.freeList", dto);
		
	}

	@Override
	public void freeDelete(int fno) throws Exception {
		sqlSession.delete("free.freeDelete", fno);
		
	}

	@Override
	public void freeEdit(FreeDTO dto) throws Exception {
		sqlSession.update("free.freeEdit",dto);
		
	}
	
	
	

}
