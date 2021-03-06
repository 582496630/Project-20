/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.sanqing.struts.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONSerializer;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.LazyDynaBean;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.sanqing.service.ReportService;
import com.sanqing.util.PageResult;

public class ReportAction extends DispatchAction {
	private ReportService reptService = null;

	public ReportService getReptService() {
		return reptService;
	}

	public void setReptService(ReportService reptService) {
		this.reptService = reptService;
	}

	// 如果没有传递actionType，默认执行这个方法
	protected ActionForward unspecified(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		System.out.println("默认方法...");
		// 默认去入口
		PrintWriter out = response.getWriter();
		out.print("允许访问");
		return null;
	}

	// 查询客户贡献
	public ActionForward doFindCustProffer(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		System.out.println("查询客户贡献");
		LazyDynaBean ll = new LazyDynaBean();
		BeanUtils.populate(ll, request.getParameterMap());
		Map paramMap = ll.getMap();
		PageResult pgr = reptService.findCustProffer(paramMap);
		System.out.println("总共有" + pgr.getRowCount() + "条数据");
		String str = JSONSerializer.toJSON(pgr).toString();
		System.out.println(str);
		out.print(str);
		out.close();
		return null;
	}

	// 查询客户构成
	public ActionForward doFindCustStructure(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("查询客户构成");
		PrintWriter out = response.getWriter();
		String reptType = "";
		String type = request.getParameter("type");
		if ("客户等级".equals(type)) {
			reptType = "cstLevel";
		} else if ("客户满意度".equals(type)) {
			reptType = "cstSatisfy";
		} else if ("客户信用度".equals(type)) {
			reptType = "cstCredit";
		}
		PageResult pgr = reptService.findCustStructure(reptType);
		String pgrStr = JSONSerializer.toJSON(pgr).toString();
		System.out.println(pgrStr);
		out.print(pgrStr);
		return null;
	}

	// 查询客户服务
	public ActionForward doFindService(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		PrintWriter out = response.getWriter();
		System.out.println("查询客户服务");
		// 获得参数
		String svrDate = request.getParameter("svrDate");
		// 查询
		PageResult pgr = reptService.findCstService(svrDate);
		// 转换成JSON格式
		String pgrStr = JSONSerializer.toJSON(pgr).toString();
		System.out.println(pgrStr);
		out.print(pgrStr);
		out.close();
		return null;
	}

	// 查询客户服务年份
	public ActionForward doFindSvrDate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		PrintWriter out = response.getWriter();
		System.out.println(" 查询客户服务年份");
		// 获得参数
		LazyDynaBean ll = new LazyDynaBean();
		BeanUtils.populate(ll, request.getParameterMap());
		Map paramMap = ll.getMap();
		// 查询
		PageResult pgr = reptService.findSvrDate(paramMap);
		// 转换成JSON格式
		String pgrStr = JSONSerializer.toJSON(pgr).toString();
		System.out.println(pgrStr);
		out.print(pgrStr);
		out.close();
		return null;
	}

	// 查询客户流失信息
	public ActionForward doListLose(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		PrintWriter out = response.getWriter();
		System.out.println("查询客户流失信息");
		// 获得参数
		LazyDynaBean ll = new LazyDynaBean();
		BeanUtils.populate(ll, request.getParameterMap());
		Map paramMap = ll.getMap();
		// 查询
		PageResult pgr = reptService.findAllLose(paramMap);
		System.out.println("总共有" + pgr.getRowCount() + "条客户流失信息");
		// 转换成JSON格式
		String pgrStr = JSONSerializer.toJSON(pgr).toString();
		System.out.println(pgrStr);
		out.print(pgrStr);
		out.close();
		return null;
	}
}