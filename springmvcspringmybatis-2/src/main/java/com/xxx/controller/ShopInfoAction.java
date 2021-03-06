package com.xxx.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.xxx.controller.valueobject.ShopVO;
import com.xxx.model.Shop;
import com.xxx.service.ISmiShopInfoService;

/**
 * 影院店铺信息action
 * 
 * @author author
 * @date 2016/02/16
 */
@Controller
public class ShopInfoAction {


	// spring注入服务层接口
	@Autowired
	private ISmiShopInfoService smiShopInfoService;

	// addShop的controller 添加shop
	@RequestMapping(value = "pages/addShop.action")
	public String addShop(ShopVO shopVO) {
		smiShopInfoService.addShop(shopVO);

		System.out.println("添加shop成功");
		return "select";

	}

	// selectShop 查找数据库内所有shop
	@RequestMapping(value = "pages/selectShop.action")
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

	// updateShop的controller 获取前端id值并跳转到update.jsp页面
	@RequestMapping(value = "/pages/updateShop1?*")
	public String updateShop1(@RequestParam Integer id, Model model) {

		List<Integer> list = smiShopInfoService.selectByIdShop(id);
		model.addAttribute("idList", id);
		model.addAttribute("shop", list);
		System.out.println("updateShop1成功");
		return "update";

	}

	// 更改数据库的内容
	@RequestMapping(value = "/pages/updateShop2.action", method = { RequestMethod.POST })
	public String updateShop2(ShopVO shopVO) {

		smiShopInfoService.updateShop(shopVO);
		System.out.println("updateShop2成功");
		return "select";
	}

	// 更加id删除数据库内容
	@RequestMapping(value = "/pages/deleteShop?*")
	public String deleteShop(@RequestParam Integer id) {
		smiShopInfoService.deleteShop(id);
		System.out.println("deleteShop成功");
		return "select";
	}

	// 获取前端checkbox 选中的值，实现批量删除
	@RequestMapping(value = "/pages/deleteAllShop")
	public String deleteAllShop(@RequestParam("checkboxName") List<Integer> idList) {
		if (idList.size() > 0) {
			smiShopInfoService.deleteAllShop(idList);
			System.out.println("deleteAllShop成功");
		} else {
			System.out.println("deleteAllShop无数据可删！");
		}
		return "select";
	}
}
