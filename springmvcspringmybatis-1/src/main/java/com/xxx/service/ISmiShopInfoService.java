package com.xxx.service;

import java.util.List;

import com.xxx.controller.valueobject.ShopVO;
import com.xxx.model.Shop;
import com.xxx.model.SmiShopInfo;

/**
 * 影院店铺信息接口服务
 * 
 * @author author
 * @date 2016/02/16
 */
public interface ISmiShopInfoService {

	/**
	 * 根据店铺的编码和密码查询店铺信息
	 * @param shopNo 店铺编码
	 * @param password 密码
	 * @return 店铺信息
	 * @throws Exception 
	 */
	
	//添加增加商品的方法
	public ShopVO addShop(ShopVO shopVO);
	
	//查找增加商品的方法
	public List<Shop> selectShop(Shop shop);
	
	
	//更改增加商品的方法
	public ShopVO updateShop(ShopVO shopVO);
	
	//删除一个商品的方法
	public void deleteShop(Integer id);
}
