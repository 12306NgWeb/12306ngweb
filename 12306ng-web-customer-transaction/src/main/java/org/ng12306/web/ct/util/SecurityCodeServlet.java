package org.ng12306.web.ct.util;

import java.io.*;

import java.util.*;
import com.sun.image.codec.jpeg.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.awt.*;
import java.awt.image.*;

/**
 * @功能：调用SecurityCodeServlet可以生成一个验证码图片,图片的宽度和高度可以自定义
 * @调用格式:/servlet/SecurityCodeServlet
 * @时间：2013-5-29
 */
@SuppressWarnings("serial")
public class SecurityCodeServlet extends HttpServlet {

	private Font mFont = new Font("Times New Roman", Font.BOLD, 22);// 设置字体

	public static final String AuthCode = "AuthCode";

	// 处理post
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ServletOutputStream out = null;
		try {
			HttpSession session = request.getSession();

			// 设置头信息
			response.setContentType("image/gif");
			response.setHeader("Pragma", "No-cache");
			response.setHeader("Cache-Control", "no-cache");
			response.setDateHeader("Expires", 0);

			// 设置高和宽
			int width = 60;
			int height = 20;

			out = response.getOutputStream();

			BufferedImage image = new BufferedImage(width, height,
					BufferedImage.TYPE_INT_RGB); // 设置图片大小的
			Graphics gra = image.getGraphics();

			Random random = new Random();
			gra.setColor(getRandColor(233, 244)); // 设置背景色
			gra.fillRect(0, 0, width, height);

			gra.setColor(Color.black); // 设置字体色
			gra.setFont(mFont);

			// 随机产生155条干扰线，使图象中的认证码不易被其它程序探测到
			gra.setColor(getRandColor(160, 200));
			for (int i = 0; i < 150; i++) {
				int x = random.nextInt(width);
				int y = random.nextInt(height);
				int xl = random.nextInt(12);
				int yl = random.nextInt(12);
				gra.drawLine(x, y, x + xl, y + yl);
			}

			// 取随机产生的认证码(4位数字)
			String sRand = "";
			for (int i = 0; i < 4; i++) {
				String rand = String.valueOf(random.nextInt(10));
				sRand += rand;
				// 将认证码显示到图象中
				gra.setColor(new Color(20 + random.nextInt(110), 20 + random
						.nextInt(110), 20 + random.nextInt(110)));// 调用函数出来的颜色相同，可能是因为种子太接近，所以只能直接生成
				gra.drawString(rand, 13 * i + 6, 18);
			}
			
			//保存到session中
			session.setAttribute(AuthCode, sRand);

			System.out.println("--------------------------");
			System.out.println("生成的验证码为："+sRand);
			System.out.println("--------------------------");
			
			JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
			encoder.encode(image);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (out != null) {
				out.flush();
				out.close();
			}
		}
	}

	/**
	 * 给定范围获得随机颜色
	 * 
	 * @param fc
	 * @param bc
	 * @return
	 */
	public static Color getRandColor(int fc, int bc) {
		Random random = new Random();
		if (fc > 255)
			fc = 255;
		if (bc > 255)
			bc = 255;
		int r = fc + random.nextInt(bc - fc);
		int g = fc + random.nextInt(bc - fc);
		int b = fc + random.nextInt(bc - fc);
		return new Color(r, g, b);
	}

	/**
	 * 返回验证
	 * 
	 * @param session
	 * @return
	 */
	public static String getAuthCode(HttpSession session) {
		return (String) session.getAttribute(AuthCode);
	}
}
