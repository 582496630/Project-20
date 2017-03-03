package com.xxx.model;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

/**
 * 影院店铺信息表
 * 
 * @author author
 * @date 2016/02/16
 */
@Setter
@Getter
public class Shop implements Serializable {

	private static final long serialVersionUID = -205189814706545519L;

	private Integer id;

	private String shopNum;

	private String shopName;

	private String shopMany;


}
