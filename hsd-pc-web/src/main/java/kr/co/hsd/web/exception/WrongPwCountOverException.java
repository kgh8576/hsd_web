package kr.co.hsd.web.exception;

import org.springframework.security.core.AuthenticationException;

public class WrongPwCountOverException extends AuthenticationException {
    public WrongPwCountOverException(String msg, Throwable t) {
        super(msg, t);
    }

    public WrongPwCountOverException(String msg) {
        super(msg);
    }
}
