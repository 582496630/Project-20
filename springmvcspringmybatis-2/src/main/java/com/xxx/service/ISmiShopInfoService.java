package com.xxx.service;

import java.util.List;

import com.xxx.controller.valueobject.ShopVO;
import com.xxx.model.Shop;

public interface ISmiShopInfoService {

	// 添加增加商品的方法
	public ShopVO addShop(ShopVO shopVO);

	// 查找增加商品的方法
	public List<Shop> selectShop(Shop shop);

	// 根据id查找，用于更新时获取现有的值
	public List<Integer> selectByIdShop(Integer id);

	// 更改增加商品的方法
	public ShopVO updateShop(ShopVO shopVO);

	// 删除一个商品的方法
	public void deleteShop(Integer id);

	// 批量删除
	public void deleteAllShop(List<Integer> shopIdList);

}
