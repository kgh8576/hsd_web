package kr.co.hsd.web.listener;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by lee young eun on 2017-07-07.
 */
public class ConfigurationListener implements ServletContextListener {

    private static boolean initialized = false;

    @Override
    public void contextInitialized(ServletContextEvent contextEvent) {
        if(!initialized) {
            ServletContext context = contextEvent.getServletContext();

            ApplicationContext ctx =
                    WebApplicationContextUtils.getRequiredWebApplicationContext(context);

            context.setAttribute("siteConfig", ctx.getBean(kr.co.hsd.core.config.properties.SiteProperties.class));
            context.setAttribute("quotationFileMap", quotationFileMap());

            initialized = true;
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent contextEvent) {
    }

    public Map<String, String> quotationFileMap() {
        Map<String, String> map = new HashMap<String, String>();
        map.put("1F_2_3A_4A_5A_6A_", "suite_fam5_OS_1.pdf");
        map.put("1F_2_3A_4A_5A_6B_", "suite_fam5_OS_2.pdf");
        map.put("1F_2_3A_4A_5B_6A_", "suite_fam5_MS_1.pdf");
        map.put("1F_2_3A_4A_5B_6B_", "suite_fam5_MS_2.pdf");
        map.put("1F_2_3A_4B_5A_6A_", "royal_fam7_OS_1.pdf");
        map.put("1F_2_3A_4B_5A_6B_", "royal_fam7_OS_2.pdf");
        map.put("1F_2_3A_4B_5B_6A_", "royal_fam7_MS_1.pdf");
        map.put("1F_2_3A_4B_5B_6B_", "royal_fam7_MS_2.pdf");
        map.put("1F_2_3B_4A_5A_6A_", "luxuary_fam_OS_1.pdf");
        map.put("1F_2_3B_4A_5A_6B_", "luxuary_fam_OS_2.pdf");
        map.put("1F_2_3B_4A_5B_6A_", "luxuary_fam_MS_1.pdf");
        map.put("1F_2_3B_4A_5B_6B_", "luxuary_fam_MS_2.pdf");
        map.put("1F_2_3B_4B_5A_6_", "exclusive_fam_OS.pdf");
        map.put("1F_2_3B_4B_5B_6_", "exclusive_fam_MS.pdf");
        map.put("1C_2A_3A_4A_5A_6_", "suite_com30_OS.pdf");
        map.put("1C_2A_3A_4A_5B_6_", "suite_com30_MS.pdf");
        map.put("1C_2A_3A_4B_5A_6_", "royal_com30_OS.pdf");
        map.put("1C_2A_3A_4B_5B_6_", "royal_com30_MS.pdf");
        map.put("1C_2A_3B_4A_5A_6_", "luxuary_com30_OS.pdf");
        map.put("1C_2A_3B_4A_5B_6_", "luxuary_com30_MS.pdf");
        map.put("1C_2A_3B_4B_5A_6_", "exclusive_com30_OS.pdf");
        map.put("1C_2A_3B_4B_5B_6_", "exclusive_com30_MS.pdf");
        map.put("1C_2B_3A_4A_5A_6_", "suite_com50_OS.pdf");
        map.put("1C_2B_3A_4A_5B_6_", "suite_com50_MS.pdf");
        map.put("1C_2B_3A_4B_5A_6_", "royal_com50_OS.pdf");
        map.put("1C_2B_3A_4B_5B_6_", "royal_com50_MS.pdf");
        map.put("1C_2B_3B_4A_5A_6_", "luxuary_com50_OS.pdf");
        map.put("1C_2B_3B_4A_5B_6_", "luxuary_com50_MS.pdf");
        map.put("1C_2B_3B_4B_5A_6_", "exclusive_com50_OS.pdf");
        map.put("1C_2B_3B_4B_5B_6_", "exclusive_com50_MS.pdf");
        map.put("1C_2C_3A_4A_5A_6_", "suite_com100u_OS.pdf");
        map.put("1C_2C_3A_4A_5B_6_", "suite_com100u_MS.pdf");
        map.put("1C_2C_3A_4B_5A_6_", "royal_com100u_OS.pdf");
        map.put("1C_2C_3A_4B_5B_6_", "royal_com100u_MS.pdf");
        map.put("1C_2C_3B_4A_5A_6_", "luxuary_com100u_OS.pdf");
        map.put("1C_2C_3B_4A_5B_6_", "luxuary_com100u_MS.pdf");
        map.put("1C_2C_3B_4B_5A_6_", "exclusive_com100u_OS.pdf");
        map.put("1C_2C_3B_4B_5B_6_", "exclusive_com100u_MS.pdf");
        map.put("1C_2D_3A_4A_5A_6_", "suite_com100o_OS.pdf");
        map.put("1C_2D_3A_4A_5B_6_", "suite_com100o_MS.pdf");
        map.put("1C_2D_3A_4B_5A_6_", "royal_com100o_OS.pdf");
        map.put("1C_2D_3A_4B_5B_6_", "royal_com100o_MS.pdf");
        map.put("1C_2D_3B_4A_5A_6_", "luxuary_com100o_OS.pdf");
        map.put("1C_2D_3B_4A_5B_6_", "luxuary_com100o_MS.pdf");
        map.put("1C_2D_3B_4B_5A_6_", "exclusive_com100o_OS.pdf");
        map.put("1C_2D_3B_4B_5B_6_", "exclusive_com100o_MS.pdf");
        return map;
    }
}
