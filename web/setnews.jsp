<%-- 
    Document   : setnews
    Created on : Nov 28, 2014, 12:49:59 AM
    Author     : rocky
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="res/assets/css/screen.css">
		<link href='http://fonts.googleapis.com/css?family=Raleway:500' rel='stylesheet' type='text/css'>
        <title>AI</title>
    </head>
	
    <body>
		<div class="wrapper">
			<div class="title-container">
			<div class="title">
				<a href="/TubesDua/index.jsp">Kontegrasi</a>
			</div>
			</div>
			
			<div class="content">
				<h4>Kategori Berita</h4>
				
			<div class="header">

				<% ArrayList<String> asdf = new ArrayList<>();
					asdf.add(0,"Kategori1");
					asdf.add(1,"Kategori2");
					asdf.add(2,"Kategori3");
					asdf.add(3,"Kategori4");
				%>
				
				<div class="header-text">
				<ul>
				<%
					int iter = 0;
					while (iter < asdf.size()) { %>

					<li style="padding-left: 20px">
						<a href="/TubesDua/setnews.jsp?category=<%=asdf.get(iter)%>">
					<%	out.println(asdf.get(iter));
						iter++; %>
						</a>
						
					</li>

				<%	}				
				%>
				</ul>
				</div> <!-- .header-text-->
			</div> <!-- .header -->
			
			<div class="news-content">
				
				<p>Menampilkan berita-berita untuk kategori 
				<%
					String url = request.getRequestURL()+"?"+request.getQueryString();
					String[] spl = url.split("=");
					String retval = spl[1];
					out.println(retval);
				%>
				</p>
				
				<%
					ArrayList<String> result = new ArrayList<>();
					result.add(0,"placeholder");
					result.add(1,"placeholder");
					result.add(2,"placeholder");
					result.add(3,"placeholder");
					result.add(4,"placeholder");
					result.add(5,"placeholder");
					result.add(6,"placeholder");

					int itr = 0;
					while (itr < result.size()) { %>
					<h5>
						<a style="color:#333" href="/TubesDua/news.jsp">
						<%	out.println(result.get(itr));
						itr++; %>
						</a>
					</h5>
					<br>
				<%	}
				%>
				
			</div> <!-- .news-content -->
			
			</div> <!-- .content -->	
			
		</div>
    </body>
</html>
