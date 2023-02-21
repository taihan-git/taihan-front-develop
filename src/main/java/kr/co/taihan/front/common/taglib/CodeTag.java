//package kr.co.taihan.front.common.taglib;
//
//import java.util.List;
//
//import javax.servlet.jsp.JspTagException;
//import javax.servlet.jsp.PageContext;
//import javax.servlet.jsp.tagext.TagSupport;
//
//import org.apache.commons.lang3.StringUtils;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import kr.co.taihan.front.common.code.Code;
//import kr.co.taihan.front.common.code.CodeManager;
//
//
//public class CodeTag extends TagSupport
//{
//    private static final long serialVersionUID = -234908230147803248L;
//
//    protected final Logger logger = LoggerFactory.getLogger(getClass());
//
//    private String upCd;
//    private String type;
//    private String id;
//    private String name;
//    private String selected;
//    private String selecteds[];
//    private String etc;
//    private List<Code> list;
//    private String subjectText;
//    private String subjectValue = "";
//    private String except;
//    private String contain;
//
//    public int doStartTag() throws JspTagException
//    {
//        return SKIP_BODY;
//    }
//
//    private String detectFix(String fix,String key){
//    	if(StringUtils.isNotEmpty(fix)){
//    		if(fix.equals(key)){
//    			if(StringUtils.isEmpty(type)||type.toLowerCase().equals("select")){
//    				return "selected";
//    			}else{
//    				return "checked";
//    			}
//    		}
//    		return "";
//    	}else{
//    		return "";
//    	}
//    }
//
//    private String detectFix(String[] fix,String key){
//    	if(fix.length > 0){
//    		for(String vals : fix){
//    			if(vals.equals(key)){
//    				return "checked";
//    			}
//    		}
//    		return "";
//    	}else{
//    		return "";
//    	}
//    }
//
//    public int doEndTag() throws JspTagException
//    {
//    	StringBuffer printValue = new StringBuffer();
//        try
//        {
//
//            //list = ServiceFactory.getCd(codeCd);
//        	//logger.debug("upCd : " + upCd );
//        	list = CodeManager.getSubCodeList(upCd.toUpperCase());
//
//            if(StringUtils.isEmpty(type)||type.toLowerCase().equals("select")){
//            	printValue.append("<select");
//            	if(StringUtils.isNotEmpty(name))
//            		printValue.append(" name=\""+name+"\"");
//            	if(StringUtils.isNotEmpty(id))
//            		printValue.append(" id=\""+id+"\"");
//            	if(StringUtils.isNotEmpty(etc))
//            		printValue.append(" "+etc);
//
//            	printValue.append(">\n");
//
//            	if(!StringUtils.isEmpty(this.subjectText)){
//            		printValue.append("<option");
//                	if(!StringUtils.isEmpty(this.subjectValue)){ printValue.append(" value=\"" + this.subjectValue + "\""); }
//                	else{ printValue.append(" value=\"" + this.subjectValue + "\""); }
//                	printValue.append(">" + this.subjectText + "</option>");
//                }else{
//                	if(StringUtils.isEmpty(contain)) // 추가 부분
//                		printValue.append("<option value=\"\">선택</option>\n");
//                }
//
//                for(Code codeObj:this.list){
//                	if(except!=null&&!except.equals("")&&except.indexOf(codeObj.getCd())!=-1){
//                		continue;
//                	}
//
//                	//추가 된 부분 ....
//                	if(contain!=null&&!contain.equals("")&&contain.indexOf(codeObj.getCd())==-1){
//                 		continue;
//                 	}
//
//            		printValue.append("<option value=\""+codeObj.getCd()+"\" ");
//            		printValue.append(detectFix(selected,codeObj.getCd())+">");
//            		printValue.append(codeObj.getCdNm()+"</option>\n");
//                }
//                printValue.append("</select>");
//            }else if(type.toLowerCase().equals("radio")||type.toLowerCase().equals("checkbox")){
//            	int cnt = 0;
//            	for(Code codeObj:this.list){
//        			if(except!=null&&!except.equals("")&&except.indexOf(codeObj.getCd())!=-1){
//                		continue;
//                	}
//	            	printValue.append("<input type=\""+type.toLowerCase()+"\"");
//	            	if(StringUtils.isNotEmpty(name))
//	            		printValue.append(" name=\""+name+"\"");
//	            	if(StringUtils.isNotEmpty(id))
//	            		printValue.append(" id=\""+id+cnt+"\"");
//	            	if(StringUtils.isNotEmpty(etc))
//	            		printValue.append(" "+etc);
//
//	            	printValue.append(" value=\""+codeObj.getCd()+"\" ");
//	            	if(selecteds != null && selecteds.length > 0){
//	            		printValue.append(detectFix(selecteds,codeObj.getCd()));
//	            	}else{
//	            		printValue.append(detectFix(selected,codeObj.getCd()));
//	            	}
//            		printValue.append("/>");
//            		if(StringUtils.isNotEmpty(id))
//            			printValue.append("<label for=\"" + id + cnt + "\">" + codeObj.getCdNm() + "</label>\n");
//            		else
//            			printValue.append(codeObj.getCdNm()+"\n");
//            		cnt++;
//                }
//            }else if(type.toLowerCase().equals("text")) {
//                printValue.append(CodeManager.getCodeNm(upCd, selected));
//            }
////			보안검수 수정
//            //pageContext.getOut().print(printValue.toString());
//
//
//        }
//        catch(Exception e)
//        {
//            throw new JspTagException(e);
//        }
//
//        return EVAL_PAGE;
//    }
//
//    protected Object lookup(PageContext pageContext, String name, String scope) throws JspTagException
//    {
//        Object bean = null;
//        if(scope == null)
//        {
//            bean = pageContext.findAttribute(name);
//        }
//        else if(scope.equalsIgnoreCase("page"))
//        {
//            bean = pageContext.getAttribute(name, PageContext.PAGE_SCOPE);
//        }
//        else if(scope.equalsIgnoreCase("request"))
//        {
//            bean = pageContext.getAttribute(name, PageContext.REQUEST_SCOPE);
//        }
//        else if(scope.equalsIgnoreCase("session"))
//        {
//            bean = pageContext.getAttribute(name, PageContext.SESSION_SCOPE);
//        }
//        else if(scope.equalsIgnoreCase("application"))
//        {
//            bean = pageContext.getAttribute(name, PageContext.APPLICATION_SCOPE);
//        }
//        else
//        {
//            JspTagException e = new JspTagException("Invalid scope " + scope);
//            throw e;
//        }
//        return (bean);
//    }
//
//
//	public void setType(String type) {
//		this.type = type;
//	}
//
//
//	public void setId(String id) {
//		this.id = id;
//	}
//
//
//	public void setName(String name) {
//		this.name = name;
//	}
//
//
//	public void setSelected(String selected) {
//		this.selected = selected;
//	}
//
//
//	public void setSelecteds(String selecteds[]) {
//		this.selecteds = selecteds;
//	}
//
//
//	public void setEtc(String etc) {
//		this.etc = etc;
//	}
//
//
//	public void setCodeType(String codeType) {
//		this.upCd = codeType;
//	}
//
//	public void setSubjectText(String subjectText) {
//		this.subjectText = subjectText;
//	}
//
//	public void setSubjectValue(String subjectValue) {
//		this.subjectValue = subjectValue;
//	}
//
//	public void setExcept(String except) {
//		this.except = except;
//	}
//
//	public void setContain(String contain) {
//		this.contain = contain;
//	}
//
//
//
//
//
//}
