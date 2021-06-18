package cn.edu.bit.taglib;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * 
 * @author liuyu 2007-7-21
 */
public class PopTag extends TagSupport {

	public int doEndTag() throws JspException {

		JspWriter out = pageContext.getOut();

		try {

			out.println("<script language=\"javascript\" >");

			out
					.println("mpmenu1=new mMenu('网站首页','NEWdefault.jsp','self','','','','');");

			out
					.println("mpmenu2=new mMenu('在研项目','/page/project/','self','','','','');");

			out
					.println("mpmenu2.addItem(new mMenuItem('数字图书馆','/page/project/Lab.jsp','self',false,'数字图书馆',null,'','','',''));");

			out
					.println("mpmenu2.addItem(new mMenuItem('e-learning学习平台','/page/project/e-learn.jsp','self',false,'e-learning学习平台',null,'','','',''));");

			out
					.println("mpmenu3=new mMenu('信息服务','/page/service/','self','','','','');");

			out
					.println("mpmenu3.addItem(new mMenuItem('天气预报','/page/project/weather.jsp','self',false,'天气预报',null,'','','',''));");

			out
					.println("mpmenu4=new mMenu('下载','/page/download/','self','','','','');");

			out
					.println("mpmenu4.addItem(new mMenuItem('游戏娱乐','/page/download/game.jsp','self',false,'游戏娱乐',null,'','','',''));");

			out
					.println("mpmenu4.addItem(new mMenuItem('课件','/page/download/kejian.jsp','self',false,'课件',null,'','','',''));");

			out
					.println("mpmenu4.addItem(new mMenuItem('桌面工具','/page/download/desk.jsp','self',false,'桌面工具',null,'','','',''));");

			out
					.println("mpmenu4.addItem(new mMenuItem('媒体工具','/page/download/multi.jsp','self',false,'媒体工具',null,'','','',''));");

			out
					.println("mpmenu4.addItem(new mMenuItem('网络工具','/page/download/net.jsp','self',false,'网络工具',null,'','','',''));");

			out
					.println("mpmenu4.addItem(new mMenuItem('系统工具','/page/download/system.jsp','self',false,'系统工具',null,'','','',''));");

			out
					.println("mpmenu5=new mMenu('实验室学生','/page/student/','self','','','','');");

			out
					.println("mpmenu5.addItem(new mMenuItem('2001本','/page/student/game.jsp','self',false,'游戏娱乐',null,'','','',''));");

			out
					.println("mpmenu5.addItem(new mMenuItem('2000本','/page/student/game.jsp','self',false,'游戏娱乐',null,'','','',''));");

			out
					.println("mpmenu5.addItem(new mMenuItem('2004研','/page/student/game.jsp','self',false,'游戏娱乐',null,'','','',''));");

			out
					.println("mpmenu5.addItem(new mMenuItem('2003研','/page/student/game.jsp','self',false,'游戏娱乐',null,'','','',''));");

			out
					.println("mpmenu5.addItem(new mMenuItem('2002研','/page/student/game.jsp','self',false,'游戏娱乐',null,'','','',''));");

			out
					.println("mpmenu6=new mMenu('兼职教授','/page/jiaoshou/','self','','','','');");

			out
					.println("mpmenu6.addItem(new mMenuItem('牛振东','/page/jiaoshou/niu.jsp','self',false,'牛振东',null,'','','',''));");

			out.println("mwritetodocument();");

			out.println("</script>");

		} catch (Exception e) {
			throw new JspTagException("IOException:" + e.toString());
		}
		return SKIP_BODY;
	}

}
