package com.marondal.ex.lesson01;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/lesson01/ex01")
@RestController  //@Controller + @ResponseBody
public class ex01RestController {
	
	@RequestMapping("/3")
	public String printString() {
		return" restController테스트";
	}
	
	@RequestMapping("/4")
	public Data printData() {
		Data data = new Data();
		data.setId(10);
		data.setName("이정이");
		
		return data;
	}
	
	
	@RequestMapping("/5")
	public ResponseEntity<Data> entity(){
		Data data = new Data();
		data.setId(5);
		data.setName("이정이");
		
		ResponseEntity<Data> entity = new ResponseEntity<>(data, HttpStatus.INTERNAL_SERVER_ERROR);
		
		return entity; 
	}

}
