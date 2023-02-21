package kr.co.taihan.front.common.taglib;

import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.TagSupport;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 데이터 바인딩이 아닌 일반 select 인터페이스 구성
 * @author 김기석
 *
 */
public class SelectTag extends TagSupport
{
	private static final long serialVersionUID = 3128973815888248587L;

	private Log log = LogFactory.getLog(this.getClass());

    private String id;
    private String name;
    private String className;
    private String templete;
    private String data;
    private String attr;
    private String subjectText;
    private String subjectValue = "";
    private String selectedValue = "";

    public void setId(String id) { this.id = id; }
	public void setName(String name) { this.name = name; }
	public void setClassName(String className) { this.className = className; }
	public void setTemplete(String templete) { this.templete = templete; }
	public void setData(String data) { this.data = data; }
	public void setAttr(String attr) { this.attr = attr; }
	public void setSubjectText(String subjectText) { this.subjectText = subjectText; }
	public void setSubjectValue(String subjectValue) { this.subjectValue = subjectValue; }
	public void setSelectedValue(String selectedValue) { this.selectedValue = selectedValue; }


	public int doStartTag() throws JspTagException
    {
        return SKIP_BODY;
    }


    public int doEndTag() throws JspTagException
    {
        try
        {
        	StringBuffer sb = new StringBuffer();

        	if(!StringUtils.isEmpty(this.templete)){ this.data = this.getTempleteData(this.templete); }
        	if(!StringUtils.isEmpty(this.data)){
        		String[] list = this.data.split("&");

                sb.append("<select");
                if(!StringUtils.isEmpty(this.name)){ sb.append(" name=\"" + this.name + "\""); }
                if(!StringUtils.isEmpty(this.id)){ sb.append(" id=\"" + this.id + "\""); }
                if(!StringUtils.isEmpty(this.className)){ sb.append(" class=\"" + this.className + "\""); }
                if(!StringUtils.isEmpty(this.attr)){ sb.append(" " + this.attr); }
                sb.append(">");

                if(!StringUtils.isEmpty(this.subjectText)){
                	sb.append("<option");
                	if(!StringUtils.isEmpty(this.subjectValue)){ sb.append(" value=\"" + this.subjectValue + "\""); }
                	else{ sb.append(" value=\"" + this.subjectValue + "\""); }
                	sb.append(">" + this.subjectText + "</option>");
                }

            	for(String d : list){
            		String[] s = d.split("=");
                	sb.append("<option value=\"" + s[0] + "\" " + (s[0].equals(this.selectedValue) ? "selected" : "") + ">" + s[1] + "</option>");
            	}

                sb.append("</select>");
        	}

            pageContext.getOut().print(sb.toString());
        }
        catch(Exception e)
        {
            throw new JspTagException(e);
        }

        return EVAL_PAGE;
    }


    private String getTempleteData(String templete){
    	if(templete.equals("useYn")){ return "Y=사용&N=미사용"; }
    	if(templete.equals("listSize")){ return "10=10개&20=20개&30=30개&50=50개&100=100개"; }
    	return "";
    }
}
