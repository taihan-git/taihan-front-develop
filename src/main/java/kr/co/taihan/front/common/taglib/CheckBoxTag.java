package kr.co.taihan.front.common.taglib;

import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.TagSupport;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 *  데이터 바인딩이 아닌 일반 select 인터페이스 구성
 * CheckBoxTag.java
 * 
 * @Company : digitalDigm Inc
 * @Author : Richard Song
 * @Date : 2017. 10. 30. 
 * 
 *  수정일                   수정자                  수정내용
 *  -------------   ------------    ---------------------------
 *  2017. 10. 30.	Richard Song	      최초 생성
 *
 */
public class CheckBoxTag extends TagSupport
{
	private static final long serialVersionUID = 3128973815888248587L;

	private Log log = LogFactory.getLog(this.getClass());

    private String id;
    private String name;
    private String className;
    private String templete;
    private String data;
    private String attr;
    private String checkedValue = "";

    public void setId(String id) { this.id = id; }
	public void setName(String name) { this.name = name; }
	public void setClassName(String className) { this.className = className; }
	public void setTemplete(String templete) { this.templete = templete; }
	public void setData(String data) { this.data = data; }
	public void setAttr(String attr) { this.attr = attr; }
	public void setCheckedValue(String checkedValue) { this.checkedValue = checkedValue; }


	public int doStartTag() throws JspTagException
    {
        return SKIP_BODY;
    }


    public int doEndTag() throws JspTagException
    {
        try
        {
        	StringBuffer sb = new StringBuffer();
        	String[] chkValues = this.checkedValue.split(",");

        	if(!StringUtils.isEmpty(this.templete)){ this.data = this.getTempleteData(this.templete); }
        	if(!StringUtils.isEmpty(this.data)){
        		String[] list = this.data.split("&");



            	for(String d : list){
            		String[] s = d.split("=");
                    sb.append("<input type='checkbox'");
                    sb.append(" value=\"" + s[0] + "\"");
                    if(!StringUtils.isEmpty(this.name)){ sb.append(" name=\"" + this.name + "\""); }
                    if(!StringUtils.isEmpty(this.id)){ sb.append(" id=\"" + this.id + "\""); }
                    if(!StringUtils.isEmpty(this.className)){ sb.append(" class=\"" + this.className + "\""); }
                    if(!StringUtils.isEmpty(this.attr)){ sb.append(" " + this.attr); }
                    if(!StringUtils.isEmpty(this.checkedValue) && this.isChecked(chkValues, s[0])){ sb.append(" checked"); }
                    sb.append(">");
                    sb.append(s[1]);
            	}
        	}

            pageContext.getOut().print(sb.toString());
        }
        catch(Exception e)
        {
            throw new JspTagException(e);
        }

        return EVAL_PAGE;
    }


    private boolean isChecked(String[] checkedValue, String source){
    	for(String c : checkedValue){
    		if(c.endsWith(source)){ return true; }
    	}
    	return false;
    }


    private String getTempleteData(String templete){
    	if(templete.equals("useYn")){ return "Y=사용&N=미사용"; }
    	return "";
    }
}
