package com.marondal.ex.lesson02.Dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.marondal.ex.lesson02.model.Review;

@Repository
public interface ReviewDAO {

	public Review selectReview(@Param("id")int id);
}
