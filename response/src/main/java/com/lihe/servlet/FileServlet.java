package com.lihe.servlet;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

public class FileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //- 要获取下载文件的路径
        String realPath = "E:\\codeJava\\javaweb-servlet\\response\\target\\classes\\李赫.png";
        //- 下载的文件名
        System.out.println("要下载的文件路径" + realPath);
        String fileName = realPath.substring(realPath.lastIndexOf("\\") + 1);
        //- 设置想办法让浏览器能够支持("Content-disposition")下载我们需要的东西 中文名编码 URLEncoder.encode(fileName, "UTF-8")
        resp.setHeader("Content-disposition","attachment;filename=" + URLEncoder.encode(fileName, "UTF-8"));
        //- 获取下载文件的输入流
        FileInputStream in = new FileInputStream(realPath);

        //- 创建缓冲区

        int len = 0;
        byte[] buffer = new byte[1024];


        //- 获取outputStream对象
        ServletOutputStream out = resp.getOutputStream();
        while ((len = in.read(buffer)) > 0){
            out.write(buffer,0, len);
        }
        //- 将FileOutputStream写入到buffer缓冲区
        //- 使用OutputStream将缓冲区中的数据输出到客户端

        in.close();
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
