package com.marondal.ex.lesson02.BO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marondal.ex.lesson02.Dao.ReviewDAO;
import com.marondal.ex.lesson02.model.Review;

@Service
public class ReviewBO {

	@Autowired
	private ReviewDAO ReviewDAO;
	
	public Review getReview(int id) {
		return ReviewDAO.selectReview(id);
		
	}
	
	public int addReview(int storeName,String menu,String userName, double point, String review) {
		return ReviewDAO.insertReviewAsObject();
	}
}
