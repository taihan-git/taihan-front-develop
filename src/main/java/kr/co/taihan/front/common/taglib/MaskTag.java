package kr.co.taihan.front.common.taglib;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class MaskTag extends BodyTagSupport
{
    private String pattern;

    public void setPattern(String pattern)
    {
        this.pattern = pattern;
    }

    public int doAfterBody() throws JspException
    {
       
            JspWriter out = getPreviousOut();
            BodyContent body = getBodyContent();
            String value = body.getString();

            if((value != null) && !value.equals("") && (pattern != null) && !pattern.equals(""))
            {
                String tmpStr = "";
                char[] valueChar = value.toCharArray();
                char[] patternChar = pattern.toCharArray();

                if((valueChar != null) && (valueChar.length > 0) && (patternChar != null) && (patternChar.length > 0))
                {
                    int i = 0;
                    int k = 0;

                    while (k < patternChar.length)
                    {
                        if(patternChar[k] == '#')
                        {
                            if(i < valueChar.length)
                            {
                                tmpStr += valueChar[i];
                                i++;
                            }

                            k++;
                        }
                        else
                        {
                            while ((k < patternChar.length) && (patternChar[k] != '#'))
                            {
                                tmpStr += patternChar[k];
                                k++;
                            }
                        }
                    }
                }

                try {
					out.print(tmpStr);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
            }
        

        return SKIP_BODY;
    }
}
