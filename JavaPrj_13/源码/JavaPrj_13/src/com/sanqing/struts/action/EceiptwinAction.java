/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.sanqing.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.sanqing.struts.form.EceiptwinForm;

/** 
 * MyEclipse Struts
 * Creation date: 04-20-2008
 * 
 * XDoclet definition:
 * @struts.action path="/eceiptwin" name="eceiptwinForm" input="/form/storage/eceiptwin.jsp" scope="request" validate="true"
 */
public class EceiptwinAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		EceiptwinForm eceiptwinForm = (EceiptwinForm) form;// TODO Auto-generated method stub
		return null;
	}
}