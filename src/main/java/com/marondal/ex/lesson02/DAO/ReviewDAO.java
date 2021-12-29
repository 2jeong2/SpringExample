package com.marondal.ex.lesson02.Dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.marondal.ex.lesson02.model.Review;

@Repository
public interface ReviewDAO {

	public Review selectReview(@Param("id")int id);
	
	public int insertReview(@Param("storeName")int storeId
			, @Param("menu")String menu
			, @Param("userName")String userName
			, @Param("point")double point
			, @Param("review")String review);
	
	public int insertReviewAsObject(Review review);
}
