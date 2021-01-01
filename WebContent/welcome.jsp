<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.5.1.js"></script>

<title>Welcome - Admin</title>
<style type="text/css">
body {
	font-family: 'Poppins', sans-serif;
	background: #fafafa;
}

p {
	font-family: 'Poppins', sans-serif;
	font-size: 1.1em;
	font-weight: 300;
	line-height: 1.7em;
}

a, a:hover, a:focus {
	color: inherit;
	text-decoration: none;
	transition: all 0.3s;
}

.navbar {
	padding: 15px 10px;
	background: #fff;
	border: none;
	border-radius: 0;
	margin-bottom: 40px;
	box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
}

.navbar-btn {
	box-shadow: none;
	outline: none !important;
	border: none;
}

.line {
	width: 100%;
	height: 1px;
	border-bottom: 1px dashed #ddd;
	margin: 40px 0;
}

/* ---------------------------------------------------
    SIDEBAR STYLE
----------------------------------------------------- */
.wrapper {
	display: flex;
	align-items: stretch;
	perspective: 1500px;
}

#sidebar {
	min-width: 250px;
	max-width: 250px;
	background: #7386D5;
	color: #fff;
	transition: all 0.6s cubic-bezier(0.945, 0.020, 0.270, 0.665);
	transform-origin: bottom left;
}

#sidebar.active {
	margin-left: -250px;
	transform: rotateY(100deg);
}

#sidebar .sidebar-header {
	padding: 20px;
	background: #6d7fcc;
}

#sidebar ul.components {
	padding: 20px 0;
	border-bottom: 1px solid #47748b;
}

#sidebar ul p {
	color: #fff;
	padding: 10px;
}

#sidebar ul li a {
	padding: 10px;
	font-size: 1.1em;
	display: block;
}

#sidebar ul li a:hover {
	color: #7386D5;
	background: #fff;
}

#sidebar ul li.active>a, a[aria-expanded="true"] {
	color: #fff;
	background: #6d7fcc;
}

a[data-toggle="collapse"] {
	position: relative;
}

a[aria-expanded="false"]::before, a[aria-expanded="true"]::before {
	content: '\e259';
	display: block;
	position: absolute;
	right: 20px;
	font-family: 'Glyphicons Halflings';
	font-size: 0.6em;
}

a[aria-expanded="true"]::before {
	content: '\e260';
}

ul ul a {
	font-size: 0.9em !important;
	padding-left: 30px !important;
	background: #6d7fcc;
}

ul.CTAs {
	padding: 20px;
}

ul.CTAs a {
	text-align: center;
	font-size: 0.9em !important;
	display: block;
	border-radius: 5px;
	margin-bottom: 5px;
}

a.download {
	background: #fff;
	color: #7386D5;
}

a.article, a.article:hover {
	background: #6d7fcc !important;
	color: #fff !important;
}

/* ---------------------------------------------------
    CONTENT STYLE
----------------------------------------------------- */
#content {
	padding: 20px;
	min-height: 100vh;
	transition: all 0.3s;
}

#sidebarCollapse {
	width: 40px;
	height: 40px;
	background: #f5f5f5;
}

#sidebarCollapse span {
	width: 80%;
	height: 2px;
	margin: 0 auto;
	display: block;
	background: #555;
	transition: all 0.8s cubic-bezier(0.810, -0.330, 0.345, 1.375);
	transition-delay: 0.2s;
}

#sidebarCollapse span:first-of-type {
	transform: rotate(45deg) translate(2px, 2px);
}

#sidebarCollapse span:nth-of-type(2) {
	opacity: 0;
}

#sidebarCollapse span:last-of-type {
	transform: rotate(-45deg) translate(1px, -1px);
}

#sidebarCollapse.active span {
	transform: none;
	opacity: 1;
	margin: 5px auto;
}

