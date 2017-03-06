package com.xxx.controller.valueobject;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import lombok.Getter;
import lombok.Setter;

/**
 * 影院店铺信息表
 * 
 * @author author
 * @date 2016/02/16
 */
@Component
@JsonSerialize
@Setter
@Getter
public class ShopVO{


	private Integer id;

	private String shopNum;

	private String shopName;

	private String shopMany;


}
