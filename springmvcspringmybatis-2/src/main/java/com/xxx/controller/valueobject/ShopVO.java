package com.xxx.controller.valueobject;

import java.util.List;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import lombok.Getter;
import lombok.Setter;


@Component
@JsonSerialize
@Setter
@Getter
public class ShopVO{

	private List<Integer> idList;
	private Integer id;

	private String shopNum;

	private String shopName;

	private String shopMany;


}
