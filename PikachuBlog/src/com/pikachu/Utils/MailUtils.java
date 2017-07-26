package com.pikachu.Utils;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;

public class MailUtils {

	public static void sendMail(String url, String user) {
		HtmlEmail mail = new HtmlEmail();
		
		mail.setHostName("smtp.qq.com");
		mail.setAuthentication("1464879932@qq.com", "cogbooljyrduhaih");
		mail.setCharset("utf-8");
	
		mail.setSSLOnConnect(true);
		mail.setSslSmtpPort("465");
		
		System.out.println("username : " + user);
		
		try {
			mail.setFrom("1464879932@qq.com");
			mail.addTo(user);
			mail.setSubject("完成注册！");
			mail.setHtmlMsg("请点击以下链接完成注册！" + "<br>" + "<a href=" + url + ">" + url + "</a>" );
			mail.send();
		} catch (EmailException e) {
			e.printStackTrace();
		}
		
		
	}
	
	
}
