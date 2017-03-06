package com.xxx.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xxx.controller.valueobject.ShopVO;
import com.xxx.model.Shop;
import com.xxx.model.SmiShopInfo;
import com.xxx.service.ISmiShopInfoService;

/**
 * 影院店铺信息action
 * 
 * @author author
 * @date 2016/02/16
 */
@Controller
public class ShopInfoAction {

	private Logger logger = Logger.getLogger(this.getClass());

	@Autowired
	private ISmiShopInfoService smiShopInfoService;

	/**
	 * 用户登录
	 * 
	 * @ResponseBody 设置该参数，指定response的type为比如json或xml，本文采用json序列化方式传输数据
	 * 
	 * @param request
	 * @param response
	 * @param shopNo
	 * @param password
	 * @return
	 * @throws Exception
	 */

	// addShop的controller
	@RequestMapping(value = "/addShop.action")
	public String addShop(ShopVO shopVO) {
		smiShopInfoService.addShop(shopVO);

		System.out.println("添加shop成功");
		return "select";

	}

	// selectShop
	@RequestMapping(value = "/selectShop.action")
	public ModelAndView selectShop(Shop shop, HttpServletRequest request, HttpServletResponse response) {

		List<Shop> list = smiShopInfoService.selectShop(shop);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("allShopList", list);
		modelAndView.setViewName("select");
		// model.addAttribute("selectList", list);
		// model.addAllAttributes(list);
		System.out.println("selectShop方法运行成功");
		return modelAndView;
	}
	
	// updateShop的controller
	@RequestMapping(value = "/updateShop1.do")
	public  @ResponseBody ModelAndView updateShop1(HttpServletRequest request, HttpServletResponse response,
			Integer id,Model model) {
		
		//smiShopInfoService.updateShop(id);
		Integer id1 = id;
		//model.addAttribute("idList", id);
		
		ModelAndView modelAndView = new ModelAndView();
		List<Integer> list = new ArrayList<>();
		list.add(id);
		modelAndView.addObject("list", list);
		modelAndView.setViewName("updateShop");
		
		System.out.println("updateShop1成功");
		return modelAndView;
		
	}
	@RequestMapping(value = "/updateShop2.do" , method = {RequestMethod.POST})
	public String updateShop2(ShopVO shopVO) {
		
		smiShopInfoService.updateShop(shopVO);
		
		System.out.println("updateShop2成功");
		return "selectShop";
	}

	
	@RequestMapping(value = "/deleteShop.do?*")
	
	public String  deleteShop(@RequestParam  Integer id){
		//@RequestParam  Integer id
		smiShopInfoService.deleteShop(id);
		System.out.println("deleteShop成功");
		
		return "selectShop";
	}
	

}
