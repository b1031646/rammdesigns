<!DOCTYPE html>
<head>	

<title>RAMM Designs | Home</title>


<!-- Resources Links for CSS/JS Files -->
 
    <g:layoutHead/>
<swfobject:resources />
    <r:require module="application"/>
	

    <r:layoutResources/>


</head>

<body id="home">



<g:if test="${subscription?.name}">
     <body onLoad="document.subscriptionForm.subscribe.focus()">
</g:if>
<g:if test="${subscription?.email}">
     <body onLoad="document.subscriptionForm.subscribe.focus()">
</g:if>
<g:if test="${subscription?.name == ''}">
     <body onLoad="document.subscriptionForm.subscribe.focus()">
</g:if>
<g:if test="${subscription?.email == ''}">
     <body onLoad="document.subscriptionForm.subscribe.focus()">
</g:if>
<g:if test="${flash.message == 'You have successfully subscribed. Thank you.'}">
     <body onLoad="document.subscriptionForm.subscribe.focus()">
</g:if>



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

        <li class="current"><g:link controller="home" action="index" class="transition">Home</g:link></li>
        <li><g:link controller="home" action="products" class="transition">Products</g:link></li>
	<li><g:link controller="home" action="about" class="transition">About</g:link></li>
        <li><g:link controller="home" action="team" class="transition">Meet Our Team</g:link></li>
        <li><g:link controller="home" action="contact" class="transition">Contact Us</g:link></li>
	
</ul>

<g:img alt="RAMM:Designs" class="logo" dir="images" file="img/logo.png" />

</div>





<!-- Top Content -->
<div class="main_content">

<div id="top_content">

    <div class="latest_gallery">    




        <div class="latest_img"><a href="${createLink(action:'facebook', controller:'home')}" target="_blank"><g:img dir="images"  file="img/social-media/Facebook.png"/></a></div>
        <div class="latest_img"><a href="${createLink(action:'twitter', controller:'home')}" target="_blank"><g:img dir="images"  file="img/social-media/Twitter.png"/></a></div>
        <div class="latest_img last_img"><a href="${createLink(action:'google', controller:'home')}" target="_blank"><g:img dir="images"  file="img/social-media/Google.png"/></a></div>
        
        <div class="latest_img"><a href="${createLink(action:'youtube', controller:'home')}" target="_blank"><g:img dir="images"  file="img/social-media/Youtube.png"/></a></div>
        <div class="latest_img"><a href="${createLink(action:'pinterest', controller:'home')}" target="_blank"><g:img dir="images"  file="img/social-media/Pinterest.png"/></a></div>
        <div class="latest_img last_img"><a href="${createLink(action:'rss', controller:'home')}" target="_blank"><g:img dir="images"  file="img/social-media/RSS.png"/></a></div>
    </div> 


<!--  Code for Flash Banner -->

<div class="main_img">
<script type="text/javascript">
   $(document).ready(function() {
      var flashvars = {
         scriptURL: 'http://www.hiddenagenda.dj/top_banner.swf'
      };
      swfobject.embedSWF("<g:createLink controller="binary" action="loop" id="1" />", "myId", "100%", "100%", "9.0.0", "<swfobject:expressInstallSWF />", flashvars);
   });
</script>

<object type="video/webm" data="http://www.hiddenagenda.dj/top_banner.swf" width="595" height="200">
  <param name="src" value="http://www.hiddenagenda.dj/top_banner.swf" />
<param name='uiMode' value='invisible' >
<param name='controls' value='hidden' >
</object>
</div> 
</div>

<!--  Code for Flash Banner -->


<!-- Our best work -->

