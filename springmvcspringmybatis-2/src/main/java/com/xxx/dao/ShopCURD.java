package com.xxx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

import com.xxx.controller.valueobject.ShopVO;
import com.xxx.model.Shop;

public interface ShopCURD {

	@Insert("INSERT INTO shop(shop_num,shop_name,shop_many) "
			+ "VALUES(#{shopNum},#{shopName},#{shopMany})")
	public int addShop(ShopVO shopVO);
	
	
	/*@Select("SELECT id,shop_num,shop_name,shop_many from shop")
	public List<Shop> selectShop(Shop shop);*/

	
	public List<Shop> selectShop(Shop shop);
	public List<Integer> selectByIdShop(Integer id);
	public void updateShop(ShopVO shopVO);
	public void deleteShop(Integer id);
	public void deleteAllShop(@Param("idList") List<Integer> idList);
}
