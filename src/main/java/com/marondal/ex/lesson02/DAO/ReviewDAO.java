package com.marondal.ex.lesson02.DAO;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.marondal.ex.lesson02.model.Review;

@Repository
public interface ReviewDAO {

	public Review selectReview(@Param("id")int id);
	
	public int insertReview(@Param("storeName")int storeName
			, @Param("menu")String menu
			, @Param("userName")String userName
			, @Param("point")double point
			, @Param("review")String review);
	
	public int insertReviewAsObject(Review Review);
}
