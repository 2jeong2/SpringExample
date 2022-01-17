package com.marondal.ex.lesson02.BO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marondal.ex.lesson02.Dao.UsedGoodsDAO;
import com.marondal.ex.lesson02.model.UsedGoods;

@Service
public class usedGoodsBO {

	@Autowired
	
	private UsedGoodsDAO UsedGoodsDAO;
	
	public List<UsedGoods> getUsedGoodsList() {
		return UsedGoodsDAO.selectUsedGoods();
		
	}
	
	
	
}
