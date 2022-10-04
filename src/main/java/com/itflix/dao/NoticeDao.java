package com.itflix.dao;

import java.util.List;

import com.itflix.dto.Notice;

public interface NoticeDao {
	
	//공지사항 전체 출력
	List<Notice> selectAll() throws Exception;
	//공지사항 전체 갯수 출력
	int totalCount() throws Exception;
	//가장 최신 공지사항 1개 출력 
	Notice noticeOne()throws Exception;
	//공지사항 번호로 검색
	Notice selectByNo(int n_no) throws Exception;
	//공지사항 이름으로 검색
	List<Notice> selectByTitle(String n_title) throws Exception;
	
	/**************구현 미정**************/
	//공지사항 추가
	int insertNotice(Notice notice) throws Exception;
	//공지사항 변경 
	int updateNotice(Notice notice) throws Exception;
	//공지사항 삭제
	int deleteNotice(int n_no) throws Exception;
	/**************구현 미정**************/

}
