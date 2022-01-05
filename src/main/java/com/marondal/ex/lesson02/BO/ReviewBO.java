package com.marondal.ex.lesson02.BO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marondal.ex.lesson02.DAO.ReviewDAO;
import com.marondal.ex.lesson02.model.Review;

@Service
public class ReviewBO {

	@Autowired
	private ReviewDAO ReviewDAO;
	
	public Review getReview(int id) {
		return ReviewDAO.selectReview(id);
		
	}
	
	public int addReview(int storeName,String menu,String userName, double point, String review) {
		return ReviewDAO.insertReview(storeName, menu, userName, point, review);
	}
	
	public int addReview_2(Review Review) {
		return ReviewDAO.insertReviewAsObject(Review);
	}
}
