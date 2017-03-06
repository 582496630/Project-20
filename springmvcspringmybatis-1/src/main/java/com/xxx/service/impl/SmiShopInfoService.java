package com.xxx.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xxx.controller.valueobject.ShopVO;
import com.xxx.dao.ShopCURD;
import com.xxx.model.Shop;
import com.xxx.model.SmiShopInfo;
import com.xxx.service.ISmiShopInfoService;

/**
 * 影院店铺信息接口服务实现
 * 
 * @author author
 * @date 2016/02/16
 */
@Service("smiShopInfoService")
public class SmiShopInfoService implements ISmiShopInfoService {

	private Logger logger = Logger.getLogger(this.getClass());

	@Autowired
	public ShopCURD shopCURD;
	@Autowired
	public  SqlSessionFactory sqlSessionFactory;
	
	
	
	//添加商品的方法
	public ShopVO addShop(ShopVO shopVO){
		SqlSession session = sqlSessionFactory.openSession();
		try {
			ShopCURD shopCURD = session.getMapper(ShopCURD.class);
			shopCURD.addShop(shopVO);
			session.commit();
		} finally {
			session.close();
		}
		return shopVO;
	}
	
	//查找商品的方法
	//,Integer id,Integer shopNum,String shopName,Integer shopMany
	public List<Shop> selectShop(Shop shop){
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			ShopCURD shopCURD = session.getMapper(ShopCURD.class);
			List<Shop>	shopList = shopCURD.selectShop(shop);
		
			return shopList;
	} finally {
		session.close();
	}
	}
	
	
	//更新
	
	public ShopVO updateShop(ShopVO shopVO){
		SqlSession session = sqlSessionFactory.openSession();
		try {
			ShopCURD shopCURD = session.getMapper(ShopCURD.class);
			shopCURD.updateShop(shopVO);
			session.commit();
		} finally {
			session.close();
		}
		return null;
	}
	
	
	
	//删除一个
	public void deleteShop(Integer id){
		SqlSession session = sqlSessionFactory.openSession();
		try {
			ShopCURD shopCURD = session.getMapper(ShopCURD.class);
			shopCURD.deleteShop(id);
			session.commit();
		} finally {
			session.close();
		}
		
		
	}
	
	
	


}
