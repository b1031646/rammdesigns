<!DOCTYPE html>
<head>	
<title>RAMM Designs | view_post</title>

    <% /*  Resources Links for CSS/JS Files */ %>
    <g:layoutHead/>
    <r:require module="application"/>
    <r:layoutResources/>


</head>

<body>
<div id="container">
<div id="login">
<p><h3><g:loginControl/></h3></p>
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

<g:img alt="RAMM:Designs" class="logo" dir="images" file="img/logo.png" />

</div>



<!-- Top Content -->
<div class="main_content">
    
    <div id="about_page">
    
    <h2 class="title_blog">Welcome to our blog</h2>
    
    <p class="blog_info">Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
    Aenean non leo nisl. Duis lectus odio, semper eu ultricies sit amet,
    consectetur vel nunc. Nam gravida diam sapien. Nullam aliquet scelerisque 
    enim eget rhoncus. Duis lectus odio, semper eu ultricies sit amet,
    consectetur vel nunc. Nam gravida diam sapien. Nullam aliquet scelerisque 
    enim eget rhoncus.</p>
    
    </div>

    <div id="blog_content">
    
    <div id="sidebar">
        <h3>Please select a category:</h3>
        
        <ul class="menu_cat">
            <li><h2 class="category_list">Design</h2>
            
                <ul class="show_list">
                    <li><a>Inspiration</a></li>
                    <li><a>Photography</a></li>
                    <li><a>Web-design</a></li>
                </ul>
            
            </li>
            
            <li><h2 class="category_list">Tutorials</h2>
            
                <ul class="show_list">
                    <li><a>Photoshop</a></li>
                    <li><a>Illustrator</a></li>
                    <li><a>PHP tricks</a></li>
                    <li><a>HTML + CSS</a></li>
                    <li><a>Java Script</a></li>
                </ul>
            
            </li>
            
            <li><h2 class="category_list">Work Awersome</h2>
            
                <ul class="show_list">
                    <li><a>Office work</a></li>
                    <li><a>Your workplace</a></li>
                    <li><a>Useful habits</a></li>
                </ul>
            
            </li>
            
            <li><h2 class="category_list">Offline</h2>
            
                <ul class="show_list">
                    <li><a>Healthy Life</a></li>
                    <li><a>Relationships with people</a></li>
                </ul>
            
            </li>
            
            <li><h2 class="category_list">Freebie</h2>
            
                <ul class="show_list">
                    <li><a>Fonts</a></li>
                    <li><a>PSD templates</a></li>
                    <li><a>Wallpapers</a></li>
                    <li><a>Icons</a></li>
                </ul>
            
            </li>
        </ul>
    
        <h3 class="blog_search">Search:</h3>
        
        <input type="text" class="autoclear" name="search" value="Search the blog" />
        
        <h3 class="sponsors">Sponsors:</h3>
        
        <div class="sponsor_img">
            <img alt="sponsor" src="img/sponsors/1.png" />
            <img alt="sponsor" class="last_img" src="img/sponsors/1.png" />
            <img alt="sponsor" src="img/sponsors/1.png" />
            <img alt="sponsor" class="last_img"  src="img/sponsors/1.png" />
        </div>
        
    </div>
    <div class="post_container">
    
    <div class="view_post">
        <h1>10 New Clean &#38; Minimalist Websites to Inspire You</h1>
        <h4>Posted by: <a>Nikita Belousov</a> on Jan 23, 2012 Located in: <a>Inspiration</a></h4>
        
        <img alt="post img" class="post_img" src="img/blog/1.png" />
        
        <p>Quisque eu metus leo, ac gravida quam. Sed mollis justo nec felis 
        vulputate malesuada. Vestibulum sed nulla mi. Duis iaculis mollis mi, 
        non porttitor ipsum consequat non. <a>Aenean in risus dolor, vel blandit 
        massa</a>. Proin nibh odio, vestibulum eget egestas vulputate, sollicitudin quis justo.
        Quisque eu metus leo, ac gravida quam. <a>Sed mollis justo nec felis </a>
        vulputate malesuada. Vestibulum sed nulla mi. Duis iaculis mollis mi, 
        non porttitor ipsum consequat non. Aenean in risus dolor, vel blandit 
        massa. Proin nibh odio, vestibulum eget egestas vulputate, sollicitudin quis justo.</p>
        
        <h2><a>Makr Carry Goods</a></h2>
        <img alt="any img" src="img/blog/post/1.jpg" />
        
        <h2><a>8020 Studio</a></h2>
        <img alt="any img" src="img/blog/post/2.jpg" />
        
        <h2><a>Shape</a></h2>
        <img alt="any img" src="img/blog/post/3.jpg" />
        
        <h2><a>Claire Coullon</a></h2>
        <img alt="any img" src="img/blog/post/4.jpg" />
        
        <h2><a>Republic2</a></h2>
        <img alt="any img" src="img/blog/post/5.jpg" />
        
        <h2><a>Image Mechanics</a></h2>
        <img alt="any img" src="img/blog/post/6.jpg" />
        
        <h2><a>The Noble Union</a></h2>
        <img alt="any img" src="img/blog/post/7.jpg" />
        
        <h2><a>AKQA</a></h2>
        <img alt="any img" src="img/blog/post/8.jpg" />
        
        <h2><a>SouthSouthWest</a></h2>
        <img alt="any img" src="img/blog/post/9.jpg" />
        
        <h2><a>Mario Hugo</a></h2>
        <img alt="any img" src="img/blog/post/10.jpg" />
        
        <div class="relative_posts"></div>
    
    </div>
    
    <div id="author">
        <h2>About author:</h2>
        <img alt="author avatar" class="author_img" src="img/blog/author.png" />
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
        Pellentesque accumsan ultricies sagittis. Nam sodales tempus mi nec aliquet. 
        Etiam sapien elit, <a>bibendum a viverra quis, interdum et nulla</a>. 
        Mauris varius purus in <a>tellus condimentum feugiat a sed</a> risus. 
        Maecenas adipiscing lorem eu nunc pellentesque pellentesque.</p>
    </div>
    
    <div id="comments">
    <h2>Add a comment:</h2>
    <form class="comments" method="post" action="comments.php">
        <input class="autoclear" name="name" type="text" value="Enter your name" /> *Required <br />
        <input class="autoclear" name="mail" type="text" value="Enter your E-mail" /> *Required <br />
        <textarea cols="40" rows="10" name="messages"></textarea>   
        
        <div class="button_cont">
        <a class="button">Comment</a>
        </div> 
    </form>
    </div>
    
    <div id="comment_list">
    
        <div class="comment">
            <img alt="avatar" class="avatar" src="img/comments/1.png" />
            <div class="comment_content">
                <h2>Alexey said:</h2>
                <h4>Date: 22.01.2012</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                Pellentesque accumsan ultricies sagittis. Nam sodales tempus mi nec aliquet.</p> 
            </div>
        </div>
        
        <div class="comment">
            <img alt="avatar" class="avatar" src="img/comments/2.png" />
            <div class="comment_content">
                <h2>Alexandr said:</h2>
                <h4>Date: 22.01.2012</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                Pellentesque accumsan ultricies sagittis. Nam sodales tempus mi nec aliquet.
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                Pellentesque accumsan ultricies sagittis. Nam sodales tempus mi nec aliquet. 
                Etiam sapien elit, <a>bibendum a viverra quis, interdum et nulla</a>. 
                Mauris varius purus in <a>tellus condimentum feugiat a sed</a> risus. 
                Maecenas adipiscing lorem eu nunc pellentesque pellentesque.</p> 
            </div>
        </div>
        
        <div class="comment">
            <img alt="avatar" class="avatar" src="img/comments/3.png" />
            <div class="comment_content">
                <h2>Maria said:</h2>
                <h4>Date: 21.01.2012</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                Pellentesque accumsan ultricies sagittis. Nam sodales tempus mi nec aliquet.
                <a>tellus condimentum feugiat a sed</a> risus. 
                Maecenas adipiscing lorem eu nunc pellentesque pellentesque.</p> 
            </div>
        </div>
        
        <div class="comment">
            <img alt="avatar" class="avatar" src="img/comments/4.png" />
            <div class="comment_content">
                <h2>Nastya said:</h2>
                <h4>Date: 20.01.2012</h4>
                <p>Lorem ipsum dolor sit amet!</p> 
            </div>
        </div>
        
        <div class="comment">
            <img alt="avatar" class="avatar" src="img/comments/5.png" />
            <div class="comment_content">
                <h2>Roman said:</h2>
                <h4>Date: 18.01.2012</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                </p> 
            </div>
        </div>
        
        <div class="comment">
            <img alt="avatar" class="avatar" src="img/comments/6.png" />
            <div class="comment_content">
                <h2>Dima said:</h2>
                <h4>Date: 18.01.2012</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                Pellentesque accumsan ultricies sagittis. Nam sodales tempus mi nec aliquet.
                Pellentesque accumsan ultricies sagittis.</p> 
            </div>
        </div>
  
    </div>
    
    </div>
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
