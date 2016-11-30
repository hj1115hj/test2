package org.kosta.alone.model.dao;

import java.util.List;

import org.kosta.alone.model.vo.ReviewVO;

public interface ReviewDAO {
	
	public List<ReviewVO> reviewList();

	public List<ReviewVO> reviewTitleSearchList(String searchKeyWord);

	public List<ReviewVO> reviewWriterSearchList(String searchKeyWord);

	

}