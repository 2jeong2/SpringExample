package com.marondal.ex.lesson05;

<<<<<<< HEAD
public class lesson05Controller {
	
	@Controller
=======
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class lesson05Controller {
	
	@GetMapping("/lesson05/ex01")
	public String ex01() {
		return "lesson05/ex01";
	}
	
	@GetMapping("/lesson05/ex02")
	public String ex02(Model model) {
		
		
		List<String> fruits = new ArrayList<>();
		fruits.add("apple");
		fruits.add("banana");
		fruits.add("melon");
		fruits.add("peach");
		fruits.add("grape");
		
		model.addAttribute("fruits",fruits);
		
		//회원정보
		
		List<Map<String,Object>> users = new ArrayList<>();
		Map<String , Object> map = new HashMap<>();
		map.put("name", "이정이");
		map.put("age", 22);
		map.put("hobby", "댄스");
		users.add(map);
		
		map = new HashMap<>();
		map.put("name", "김바다");
		map.put("age", 4);
		map.put("hobby", "사냥하기");
		users.add(map);
		
		model.addAttribute("users",users);
		
		
		return "lesson05/ex02";
	}
	
	@GetMapping("/lesson05/ex03")
	public String ex03() {
		return "lesson05/ex03";
	}
>>>>>>> d317f6f8752028ddde0555abeee1b889f10d4198

}
