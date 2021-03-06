package com.xxx.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xxx.controller.valueobject.ShopVO;
import com.xxx.dao.ShopCURD;
import com.xxx.dao.SmiShopInfoMapper;
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
	public SmiShopInfoMapper shopInfoMapper;
	@Autowired
	public ShopCURD shopCURD;
	@Autowired
	public  SqlSessionFactory sqlSessionFactory;
	
	
	@Override
	public SmiShopInfo getShopByNoAndPwd(String shopNo, String password) throws Exception {
		if (null == shopNo || "".equals(shopNo)) {
			logger.warn("门店编码为null或空，请检查！");
			throw new Exception("门店编码为空");
		}

		return shopInfoMapper.getByNoAndPwd(password, shopNo);
	}
	
	// 添加 商品的方法
		public ShopVO addShop(ShopVO shopVO) {
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

		// 查找 商品的方法
		public List<Shop> selectShop(Shop shop) {
			SqlSession session = sqlSessionFactory.openSession();

			try {
				ShopCURD shopCURD = session.getMapper(ShopCURD.class);
				List<Shop> shopList = shopCURD.selectShop(shop);

				return shopList;
			} finally {
				session.close();
			}
		}

		public List<Integer> selectByIdShop(Integer id) {
			SqlSession session = sqlSessionFactory.openSession();

			try {
				ShopCURD shopCURD = session.getMapper(ShopCURD.class);
				List<Integer> shopList = shopCURD.selectByIdShop(id);

				return shopList;
			} finally {
				session.close();
			}
		}

		// 更新

		public ShopVO updateShop(ShopVO shopVO) {
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

		// 删除一个
		public void deleteShop(Integer id) {
			SqlSession session = sqlSessionFactory.openSession();
			try {
				ShopCURD shopCURD = session.getMapper(ShopCURD.class);
				shopCURD.deleteShop(id);
				session.commit();
			} finally {
				session.close();
			}
		}

		// 批量删除
		public void deleteAllShop(List<Integer> idList) {
			SqlSession session = sqlSessionFactory.openSession();
			try {
				ShopCURD shopCURD = session.getMapper(ShopCURD.class);
				shopCURD.deleteAllShop(idList);
				session.commit();
			} finally {
				session.close();
			}
		}
		
		//EasyUI对应的查找方法
		public List<Shop> selectShopView(Map<String, Object> shopViewMap){
			
			List<Shop> shopList = shopCURD.selectShopView(shopViewMap);
			
			return shopList;
		}
		//查找总共的数据有多少
		public long getTotal(Map<String, Object> shopViewMap){
			
			long shopTotal = shopCURD.getTotal(shopViewMap);
			
			return shopTotal;
		}
		
		
}
