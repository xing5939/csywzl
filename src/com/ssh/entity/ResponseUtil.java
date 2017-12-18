package com.ssh.entity;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
public class ResponseUtil {
	public static void writerToUI(Object o)throws Exception {
		HttpServletResponse response =  ServletActionContext.getResponse();
		response.setHeader("Content-type", "text/html;charset=UTF-8");  
		response.setCharacterEncoding("UTF-8");  
		PrintWriter pwrite = null;
		try {
			pwrite = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		write.append(jsonSerializer.serialize(modelsService.getAll()));
		pwrite.write(o.toString());
		pwrite.flush();
		pwrite.close();
	}
}
