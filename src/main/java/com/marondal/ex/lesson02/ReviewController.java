package com.marondal.ex.lesson02;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.marondal.ex.lesson02.BO.ReviewBO;
import com.marondal.ex.lesson02.model.Review;

@RestController
public class ReviewController {
	
	
	@Autowired
	private ReviewBO ReviewBO;
	
	@RequestMapping("/lesson03/ex01")
	public Review ex02(
			//@RequestParam("id") int id
			//@RequestParam("name") int name
			@RequestParam(value="id", required=false, defaultValue="5")int id
			
			
			
			) {
		return ReviewBO.getReview(id);
	}
	
	@RequestMapping("/lesson03/ex02")
	public String ex02() {
		
		Review review = new Review();
		review.setStoreName(4);
		review.setMenu("뿌링클");
		review.setUserName("김바다");
		review.setPoint(4.0);
		review.setReview("역시 뿌링클은 진리 입니다!!");
		//4,"콤비네이션피자,김바다,4.5,
		
		int count = ReviewBO.addReview_2(review);
		return "입력 결과 : " + count;

	}

}