/* ---------------------------------------------------
    MEDIAQUERIES
----------------------------------------------------- */
@media ( max-width : 768px) {
	#sidebar {
		margin-left: -250px;
		transform: rotateY(90deg);
	}
	#sidebar.active {
		margin-left: 0;
		transform: none;
	}
	#sidebarCollapse span:first-of-type, #sidebarCollapse span:nth-of-type(2),
		#sidebarCollapse span:last-of-type {
		transform: none;
		opacity: 1;
		margin: 5px auto;
	}
	#sidebarCollapse.active span {
		margin: 0 auto;
	}
	#sidebarCollapse.active span:first-of-type {
		transform: rotate(45deg) translate(2px, 2px);
	}
	#sidebarCollapse.active span:nth-of-type(2) {
		opacity: 0;
	}
	#sidebarCollapse.active span:last-of-type {
		transform: rotate(-45deg) translate(1px, -1px);
	}
}
</style>
</head>

<body>

	<div class="wrapper">
		<!-- Sidebar Holder -->
		<nav id="sidebar">
		<div class="sidebar-header">
			<h3>Admin Panel</h3>
		</div>

		<ul class="list-unstyled components">
			<p>Dashboard</p>
			<li class="active"><a href="welcome.jsp" data-toggle="collapse"
				aria-expanded="false">Home</a>
				<ul class="collapse list-unstyled" id="homeSubmenu">
					<li><a href="#">Profile</a></li>
					<li><a href="#">Manage Users</a></li>
					<li><a href="#">Home 3</a></li>
				</ul></li>
			<li><a href="#">About</a> <a href="#pageSubmenu"
				data-toggle="collapse" aria-expanded="false">Profile</a>
				<ul class="collapse list-unstyled" id="pageSubmenu">
					<li><a href="#">Page 1</a></li>
					<li><a href="#">Page 2</a></li>
					<li><a href="#">Page 3</a></li>
				</ul></li>
			<li><a href="#" onclick="getUsers(this)">Manage Users</a></li>
			<li><a href="#">Portfolio</a></li>
			<li><a href="#">Contact</a></li>
		</ul>

		<ul class="list-unstyled CTAs">

			<li><a href="https://bootstrapious.com/p/bootstrap-sidebar"
				class="article">Back to the article</a></li>
		</ul>
		</nav>
		
		
		
		<!-- Page Content Holder -->
		<div id="content">

			<nav class="navbar navbar-default">
			<div class="container-fluid">

				<div class="navbar-header">
					<button type="button" id="sidebarCollapse" class="navbar-btn">
						<span></span> <span></span> <span></span>
					</button>
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">Page</a></li>
						<li><a href="#">Page</a></li>
						<li><a href="#">Page</a></li>
						<li><a href="#">Page</a></li>
					</ul>
				</div>
			</div>
			</nav>

			<h2>Collapsible Sidebar Using Bootstrap 3</h2>

			<div class="container-fluid" id="post-container">
				<p>
					This pen is a part of a <a
						href="https://bootstrapious.com/p/bootstrap-sidebar">Bootstrap
						sidebar tutorial</a> from Bootstrapious.com. CC-BY licensed.
				</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
					reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
					pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
					culpa qui officia deserunt mollit anim id est laborum.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
					reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
					pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
					culpa qui officia deserunt mollit anim id est laborum.</p>

				<div class="line"></div>

				<h2>Lorem Ipsum Dolor</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
					reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
					pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
					culpa qui officia deserunt mollit anim id est laborum.</p>
			</div>
		</div>
	</div>





	<script type="application/javascript">
		
		
        $(document).ready(function() {
            $("#sidebarCollapse").on("click", function() {
                $("#sidebar").toggleClass("active");
                $(this).toggleClass("active");
            });
        });
        
        function getUsers(temp){
        	$("#post-container").hide();
        	 $.ajax({
                 url: "usersList.jsp",
                 success: function (data, textStatus, jqXHR) {
                     $("#content").html(data);
                    
                 }
             })
        }
       
	
	</script>
</body>
</html>