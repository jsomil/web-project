<%
    String name=(String)session.getAttribute("name");
    if(name==null){
        response.sendRedirect("index.html");
    }
%>


<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>User Home</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Carter+One|Orbitron:900|Pacifico" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/style-new.css">

<script type="text/javascript">
	function c2_1()
	{
		document.getElementById("srch-term").style.background="yellow";
	}

	
	function c2_2()
	{
		document.getElementById("srch-term").style.background="white";
	}
</script>	
	


<style>
@media (max-width:400px){
.footer{
	position:relative;
	}
}
</style>
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">DiscusIt</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#" onclick="document.getElementById('question').style.display='block'">Ask Question</a></li>
            <li><a href="#" onClick="javascript:alert('You need to login');">Notification</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="glyphicon glyphicon-user"></i><%=session.getAttribute("name")%><span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#"><i class="glyphicon glyphicon-exclamation-sign"></i> Profile</a></li>
                <li><a href="#"><i class=" glyphicon glyphicon-book"></i>  Your Content</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-cog"></i>  Settings</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-off"></i>  Logout</a></li>
              </ul></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    
    <div class="body-start">
    
    
    <div class="search-form col-lg-12">
    <div class="form">
    <form class="navbar-form" role="search">
        <div class="input-group add-on">
          <input class="form-control" placeholder="Search" name="srch-term" id="srch-term" type="text" onfocus="c2_1();" onblur="c2_2();">
          <div class="input-group-btn">
            <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
          </div>
        </div>
      </form>
    </div>  
    </div>
    
    
    <div id="question">
    <div class="col-lg-offset-3 col-lg-6 col-sm-9">
    <div class="fadeInDown animated">
            <div class="card">
            	<span onclick="document.getElementById('question').style.display='none'"class="close" title="Close Modal">&times;</span>
            	<h3>Ask Question</h3>
                <form>
                <div class="form-group">
                  <label for="usr">Query : </label>
                  <input type="text" class="form-control" id="usr">
                </div>
                <button type="submit" class="btn btn-success">Submit</button>
                </form>
            </div>
        </div>
        </div>
    	</div>
        
    <div class="trends fadeInDown animated col-lg-4 col-sm-12">
            <div class="card">
            	<h3>#Trending</h3>
                <ul>
                	<li># Shaktiman</li>
                	<li># SGSITS Result</li>
                	<li># Jolly LLB-2</li>
                    <li># Pointers</li>
                </ul>
            </div>
        </div>

        
        <div class="stories fadeInDown animated col-lg-8 col-sm-12">
            <div class="card">
                <h3>Top Stories</h3>
                    <ul>
                    <li>Will SGSITS conduct Aayaam this year ??</li>
                    <li>Salman Khan kab shadi krega</li>
                    </ul>
            </div>
        </div>
    
    
	</div>
    
    
    
    
    
    <div class="footer">
    <h3>Answers to all your Questions</h3>
    </div>
	
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
    var modal1 = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal1) {
        modal1.style.display = "none";
    }
}
    
    </script>
</body>
</html>
