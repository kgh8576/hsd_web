package kr.co.hsd.web.tags;

import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by lee young eun on 2017-09-12.
 */
public class PhoneNumberTag extends TagSupport {

    private String phoneNumber;
    public PhoneNumberTag() {}

    @Override
    public int doStartTag() throws JspTagException {
        if(phoneNumber != null && !phoneNumber.isEmpty()){
            JspWriter out = pageContext.getOut();
            try {
                out.write(formatPhoneNumber(phoneNumber));
            } catch (IOException e) {
                throw new JspTagException(e.getMessage(), e);
            }
        }
        return EVAL_PAGE;
    }

    public static String formatPhoneNumber(final String phoneNumber) {
        String formatted = null;
        if(phoneNumber == null || phoneNumber.isEmpty()){
            formatted = phoneNumber;
        } else {
            Pattern pattern = Pattern.compile("^(\\d{3})-?(\\d{3,4})-?(\\d{4})$");
            Matcher matcher = pattern.matcher(phoneNumber);
            if(matcher.find()){
                String phone1 = matcher.group(1);
                String phone2 = matcher.group(2);
                String phone3 = matcher.group(3);

                if(phone2.length() == 4){
                    return phone1 + "-" + phone2.substring(0,2) + "*" + phone2.substring(3) + "-" + phone3.substring(0,2) + "*" + phone3.substring(3);
                }else{
                    return phone1 + "-" + phone2.substring(0,2) + "*-" + phone3.substring(0,2) + "*" + phone3.substring(3);
                }
            }else{
                return phoneNumber;
            }
        }
        return formatted;
    }

    public void setPhone(String phone){
        this.phoneNumber = phone;
    }

}
