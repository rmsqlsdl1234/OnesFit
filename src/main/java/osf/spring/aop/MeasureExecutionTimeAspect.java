package osf.spring.aop;

import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.beans.factory.annotation.Autowired;

public class MeasureExecutionTimeAspect {
	
	@Autowired
	private HttpSession session;
	
	public Object timeCheck(ProceedingJoinPoint pjp) throws Throwable{
		String returnVal = null;
		
		if(session.getAttribute("loginInfo") == "OSF") {
			long start = System.currentTimeMillis();
			returnVal = (String)pjp.proceed();   
			long end=System.currentTimeMillis();
			System.out.println("걸린시간 : " + (end-start));
		}
		else {
			return "notice/error";
		}
		return returnVal;
	}
	
	public Object timeCheck2(ProceedingJoinPoint pjp) throws Throwable{
		String returnVal = null;
		
		if(session.getAttribute("loginInfo") == "OSF") {
			long start = System.currentTimeMillis();
			returnVal = (String)pjp.proceed();   
			long end=System.currentTimeMillis();
			System.out.println("걸린시간 : " + (end-start));
		}
		else {
			return "notice/error";
		}
		return returnVal;
	}

}
