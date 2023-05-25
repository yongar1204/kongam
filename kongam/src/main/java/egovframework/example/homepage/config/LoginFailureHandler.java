package egovframework.example.homepage.config;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Service;

@Service
public class LoginFailureHandler extends SimpleUrlAuthenticationFailureHandler{
//	private final String DEFAULT_FAILURE_URL = "/admin/login.do?error=true";

//	@Override
//	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
//			AuthenticationException exception) throws IOException, ServletException {
//		// TODO Auto-generated method stub
//		String errorMsg = null;
//
//        if(exception instanceof BadCredentialsException){
//            errorMsg = "아이디나 비밀번호가 맞지 않습니다. 다시 확인해 주세요.";
//        }else if(exception instanceof InternalAuthenticationServiceException){
//            errorMsg = "이메일이 인증되지 않았습니다. 이메일을 확인해 주세요.";
//        }else{
//            errorMsg = "알수없는 이유로 로그인에 실패하였습니다.";
//        }
//        System.out.println(errorMsg);
//        request.setAttribute("errorMsg", errorMsg);
//        RequestDispatcher dispatcher = request.getRequestDispatcher(DEFAULT_FAILURE_URL);
//        dispatcher.forward(request, response);
//	}

	 @Override
	 //httpServletRequest -> request 에 대한 정보 , httpServletResponse -> response 에 대해 설정할 수 있는 변수
	 //AuthenticationException e -> 로그인 실패 시 예외에 대한 정보를 담고 있음.
	 public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException e) throws IOException, ServletException {
	     logger.info("login fail handler");

	     String errorMessage;
	     if (e instanceof BadCredentialsException || e instanceof InternalAuthenticationServiceException){
	         errorMessage="아이디 또는 비밀번호가 맞지 않습니다.";
	     }
	     else if (e instanceof UsernameNotFoundException){
	         errorMessage="존재하지 않는 아이디 입니다.";
	     }
	     else{
	         errorMessage="알 수 없는 이유로 로그인이 안되고 있습니다.";
	     }
		 errorMessage= URLEncoder.encode(errorMessage,"UTF-8");//한글 인코딩 깨지는 문제 방지
		 setDefaultFailureUrl("/admin/login.do?error=true");
		 super.onAuthenticationFailure(request,response,e);
	 }

}