<div id="best_work">

    <div class="best_work">
    <h3>Our Expertise</h3>
    
    <div><g:link controller="product" action="category" id="${params.category}" params="[category: 'Logo Design']" class="transition" ><g:img alt="" class="transition" dir="images" file="img/product-tiles/logodesign.png" /></g:link>
        <g:link controller="product" action="logo_design" class="transition" ><g:img alt="" class="view" dir="images"  file="img/linz.png" /></g:link>
    </div>
    
    <div><g:link controller="product" action="category" id="${params.category}" params="[category: 'Banner Design']" class="transition" ><g:img alt="" class="transition" dir="images" file="img/product-tiles/bd.png" /></g:link>
        <g:link controller="home" action="products" class="transition" ><g:img alt="" class="view" dir="images"  file="img/linz.png" /></g:link>
    </div>
    
    <div class="last_img"><g:link controller="product" action="category" id="${params.category}" params="[category: 'Poster Design']" class="transition" ><g:img alt="Best work" class="transition" dir="images" file="img/product-tiles/posterdesign.png" /></g:link>
        <g:link controller="home" action="products" class="transition" ><g:img alt="" class="view" dir="images"  file="img/linz.png" /></g:link>
    </div>
    
    <div><g:link controller="product" action="category" id="${params.category}" params="[category: 'Business Card Design']" class="transition" ><g:img alt="" class="transition" dir="images" file="img/product-tiles/businesscarddesign.png" /></g:link>
        <g:link controller="home" action="products" class="transition" ><g:img alt="" class="view" dir="images"  file="img/linz.png" /></g:link>
    </div>
    
    <div><g:link controller="product" action="category" id="${params.category}" params="[category: 'Social Media Design']" class="transition" ><g:img alt="" class="transition" dir="images" file="img/product-tiles/socialmediadesign.png" /></g:link>
        <g:link controller="home" action="products" class="transition" ><g:img alt="" class="view" dir="images"  file="img/linz.png" /></g:link>
    </div>
    
    <div class="last_img"><g:link controller="home" action="index" class="transition" ><g:img alt="Best work" class="transition" dir="images" file="img/product-tiles/needsomethingelse.png" /></g:link>
        <g:link controller="home" action="products" class="transition" ><g:img alt="" class="view" dir="images"  file="img/linz.png" /></g:link>
    </div>
    
    </div>
    

    
</div>

<!-- How to Contact Us, What we do -->

<div id="info">

    <div class="info_clients">
       <p> <h3>Previous Clients</h3></p>
<br>
 <div class="previous_clients">

<div class="wrapper">

<div id = "imageone">
<div onmousedown="return false"><div id="Mastercardimage1"><img src="http://www.hiddenagenda.dj/ramm/Mastercard1.png" alt="" onmouseover=" this.src='http://www.hiddenagenda.dj/ramm/Mastercard2.png'" onmouseout=" this.src='http://www.hiddenagenda.dj/ramm/Mastercard1.png'" /></div>
</div>
</div>

<div id = "imageone">
<div onmousedown="return false">
<div id = "BMWimage"><img src="http://www.hiddenagenda.dj/ramm/BMW1.png" alt="" onmouseover=" this.src='http://www.hiddenagenda.dj/ramm/BMW2.png'" onmouseout=" this.src='http://www.hiddenagenda.dj/ramm/BMW1.png'" /></div>
</div>
</div>

<div id = "imageone">
<div onmousedown="return false">
<div id = "Asusimage"><img src="http://www.hiddenagenda.dj/ramm/Asus1.png" alt "" onmouseover=" this.src='http://www.hiddenagenda.dj/ramm/Asus2.png'" onmouseout=" this.src='http://www.hiddenagenda.dj/ramm/Asus1.png'" /></div>
</div>
</div>

<div id = "imageone">
<div onmousedown="return false">
<div id =  "Shellimage"><img src="http://www.hiddenagenda.dj/ramm/Shell1.png" alt="" onmouseover=" this.src='http://www.hiddenagenda.dj/ramm/Shell2.png'" onmouseout=" this.src='http://www.hiddenagenda.dj/ramm/Shell1.png'" /></div></div>
</div>

<div id = "imageone">
<div onmousedown="return false">
<div id = "Dellimage"><img src="http://www.hiddenagenda.dj/ramm/Dell1.png" alt="" onmouseover=" this.src='http://www.hiddenagenda.dj/ramm/Dell2.png'" onmouseout=" this.src='http://www.hiddenagenda.dj/ramm/Dell1.png'" /></div></div>
</div>
</div>



