package kr.co.hsd.web.security;

import kr.co.hsd.web.exception.SleepAccountException;
import kr.co.hsd.web.exception.WrongPwCountOverException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by lee young eun on 2017-07-21.
 * 로그인 실패후 처리사항
 */
@Component
public class TssAuthenticationFailureHandler extends SimpleUrlAuthenticationFailureHandler {
    public TssAuthenticationFailureHandler() {
    }

    public TssAuthenticationFailureHandler(String defaultFailureUrl) {
        super.setDefaultFailureUrl(defaultFailureUrl);
    }

    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
                                        AuthenticationException exception) throws IOException, ServletException {


        if(exception instanceof WrongPwCountOverException) {
            response.sendRedirect("/login/verify_step1");
        } else if(exception.getCause() instanceof SleepAccountException) {
            response.sendRedirect("/login/sleep_verify_step1");
        } else {
            super.onAuthenticationFailure(request, response, exception);
        }

    }
}
