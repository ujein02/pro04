package com.kolon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kolon.dao.BoardDAO;
import com.kolon.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO boardDao;

	@Override
	public List<BoardDTO> boardList() throws Exception {
		return boardDao.boardList();
	}

	@Override
	public BoardDTO boardDetail(int seq) throws Exception {
		// TODO Auto-generated method stub
		return boardDao.boardDetail(seq);
	}

	@Override
	public void boardInsert(BoardDTO dto) throws Exception {
		boardDao.boardInsert(dto);
		
	}

	@Override
	public void boardDelete(int seq) throws Exception {
		boardDao.boardDelete(seq);;
		
	}

	@Override
	public void boardEdit(BoardDTO dto) throws Exception {
		boardDao.boardEdit(dto);
		
	}

	
	

	
	
	
	
	
	
	

}