</div> 
</div>       
    </div>
   
</div>



<div id="latest_news">
<h3>Recent Projects</h3>

    <div class="post">
        
    <div class="info_item float">
        <h3><g:link controller="view_Post" class="transition">MovieMail</g:link></h3>
        <p>We worked with one of the leading movies-by-post companies in order to freshen up the brand image for a successful marketing campaign.<br>
<br>
<b><i>"RAMM Designs worked very closely with our marketing team to turn our visions into reality and put MovieMail back in the spotlight."</i></b></p>
    </div>
    
        <g:link controller="view_work" action="contacts" class="transition"><g:img dir="images" file="img/latest_news/moviemail.png" title="View post" alt="Movie Mail Ltd"/></g:link>
        


    </div>	

    <div class="post">
        
    <div class="info_item float">
         <h3><g:link controller="view_Post" class="transition">Freht</g:link></h3>
        <p>Freht are an industrial haulage company operating in Germany. They wanted to stand out from the crowd and our talented team of designers helped made this happen.<br>
<br>
<b><i>"After operating in the haulage industry for thirty years we decided to overhaul the company's image. RAMM delivered the goods."</i></b></p>
    </div>
    
    <a class="transition"<g:link controller="home" action="contacts" class="transition"><g:img dir="images" file="img/latest_news/freht.png" title="View post" alt="Freht Ltd"/></g:link>

    </div>

</div>

<!-- Social -->

<div id="social">
    
    <div class="follow_team">
        <h3>Follow our team</h3>
        <div class="team_preview">
            <div><g:link controller="home" action="team" class="transition"><g:img dir="images" file="img/team/colledge.png" title="RAMM Employee" alt="Matt"/></g:link><br />
                 <span>Matt</span>
            </div>
            
            <div><g:link controller="home" action="team" class="transition"><g:img dir="images" file="img/team/pitts.png" title="RAMM Employee" alt="Rich"/></g:link><br />
                 <span>Rich</span>
            </div>
            
            <div ><g:link controller="home" action="team" class="transition"><g:img dir="images" file="img/team/yildiz.png" title="RAMM Employee" alt="Mike"/></g:link><br />
                  <span>Mike</span>
            </div>
            

            <div class="last_img"><g:link controller="home" action="team" class="transition"><g:img dir="images" file="img/team/stanfield.png" title="RAMM Employee" alt="Arron"/></g:link><br />
                  <span>Arron</span>
            </div>
            
        </div>

    </div>

    <div class="subscription">
        <h3>Subscription</h3>
        <p>Sign up to our mailing list to receive the latest news, offers and information from the world of RAMM Designs. </p>


        <g:form action="index" name="subscriptionForm">
        
<input type="text" class="autoclear" name="name" value="Enter your name"/>
<input type="text" class="autoclear" name="email" value="Enter your email"/>
     


<g:submitButton class="subscribeButton" name="subscribe" value="Subscribe"></g:submitButton>


        </g:form>
        <g:if test="${flash.message == 'You have successfully subscribed. Thank you.'}">
     <div id ="success"> 
<br>
${flash.message}
     <g:hasErrors bean="${subscription}">
       <div class="errors">
         <g:renderErrors bean="${subscription}"></g:renderErrors>
       </div>
     </g:hasErrors>
</div>
</g:if>

<g:if test="${flash.message != 'You have successfully subscribed. Thank you.'}">
<div id ="errors"> 
<br>
${flash.message}
     <g:hasErrors bean="${subscription}">
       <div class="errors">
         <g:renderErrors bean="${subscription}"></g:renderErrors>
       </div>
     </g:hasErrors>
</div>
</g:if>
    </div>
    
</div>


<div id="footer">
<hr>
<br>
    &#169; RAMM Designs 2013. All rights reserved.
    
    <ul class="footer_navi">
      <li class="current"><g:link controller="home" action="index" class="transition">Home</g:link></li>
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
