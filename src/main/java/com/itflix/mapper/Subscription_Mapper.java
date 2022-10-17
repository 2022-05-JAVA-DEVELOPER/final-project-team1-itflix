package com.itflix.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.itflix.dto.Subscription;
import com.itflix.dto.Ticket;

@Mapper
public interface Subscription_Mapper {
	
	//전체 구독자리스트
	@Select("select * from Subscription order by s_no ASC")
	@ResultMap("SubscriptionResultMap")
	public List<Subscription> selectListAll();
	
	//구독시작날짜 찾기
	@Select("select * from Subscription where u_email = #{u_email}")
	public Subscription selectByStDate(String u_email);
	
	//구독만료날짜 찾기
	@Select("select * from Subscription where u_email = #{u_email}")
	public Subscription selectByEndDate(String u_email);
	
	//구독자 단일 찾기
	@Select("select * from Subscription where u_email = #{u_email}")
	
	public Subscription selectByNo(String u_email);
	
	//구독권 추가
	@Insert("insert into Subscription VALUES (#{s_no}, sysdate, sysdate+30, #{s_cardName}, #{s_cardNumber}, #{t_no}, #{u_email}")
	@SelectKey(statement = "select SUBSCRIPTION_S_NO_SEQ.nextval from dual", keyProperty = "s_no",before = true, resultType = Integer.class)
	public Subscription insertSubscription(Subscription subscription);
	
	//구독권 업데이트
	@Update("update subscription set s_start=sysdate, s_end=sysdate+30, s_cardName=#{s_cardName}, s_cardNumber=#{s_cardNumber}, t_no=#{t_no} where u_email=#{u_email}")
	@ResultMap("SubscriptionWithUpdate")
	public Subscription updateSubscription(Date s_start, Date s_end, String s_cardName, int s_cardNumber, Ticket ticket, String u_email);
	//public Subscription updateSubscription(int t_no, String u_email);
	
	//구독권 구매자 찾기
	@Select("select u_email from Subscription where t_no = #{t_no}")
	public Subscription selectBuyTicket(int t_no);
}