package org.kosta.alone.model.dao;

import java.util.List;
import java.util.Map;

import org.kosta.alone.model.vo.PagingBean;
import org.kosta.alone.model.vo.ReviewVO;

public interface ReviewDAO {
	
	public List<ReviewVO> reviewList(PagingBean pagingBean);
	
	public int getTotalContentCount();

	public List<ReviewVO> reviewTitleSearchList(Map<String, Object> map);

	public List<ReviewVO> reviewWriterSearchList(Map<String, Object> map);

	public void reviewBoardWrite(ReviewVO reviewVO);
	
	public void reviewWrite(ReviewVO reviewVO);


	public ReviewVO reviewDetail(int  boardNo);

	public int getTitleSearchContentCount(String searchKeyWord);
	
	public int getWriterSearchCount(String searchKeyWord);

	public void updateHit(int boardNo);
	
}