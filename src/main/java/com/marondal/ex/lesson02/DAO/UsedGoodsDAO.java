package com.marondal.ex.lesson02.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.marondal.ex.lesson02.model.UsedGoods;

@Repository
public interface UsedGoodsDAO {
	
	public List<UsedGoods> selectUsedGoods();
		
	

}
