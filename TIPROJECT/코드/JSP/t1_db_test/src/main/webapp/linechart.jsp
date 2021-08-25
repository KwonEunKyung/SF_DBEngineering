<%@ page contentType="image/jpeg"%>
<%@ page import = "org.jfree.chart.*" %>
<%@ page import ="com.mission.javabeans.*"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	ServletOutputStream sos = response.getOutputStream();
	LineChartBean lcb = new LineChartBean();
	JFreeChart chart = lcb.getLineChart();
	ChartUtilities.writeChartAsPNG(sos, chart, 450, 450);
%>