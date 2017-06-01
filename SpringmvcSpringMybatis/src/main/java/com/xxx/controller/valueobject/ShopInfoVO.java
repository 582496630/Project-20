package com.xxx.controller.valueobject;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import lombok.Getter;
import lombok.Setter;

import org.springframework.stereotype.Component;

/**
 * 影院店铺信息vo
 * 
 * @author author
 * @date 2016/02/16
 */
@Component
@JsonSerialize
@Setter
@Getter
public class ShopInfoVO {

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getShopNo() {
		return shopNo;
	}
	public void setShopNo(String shopNo) {
		this.shopNo = shopNo;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getShopType() {
		return shopType;
	}
	public void setShopType(String shopType) {
		this.shopType = shopType;
	}
	public String getShopPassword() {
		return shopPassword;
	}
	public void setShopPassword(String shopPassword) {
		this.shopPassword = shopPassword;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	private Integer id;
	private String shopNo;
	private String shopName;
	private String shopType;
	private String shopPassword;
	private String note;

}
