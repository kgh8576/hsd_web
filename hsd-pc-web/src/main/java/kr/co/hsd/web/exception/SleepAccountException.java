package kr.co.hsd.web.exception;

import org.springframework.security.core.AuthenticationException;

public class SleepAccountException extends AuthenticationException {
    public SleepAccountException(String msg, Throwable t) {
        super(msg, t);
    }

    public SleepAccountException(String msg) {
        super(msg);
    }
}
