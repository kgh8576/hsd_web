package kr.co.hsd.web.config;

import kr.co.hsd.core.config.Constants;
import kr.co.hsd.web.security.TssAuthenticationFailureHandler;
import kr.co.hsd.web.security.TssAuthenticationSuccessHandler;
import kr.co.hsd.web.security.TssLoginUrlAuthenticationEntryPoint;
import kr.co.hsd.web.security.TssLogoutSuccessHandler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.access.channel.ChannelDecisionManagerImpl;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.security.web.util.matcher.RequestMatcher;

import javax.servlet.http.HttpServletRequest;
import java.util.regex.Pattern;

/**
 * Created by lee young eun on 2017-07-07.
 */
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true, securedEnabled = true)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Autowired
    private Environment env;

    @Autowired
    private UserDetailsService userDetailsService;

    @Autowired
    private TssLogoutSuccessHandler logoutSuccessHandler;

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) {
        auth.authenticationProvider(authenticationProvider());
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring()
                .antMatchers("/assets/**")
                .antMatchers("/file/**");
    }

    // Build the request matcher for CSFR
    RequestMatcher csrfRequestMatcher = new RequestMatcher() {

        // Always allow the HTTP GET method
        private Pattern allowedMethods = Pattern.compile("^GET$");

        // Disable CSFR protection on the following urls: CSFR 보호해제
        private AntPathRequestMatcher[] requestMatchers = {
                new AntPathRequestMatcher("/WEB-INF/**"),
                new AntPathRequestMatcher("/join/auth_result"),
                new AntPathRequestMatcher("/login/auth_result"),
                new AntPathRequestMatcher("/api/fileupload")
        };

        @Override
        public boolean matches(HttpServletRequest request) {
            // Skip allowed methods
            if (allowedMethods.matcher(request.getMethod()).matches()) {
                return false;
            }

            // If the request match one url the CSFR protection will be disabled
            for (AntPathRequestMatcher rm : requestMatchers) {
                if (rm.matches(request)) { return false; }
            }

            return true;
        }

    }; // new RequestMatcher

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .csrf()
            .requireCsrfProtectionMatcher(csrfRequestMatcher)
        .and()
            .exceptionHandling()
            .authenticationEntryPoint(authenticationEntryPoint())
        .and()
            .formLogin()                                    // 폼기반 로그인으로 인증
            .loginProcessingUrl("/authentication")          // 로그인 처리 url
            .successHandler(authenticationSuccessHandler()) // 성공후 처리
            .failureHandler(authenticationFailureHandler()) // 실패후 처리
            .usernameParameter("userid")                    // 아이디 파라미터
            .passwordParameter("userpwd")                   // 패스워드 파라미터
            .permitAll()                                    // 무조건 접근을 허용
        .and()
            .logout()
            .logoutRequestMatcher(new AntPathRequestMatcher("/logout")) // 로그아웃 url
            .logoutSuccessHandler(logoutSuccessHandler)                          // 로그아웃 성공 후 처리
            .deleteCookies("JSESSIONID", "CSRF-TOKEN")                           // 세션삭제
            .permitAll()
        .and()
            .headers()
            .frameOptions()
            .disable()
        .and()
            .authorizeRequests()
            .antMatchers("/join/modify").authenticated()         // 사용자 인증요구
            .antMatchers("/login/pw_change").authenticated()        // 비밀번호 정기 변경
            .antMatchers("/api/member/current").authenticated()
            .antMatchers("/footer/customer_voice").authenticated()
            .antMatchers("/**").permitAll();

//        if(env.acceptsProfiles(Constants.SPRING_PROFILE_PRODUCTION)){
//            http
//                    .portMapper()
//                    .http(80)
//                    .mapsTo(443)
//                    .and()
//                    .requiresChannel()
//
//                    /** 모든 채널 허용 */
//                    .antMatchers("/api/**",
//                            "/WEB-INF/**")
//                    .requires(ChannelDecisionManagerImpl.ANY_CHANNEL)
//
//                    /** 모두 https 채널만 허용 */
//                    .anyRequest()
//                    .requiresSecure();
//
//            http.sessionManagement()
//                    .sessionFixation().none();
//        }

    }

    /**
     * 로그인 페이지
     * @return
     */
    @Bean
    public AuthenticationEntryPoint authenticationEntryPoint() {
        return new TssLoginUrlAuthenticationEntryPoint("/login?unauth");
    }

    /**
     * 로그인 성공시
     * @return
     */
    @Bean
    public AuthenticationSuccessHandler authenticationSuccessHandler() {
        TssAuthenticationSuccessHandler successHandler = new TssAuthenticationSuccessHandler();
        successHandler.setTargetUrlParameter("_targetUrl");
        return successHandler;
    }

    /**
     * 로그인 실패시
     * @return
     */
    @Bean
    public AuthenticationFailureHandler authenticationFailureHandler() {
        return new TssAuthenticationFailureHandler("/login?error");
    }

    /**
     * 패스워드 암호화
     * @return
     */
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public HsdDaoAuthenticationProvider authenticationProvider() {
        final HsdDaoAuthenticationProvider authenticationProvider = new HsdDaoAuthenticationProvider();
        authenticationProvider.setUserDetailsService(userDetailsService);
        authenticationProvider.setPasswordEncoder(passwordEncoder());
        return authenticationProvider;
    }
}
