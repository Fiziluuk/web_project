<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=gb2312"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Courses</title>
	<!-- meta-tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<meta name="keywords" content="" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //meta-tags -->
	<link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome -->
	<link href="/css/font-awesome.css" rel="stylesheet">
	<!-- fonts -->
	<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	    rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<style>
		body{
			margin: 0px;
		}
	</style>
</head>

<body>
	<!-- header -->
	<div class="header-top">
		<div class="container">
			<div class="bottom_header_left">
				<p>
					<span class="fa fa-map-marker" aria-hidden="true"></span>������ҵ��ѧ
				</p>
			</div>
			<div class="bottom_header_right">

				<div class="header-top-righ">
					<c:if test="${sessionScope.user==null}">
						<a href="/login">
							<span class="fa fa-sign-out" aria-hidden="true"></span>Login</a>
					</c:if>
					<c:if test="${sessionScope.user!=null}">
						<a href="/Logout">
							<span class="fa fa-sign-out" aria-hidden="true"></span>Logout</a>
					</c:if>

				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="header">
		<div class="content white">
			<nav class="navbar navbar-default">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="index.jsp">
							<h1>
								<span class="fa fa-leanpub" aria-hidden="true"></span>��������
								<label>��Ϣ����������ѧԺ</label>
							</h1>
						</a>
					</div>
					<!--/.navbar-header-->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-2" id="link-effect-2">
							<ul class="nav navbar-nav">
								<li class="active">
									<a href="/index" class="effect-3">Home</a>
								</li>
								<li>
									<a href="../../soft_info/about.html" class="effect-3">רҵ����</a>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">��ʦ����
										<span class="caret"></span>
									</a>
									<ul class="dropdown-menu" role="menu">
										<li>
											<a href="/teacher/professorlist.html">����</a>
										</li>
										<li>
											<a href="/teacher/AssociateProfessor.html">������</a>
										</li>
										<li>
											<a href="/teacher/teacher.html">��ʦ</a>
										</li>
									</ul>
								</li>

								<li>
									<a href="/experiment_info/experiment.html" class="effect-3">ʵ���ҽ���</a>
								</li>
								<c:if test="${sessionScope.user==null}">
									<li>
										<a href="/ShowNews" class="effect-3">����</a>
									</li>
								</c:if>
								<c:if test="${sessionScope.user!=null}">
									<li>
										<a href="/ShowNews" class="effect-3">���Ź���</a>
									</li>
								</c:if>

							</ul>
						</nav>
					</div>
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
	<!-- banner -->
	<div class="inner_page_agile">

	</div>
	<!--//banner -->
	<!-- short-->
	<div class="services-breadcrumb">
		<div class="inner_breadcrumb">
			<ul class="short_ls">
				<li>
					<a href="/AddNews">��������</a>
					<span>| |</span>
				</li>
				<li>��������</li>
			</ul>
		</div>
	</div>
	<!-- //short-->
	<!-- blog -->
	<div class="blog-cource">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>��������</span>
				</h3>
				<c:if test="${sessionScope.user!=null}">
					<div class="tittle-style">
<%--						<a href="/AddNews" class="button-style">����</a>--%>
					</div>
				</c:if>

			</div>

			<c:forEach items="${news}" var="n" varStatus="s">
				<div class="blog-info">
					<div class="col-xs-8 blog-grid-text">
						<h4><a href="/NewsPage?nid=${n.id}">${n.title}</a></h4>
						<h6>${n.inserttime}</h6>
						<c:if test="${sessionScope.user==null}">
							<a class="button-style btn-info" href="/NewsPage?nid=${n.id}">�Ķ�ȫ��</a>
						</c:if>
						<c:if test="${sessionScope.user!=null}">
							<a class="button-style" href="/update1?nid=${n.id}">�޸�</a>
							<a class="button-style btn-danger" href="/deletenews?nid=${n.id}">ɾ��</a>
						</c:if>
					</div>
					<div class="clearfix"> </div>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- //blog -->

	<!-- footer -->
	<div class="mkl_footer">
		<div class="sub-footer">
			<div class="container">
				<div class="mkls_footer_grid">
					<div class="col-xs-4 mkls_footer_grid_left">
						<h4>��ַ:</h4>
						<p>���������㷻������·26��
							<br> �й���������</p>
					</div>
					<div class="col-xs-4 mkls_footer_grid_left">
						<h4>��ϵ����:</h4>
						<p>
							<span>�绰 : </span>0451-82190346</p>
						<p>
							<span>Email : </span>
							<a href="mailto:info@example.com">xxxx@nefu.edu.cn</a>
						</p>
					</div>
					<div class="col-xs-4 mkls_footer_grid_left">
						<h4>����ʱ��:</h4>
						<p>������ : 8am-10pm</p>
						<p>��ĩ
							<span>(�ر�)</span>
						</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="botttom-nav-allah">
					<ul>
						<li>
							<a href="index.jsp">��ҳ</a>
						</li>
						<li>
							<a href="../../soft_info/about.html">��������</a>
						</li>
						<li>
							<a href="ShowNews.jsp">�γ�����</a>
						</li>
						<li>
							<a href="join.html">��������</a>
						</li>
						<li>
							<a href="NewsPage.jsp">��ϵ����</a>
						</li>
					</ul>
				</div>
				<!-- footer-button-info -->
				<div class="footer-middle-thanks">
<%--					<h2>Thanks For watching</h2>--%>
				</div>
				<!-- footer-button-info -->
			</div>
		</div>
		<div class="footer-copy-right">
			<div class="container">
				<div class="allah-copy">
<%--					<p>Copyright &copy; 2018.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="ģ��֮��">ģ��֮��</a> - Collect from <a href="http://www.cssmoban.com/" title="��ҳģ��" target="_blank">��ҳģ��</a></p>--%>
				</div>
				<div class="footercopy-social">
					<ul>
						<li>
							<a href="#">
								<span class="fa fa-facebook"></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="fa fa-twitter"></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="fa fa-rss"></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="fa fa-vk"></span>
							</a>
						</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--/footer -->

	<!-- js files -->
	<!-- js -->
	<script src="/js/jquery-2.1.4.min.js"></script>
	<!-- bootstrap -->
	<script src="/js/bootstrap.js"></script>
	<!-- stats numscroller-js-file -->
	<script src="/js/numscroller-1.0.js"></script>
	<!-- //stats numscroller-js-file -->
	<!-- smooth scrolling -->
	<script src="/js/SmoothScroll.min.js"></script>
	<script src="/js/move-top.js"></script>
	<script src="/js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script>
		$(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- smooth scrolling -->
	<!-- //js-files -->

</body>

</html>