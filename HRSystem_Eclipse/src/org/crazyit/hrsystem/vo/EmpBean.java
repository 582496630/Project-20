package org.crazyit.hrsystem.vo;

import java.io.Serializable;
/**
 * Description:
 * <br/>网站: <a href="http://www.crazyit.org">疯狂Java联盟</a>
 * <br/>Copyright (C), 2001-2016, Yeeku.H.Lee
 * <br/>This program is protected by copyright laws.
 * <br/>Program Name:
 * <br/>Date:
 * @author  Yeeku.H.Lee kongyeeku@163.com
 * @version  1.0
 */
public class EmpBean implements Serializable
{
	private static final long serialVersionUID = 48L;
	private String empName;
	private String empPass;
	private double amount;
	
	private Integer empID;


	private String empPosition;
	private Integer empAge;



	
	// empID的setter和getter方法
	public Integer getEmpID() {
		return empID;
	}

	public void setEmpID(Integer empID) {
		this.empID = empID;
	}
	
	// empPosition的setter和getter方法
	public String getEmpPosition() {
		return empPosition;
	}
	public void setEmpPosition(String empPosition) {
		this.empPosition = empPosition;
	}
	// empAge的setter和getter方法
	public Integer getEmpAge() {
		return empAge;
	}
	public void setEmpAge(Integer empAge) {
		this.empAge = empAge;
	}
	
	
	
	
	
	// 无参数的构造器
	public EmpBean()
	{
	}
	// 初始化全部成员变量的构造器
	public EmpBean(String empName , String empPass , double amount,String empPosition,Integer empAge,Integer empID)
	{
		this.empName = empName;
		this.empPass = empPass;
		this.amount = amount;
		this.empPosition=empPosition;
		this.empAge=empAge;
		this.empID=empID;
		
	}

	// empName的setter和getter方法
	public void setEmpName(String empName)
	{
		this.empName = empName;
	}
	public String getEmpName()
	{
		return this.empName;
	}

	// empPass的setter和getter方法
	public void setEmpPass(String empPass)
	{
		this.empPass = empPass;
	}
	public String getEmpPass()
	{
		return this.empPass;
	}

	// amount的setter和getter方法
	public void setAmount(double amount)
	{
		this.amount = amount;
	}
	public double getAmount()
	{
		return this.amount;
	}

}