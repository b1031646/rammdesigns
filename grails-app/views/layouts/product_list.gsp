<!DOCTYPE html>
<head>	
<title>RAMM Designs | Product List</title>

    <% /*  Resources Links for CSS/JS Files */ %>
    <g:layoutHead/>
    <r:require module="application"/>
    <r:layoutResources/>


</head>

<body id="view_work">
<div id="container">
<div id="login">
<p id="logintaglib"><g:loginControl/></p>
</div>
    <div class="stripe"></div>

<div id="content">

<!-- Header -->

<div id="header">

<div id="loader"><img alt="" src="img/ajax-loader.gif" /></div>

<ul class="main_navi">
    <li><g:link controller="home" action="index" class="transition">Home</g:link></li>
        <li><g:link controller="home" action="products" class="transition">Products</g:link></li>
	<li><g:link controller="home" action="about" class="transition">About</g:link></li>
        <li><g:link controller="home" action="team" class="transition">Meet Our Team</g:link></li>
        <li><g:link controller="home" action="contact" class="transition">Contact Us</g:link></li>
</ul>

<div onmousedown="return false"><g:img alt="RAMM:Designs" class="logo" dir="images" file="img/logo.png" /></div>

</div>



<!-- Top Content -->
<div class="main_content">

    <div id="about_page">

    <h2 class="title_blog">TITLE</h2>
    
    <p class="blog_info">CONTENT HERE</p>
    
    </div>

    <div id="blog_content">
    
    <div id="sidebar">
        <h3>Please select a category:</h3>
        
        <ul class="menu_cat">
            <li><h2 class="category_list">Banners</h2>
            
                <ul class="show_list">
                    <li><a>Size1</a></li>
                    <li><a>Size2</a></li>
                </ul>
            
            </li>
            
            <li><h2 class="category_list">Logos</h2>
            
                <ul class="show_list">
                    <li><a>Size1</a></li>
                    <li><a>Size2</a></li>
                </ul>
            
            </li>
            
            <li><h2 class="category_list">Posters</h2>
            
                <ul class="show_list">
                    <li><a>Size1</a></li>
                    <li><a>Size2</a></li>
                </ul>
            
            </li>
            
            <li><h2 class="category_list">Fliers</h2>
            
                <ul class="show_list">
                    <li><a>Size1</a></li>
                    <li><a>Size2</a></li>
                </ul>
            
            </li>
            
            <li><h2 class="category_list">Other</h2>
            
                <ul class="show_list">
                    <li><a>Size1</a></li>
                    <li><a>Size2</a></li>
                </ul>
            
            </li>
        </ul>
    
        <h3 class="blog_search">Search:</h3>
        
        <input type="text" class="autoclear" name="search" value="Search the blog" />
        
        <h3 class="sponsors">Sponsors:</h3>
        
        <div class="sponsor_img">
	<g:img dir="images"  file="img/sponsors/1.png"/>
	<g:img dir="images" class="last_img" file="img/sponsors/1.png"/>
	<g:img dir="images"  file="img/sponsors/1.png"/>
	<g:img dir="images" class="last_img" file="img/sponsors/1.png"/>
        </div>
        
    </div>
    
    <div class="view_post">
        <h1><a class="transition" href="view_post.htm">Product Title</a></h1>
        <h4>Posted by: <a>Nikita Belousov</a> on Jan 23, 2012 Located in: <a>Inspiration</a></h4>
        
        <g:img dir="images" alt="post img" file="img/blog/1.png"/>
        
        <p>Description Here <a class="transitional" href="view_post.htm">Read more..</a></p>
    </div>
    
    <div class="view_post">
        <h1><a class="transition" href="view_post.htm">21 Inspiring Examples of Dark Colors in Web Design</a></h1>
        <h4>Posted by: <a>Nikita Belousov</a> on Jan 23, 2012 Located in: <a>Inspiration</a></h4>
        
        <g:img dir="images" alt="post img" file="img/blog/2.png"/>
        
        <p>Description Here<a class="transitional" href="view_post.htm">Read more..</a></p>
    </div>
    
      
<div id="footer">
<hr>
<br>
    &#169; RAMM Designs 2013. All rights reserved.
    
    <ul class="footer_navi">
     <li><g:link controller="home" action="index" class="transition">Home</g:link></li>
        <li><g:link controller="home" action="products" class="transition">Products</g:link></li>
	<li><g:link controller="home" action="about" class="transition">About</g:link></li>
        <li><g:link controller="home" action="team" class="transition">Meet Our Team</g:link></li>
        <li><g:link controller="home" action="contact" class="transition">Contact Us</g:link></li>
    </ul>

</div>

</div>
</div>
</div>
<r:layoutResources/>	
</body>
</html>
