<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> 9PIXELSTUDIO </title>

    <!-- Bootstrap -->
    <link href="resources/css/nomalize.css" rel="stylesheet">
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
    <link href="resources/css/animate.css" rel="stylesheet">
    <link href="resources/css/jquery.fancybox.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<body id="home" data-spy="scroll" data-target="#navbar-scroll" data-offset="50">
  <div class="container-fluid"  >     
        <div class="container">
          <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar-scroll">
            <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#"><img src="./imgs/logo.png" alt="9PixelStudio"> </a>
            </div>
           
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-1-collapse">
              <ul class="nav navbar-nav">
                <li><a href="#home" onclick="$('#home').animatescroll();">home </a></li>  
                <li><a href="#about" onclick="$('#about').animatescroll();">about </a></li>  
                <li><a href="#portfolio" onclick="$('#portfolio').animatescroll();">portfolio </a></li>  
                <li><a href="#contact" onclick="$('#contact').animatescroll();">contact </a></li>                  
              </ul>
            </div>
            </div><!-- /.navbar-collapse -->
          </nav>
        </div>   
        <div id="carousel-generic" class="carousel slide">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#carousel-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-generic" data-slide-to="1"></li>
            <li data-target="#carousel-generic" data-slide-to="2"></li>
            <li data-target="#carousel-generic" data-slide-to="3"></li>
            <li data-target="#carousel-generic" data-slide-to="4"></li> 
            <li data-target="#carousel-generic" data-slide-to="5"></li>
            <li data-target="#carousel-generic" data-slide-to="6"></li>                
          </ol>
  
           <!-- Carousel items -->
           <div class="carousel-inner">
              <div class="item active">
                 <img src="./imgs/1.jpg" alt="First slide">
              </div>
              <div class="item">
                 <img src="./imgs/2.jpg" alt="Second slide">              
              </div>
              <div class="item">
                 <img src="./imgs/3.jpg" alt="Third slide">               
              </div>
              <div class="item">
                 <img src="./imgs/4.jpg" alt="Third slide">               
              </div>
              <div class="item">
                 <img src="./imgs/5.jpg" alt="Third slide">               
              </div>                            
              <div class="item">
                 <img src="./imgs/7.jpg" alt="Third slide">               
              </div>                              
           </div>
          <!-- Controls -->
            <a class="left carousel-control" href="#carousel-generic" data-slide="prev">
               <img src="./imgs/left.png" class="control">
            </a>
            <a class="right carousel-control" href="#carousel-generic" data-slide="next">
              <img src="./imgs/right.png" class="control">
            </a>
        </div>

          <div class="container">
              <div class="row service wp1">
                  <div class="col-xs-6 col-md-3">  
                      <div class="row">
                        <a href="#">
                          <div class="col-xs-4 col-md-12"> <span class="glyphicon glyphicon-certificate icons"> </span></div>
                          <div class="col-xs-8 col-md-12 icontxt">
                            <h4>Fresh &amp; clean design</h4>
                            <p>ê¹ëíê³  ì¸ë ¨ë ì¹ ë° ê·¸ëí½ ëìì¸ì êµ¬íí©ëë¤.</p>
                          </div>
                       </a>
                      </div>                 
                   </div>         
                    <div class="col-xs-6 col-md-3"> 
                      <div class="row">
                        <a href="#">
                          <div class="col-xs-4 col-md-12"> <span class="glyphicon glyphicon-phone icons"> </span></div>
                          <div class="col-xs-8 col-md-12 icontxt">
                             <h4>Fully responsive</h4>
                             <p>9pixelstudioìì ë§ëë ì¹ ì¬ì´í¸ë ë°ìí ì¹ ì¬ì´í¸ë¥¼ ê¸°ë³¸ì¼ë¡ ììí©ëë¤.</p>
                          </div>
                        </a> 
                      </div>                                         
                    </div>
                    <div class="col-xs-6 col-md-3"> 
                      <div class="row">
                        <a href="#">
                          <div class="col-xs-4 col-md-12"><span class="glyphicon glyphicon-refresh icons"> </span></div>
                          <div class="col-xs-8 col-md-12 icontxt">
                             <h4>Very flexible</h4>
                             <p>HTML5ì CSS3 ê¸°ë°ì¼ë¡ ì ìë ì¹ íì´ì§ë ìì ê³¼ ì ì§ ë³´ìê° ë¹ ë¥´ê³  ê°í¸í©ëë¤.</p>
                          </div>
                        </a>    
                      </div> 
                    </div>
                    <div class="col-xs-6 col-md-3"> 
                      <div class="row">
                       <a href="#">
                        <div class="col-xs-4 col-md-12"><span class="glyphicon glyphicon-user icons"> </span></div>
                        <div class="col-xs-8 col-md-12 icontxt">
                           <h4>For customer</h4>
                           <p>ê³ ê°ì ìêµ¬ì ë°ë¥¸ ìµìì ê²°ê³¼ë¬¼ì ì ê³µí´ ëë¦½ëë¤.</p>
                        </div>
                       </a> 
                      </div>                 
                   </div>
                </div>
            </div> <!-- icons end-->
         <div id="about"></div>
         <header class="content1">  <!-- about start-->
             <div class="container">
                <h1><small>9PIXELSTUDIOë ì¹ íì¤(Web Standard)ì¼ë¡ ì¬ì´í¸ë¥¼ êµ¬ì¶í©ëë¤.</small></h1>
                <p>HTML5ì CSS3 ê·¸ë¦¬ê³  jQuery ê¸°ë°ì¼ë¡ í ìµì ì ì¹ì¬ì´í¸ë¥¼ êµ¬ì¶íë©°, íëìë¥¼ ì í ì¬ì©íì§ ìê³ , ì¸ë ¨ë UIë¥¼ êµ¬íí©ëë¤.</p>
              </div><!-- end .container -->
         </header> 
         <div class="container about" >
           <h1 class="wp3 delay-05s"><img src="./imgs/9pixel.gif" alt="" class="img-responsive"></h1>
           <div class="row">
             <div class="col-md-4">
               <img src="./imgs/about1.jpg" alt="" class="img-responsive">
             </div>
             <div class="col-md-8">
              <p> 9pixelstudio ëí ìì©ìì 1995ë êµ­ë´ ìµì´ ISP ì¸í°í¼ì ì¹ë§ì¤í°ë¡ì¨ ì¸í°í¼ì ì¹ì¬ì´í¸ ê¸°í/ì ì/ì ì§ë³´ìë¥¼ ë´ë¹íìì¼ë©°, ëì°ê·¸ë£¹ ì¹ì¬ì´í¸ ê¸°í/ê°ë°/ì ì§ë³´ì, ëì°ê³ì´ì¬ ì¹ë§ì¤í° êµì¡ ë´ë¹, êµ­ì  ì ë ì°ë§¹ ì¹ì¬ì´í¸ ê¸°í/ê°ë°, ëì°ê·¸ë£¹ ëì°íì , ëì°ë² ì´ì¤, ì¤ë¹ë§¥ì£¼, êµ­ì ì ë ì°ë§¹ ì¹ì¬ì´í¸ ê¸°í/ê°ë°/ì ì§ë³´ì ë° ìì©ìíí¸ ì¹ì¬ì´í¸ ê¸°ííì¼ë©°, 2000ëë¶í° ì¨ë¼ì¸ ì´ë²¤í¸ ì¬ì´í¸ ì íë ì¹ì¬ì´í¸ ê¸°í/ê°ë°/ë§ì¼í íêµ­ ë³¸ë¶ì¥ì ì­ìíììµëë¤. 2002ë ë¶í°ë ê²ì ì¬ì´í¸ì¸ ë¼ê·¸íì ì¹ì¬ì´í¸ ê¸°í/ê°ë°íìì¼ë©°, 2004ëë¶í°ë íì°ë¦¬ ëì ì´ë ë³¸ë¶ ì¬ì´í¸ ë¦¬ë´ì¼, ë©´ì¸ì  í ì¸ ì¿ í° ì¬ì´í¸ê¸°í ë° ì¤ê³íìµëë¤. 2005ëìë ì ì£¼ë¡ ë´ë ¤ì ì¨ë¼ì¸ ìì´ íê° ìì¤í ì´ëª¨ì½ëì¤ê³ ê°ë° ê¸°í ì´ê´ì ë´ë¹íì¼ë©°, ëí ëë°ì´ 5ì±ê¸ í¸íì¸ ìììë í¸í, ê²½ì ì ë¬¸ ì¶íì¬ ì¤ë§í¸ë¶ì¤ ì¹ ì¬ì´í¸, DB ë³´ìì ë¬¸íì¬ ãì ìì¨ì´ ì¹ ì¬ì´í¸, (ì¬) ì ì£¼ê´ê´ë¬¸íì°ìì§í¥ì ì¹ì¬ì´í¸ ê°ë° ë± ì¹ ì¬ì´í¸ ì ì ë° ë¶ìëë ê·¸ëí½ ëìì¸ ìì ë±ì ë³ííìµëë¤. ì§ê¸ê¹ì§ ì´ 4ê¶ì ì±ì ì¶ê°íì¬, HTML5ì CSS3ì ëí í´ë°í ì§ìì ë³´ì íê³  ììµëë¤.
              </p>
             </div>
           </div>

           <hr>
           
         <div class="row">
           <div class="col-md-6">
             <!-- ì´ì½ëì¸ -->
               <h3>Why 9pixelstudio? </h3>
                <div class="panel-group" id="accordion">
                    <div class="panel">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                            <span class="glyphicon glyphicon-star"> </span> 18ë ëì ì¹ ì¬ì´í¸ë¥¼ ì ë¬¸ì ì¼ë¡ ì ìí´ ììµëë¤.
                          </a>
                        </h4>
                      </div>
                      <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                          ëì° ê·¸ë£¹ ì¹ ì¬ì´í¸ ë¶í° ììíì¬, ëì°ë² ì´ì¤, êµ­ì ì ëì°ë§¹ ë° ëí ê²ì ì¬ì´í¸, ì¼íëª°  ë±  ì§ê¸ê¹ì§ 50ì¬ê°ê° ëë ë¤ìí  ì¬ì´í¸ë¥¼ ììí´ ìì¼ë©° íë¶í ì¤ë¬´ ê²½íì ê°ì¶ê³  ììµëë¤.

                        </div>
                      </div>
                    </div>
                    <div class="panel">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                            <span class="glyphicon glyphicon-star"> </span> HTML5ì CSS3ì ê´ë ¨ë ìì ë§ 4ê¶ì ì§ííììµëë¤.
                          </a>
                        </h4>
                      </div>
                      <div id="collapseTwo" class="panel-collapse collapse ">
                        <div class="panel-body">
                            <div class="ip">
                                HTML5ì CSS3ì ê´ë ¨ë ì ë¬¸ ìì ì 4ê¶ì´ë ì§ííì¬, í´ë¹ ë¶ì¼ì ëí ì ë¬¸ì ì¸ ì§ìì ë³´ì íê³  ììµëë¤.
                                <div class="booklist">
                                    ì²ìë¶í° ë¤ì ë°°ì°ë HTML5&#38;CSS3, ì ë©´ê°ì í (2013ë 9ì) ,
                                    ì²ì ììíë CSS&#38;ìëíë ì¤ (2012ë 12ì), 
                                    ì´ì  ì¤ì ì´ë¤ HTML5&#38;CSS3 ì¬ì´í¸ ì ìì ëª¨ë  ê² (2012ë 4ì), 
                                    ì²ìë¶í° ë¤ì ë°°ì°ë HTML5&#38;CSS3 (2011ë 9ì)
                                </div>
                            </div>
                        </div>
                      </div>
                    </div>
                    <div class="panel">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                            <span class="glyphicon glyphicon-star"> </span> ìëíë ì¤ ê¸°ë°ì¼ë¡ ì¬ì´í¸ë¥¼ ì ì
                          </a>
                        </h4>
                      </div>
                      <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                             ê³ ê°ì´ ìêµ¬í  ììë ê°ë ¥í CMS(Content Management System)ì¸ ìëíë ì¤ ê¸°ë°ì¼ë¡ ì¬ì´í¸ë¥¼ ì ìíì¬, ì½ê³  ë¹ ë¥´ê³  í¸ë¦¬íê² ì¹ ì¬ì´í¸ë¥¼ ê´ë¦¬ í  ì ììµëë¤.           
                        </div>
                      </div>
                    </div>
                   <div class="panel">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapsefour">
                            <span class="glyphicon glyphicon-star"> </span> ì¼íëª° ì¬ì´í¸  ì ì 
                          </a>
                        </h4>
                      </div>
                      <div id="collapsefour" class="panel-collapse collapse ">
                        <div class="panel-body">
                             ê¸°ìì© ì¹ ì¬ì´í¸ ë¿ë§ ìëë¼, ì¼íëª° ì¬ì´í¸ë ì ìíë©°, cafe24, ë©ì´í¬ìµ, ê³ ëëª°ê³¼ ê°ì ì¼íëª° í¸ì¤íì ë§ë ìµì íë ì¬ì´í¸ë¥¼ ì ìí´ ëë¦½ëë¤.
                        </div>
                      </div>
                    </div> 
                   <div class="panel">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapsefive">
                            <span class="glyphicon glyphicon-star"> </span> ê·¸ëí½(ì¸ì) ëìì¸ ë° ë¶ ëìì¸ 
                          </a>
                        </h4>
                      </div>
                      <div id="collapsefive" class="panel-collapse collapse ">
                        <div class="panel-body">
                           9pixelstudioë ì¹ì¬ì´í¸ ì ì ë¿ë§ ìëë¼, ë¤ìí ê·¸ëí½ ëìì¸ë ê°ë¥í©ëë¤. ê¸°ì íë³´ì© ë¦¬íë , íë³´ì© ì±ì ë° íìí¬ì¸í¸ ë° í¤ë¸ë¥´ë¥¼ ì´ì©í íë¦¬ì  íì´ì ê¹ì§ ë¤ìí ììì í  ì ììµëë¤.  
                        </div>
                      </div>
                    </div>                                      
                </div>
             <!-- ì´ì½ëì¸ ë -->
          
            </div>
          
             <div class="col-md-5  col-md-offset-1">
               <h3>Books</h4>
                  <div class="book">
                      <img src="imgs/book/2.png" alt="" class="book2 img-responsive">
                      <img src="imgs/book/3.png" alt="" class="book3 img-responsive">
                      <img src="imgs/book/4.png" alt="" class="book4 img-responsive">                          
                  </div>
             </div>
           </div>
         </div>  <!-- about end-->

         <div  id="portfolio"></div>  <!-- í¬í¸í´ë¦¬ì¤ ìì -->
         <div class="content2"> 
          <header>
                <div class="container">
                    <h1><small>Portfolio</small></h1>
                    <p>2010ëë¶í° ìµê·¼ê¹ì§ 9pixelstudioê° ììí ê²°ê³¼ë¬¼ë¤ìëë¤.</p>
                </div><!-- end .container -->
         </header>
       </div>
         <div class="container portfolio  wp4 delay-05s" >
            <h2 class="sans">Site Development</h2>
              <div id="carousel-generic" class="carousel2 slide">
              <div class="carousel-inner">
                <div class="item active">
                   <div class="row"> <!-- ì¬ë¼ì´ë one --> 
                        <div class="col-xs-3 col-md-3">
                         <div class="thumbnail site">
                            <a class="fancybox" rel="gallery1" href="./imgs/portfolio/site1.jpg"><img src="./imgs/portfolio/site1.jpg" alt="..."></a>
                            <div class="caption">
                              <h4>ì ì£¼ê´ê´ë¬¸íì°ìì§í¥ì</h4>
                              <p>ì ì£¼ê´ê´ë¬¸íì°ìì§í¥ì ì¬ì´í¸ë¡ HTML5ì CSS3 ê·¸ë¦¬ê³  jQueryì php ê¸°ë°ì¼ë¡ ì ìëììµëë¤.</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-3 col-md-3">
                         <div class="thumbnail site">
                            <a class="fancybox" rel="gallery1" href="./imgs/portfolio/site2.jpg"><img src="./imgs/portfolio/site2.jpg" alt="..."></a>
                            <div class="caption">
                              <h4>(ì£¼)ì ìì¨ì´</h4>
                              <p>êµ­ë´ DB ë³´ì 3ë íì¬ ì¤ íëì¸ ì ìì¨ì´ ì¹ ì¬ì´í¸ ìëë¤. HTML5ì CSS3 ê¸°ë°ì¼ë¡ php íë¡ê·¸ëë° ëììµëë¤.</p>
                            </div>
                          </div>                                 
                        </div>
                        <div class="col-xs-3 col-md-3">
                         <div class="thumbnail site">
                            <a class="fancybox" rel="gallery1" href="./imgs/portfolio/site3.jpg"><img src="./imgs/portfolio/site3.jpg" alt="..."></a>
                            <div class="caption">
                              <h4>ëë°ì´ ìììë í¸í</h4>
                              <p>ëë°ì´ 5ì±ê¸ í¸íì¸ ìììë í¸í ì¬ì´í¸ìëë¤. XHTML1.0 ê³¼ CSS2 ê¸°ë°ì¼ë¡ 2009ë ì¹ íì¤ ì¬ì´í¸ë¡ ì ìëììµëë¤.</p>
                            </div>
                          </div>                          
                                      
                        </div>
                        <div class="col-xs-3 col-md-3">
                         <div class="thumbnail site">
                          <a class="fancybox" rel="gallery1" href="./imgs/portfolio/site4.jpg">
                            <img src="./imgs/portfolio/site4.jpg" alt="...">
                          </a>  
                            <div class="caption">
                              <h4>ëë°ì´ ë³´ë¼ì¹´ì´ í´ë½</h4>
                              <p>ëë°ì´ ìµë í´ë½ì¸ ë³´ë¼ì¹´ì´ í´ë½ ì¬ì´í¸ìëë¤. ì¹ íì¤ ê¸°ë°ì¼ë¡ ì ìëì´ ìì¼ë©°, ë¤ìí jQuery ê¸°ì ê³¼ php ê¸°ë°ì¼ë¡ ì ìëììµëë¤.</p>
                            </div>
                          </div>                          
                         
                        </div>
                   </div> <!-- ì¬ë¼ì´ë one end --> 
                </div>
                <div class="item">
                   <div class="row"> <!-- ì¬ë¼ì´ë one --> 
                        <div class="col-xs-3 col-md-3">
                         <div class="thumbnail site">
                          <a class="fancybox" rel="gallery1" href="./imgs/portfolio/site5.jpg">
                            <img src="./imgs/portfolio/site5.jpg" alt="...">
                           </a> 
                            <div class="caption">
                              <h4>ëë°ì´ ìë° ë ì¤í ë </h4>
                              <p>ìëíë ì¤ ê¸°ë°ì¼ë¡ ì ìëìì¼ë©°, ëë°ì´ìì ê°ì¥ ì ëªí íì, ì¤ì, ì¼ì ë ì¤í ëìëë¤.</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-3 col-md-3">
                         <div class="thumbnail site">
                          <a class="fancybox" rel="gallery1" href="./imgs/portfolio/site6.jpg">
                            <img src="./imgs/portfolio/site6.jpg" alt="...">
                          </a>  
                            <div class="caption">
                              <h4>ëë°ì´ ì¨ìë ë ì¤í ë </h4>
                              <p>í´ì°ë¬¼ ì ë¬¸ ë ì¤í ëì¼ë¡ ëë°ì´ìì ê°ì¥ ì ëªí ë ì¤í ë ì¤ íëìëë¤. HTML5ì CSS3 ê¸°ë°ì¼ë¡ ì ìëìì¼ë©°, jQueryë¥¼ ì ì©íììµëë¤.</p>
                            </div>
                          </div>                                 
                        </div>
                        <div class="col-xs-3 col-md-3">
                         <div class="thumbnail site">
                          <a class="fancybox" rel="gallery1" href="./imgs/portfolio/site7.jpg">
                            <img src="./imgs/portfolio/site7.jpg" alt="...">
                          </a>  
                            <div class="caption">
                              <h4>ìì´ë§í¸ ì¨ë¼ì¸ ì¼íëª°</h4>
                              <p>ëë°ì´ ìµë ììì í¸ë ë§ì¼</p>
                            </div>
                          </div>     
                        </div>
                        <div class="col-xs-3 col-md-3">
                         <div class="thumbnail site">
                          <a class="fancybox" rel="gallery1" href="./imgs/portfolio/site8.jpg">
                            <img src="./imgs/portfolio/site8.jpg" alt="...">
                           </a> 
                            <div class="caption">
                              <h4>ì¤ë§í¸ë¶ì¤</h4>
                              <p>ê²½ì ì ë¬¸ ìì  ì¶íì¬ ì¤ë§í¸ë¶ì¤ì ì¹ ì¬ì´í¸ìëë¤. ì¹ íì¤ ê¸°ë°ì¼ë¡ phpë¥¼ ì´ì©íì¬ ì ìëììµëë¤.</p>
                            </div>
                          </div> 
                        </div>
                   </div> <!-- ì¬ë¼ì´ë one end -->
                </div>              
              </div>
              </div>
           <h2 class="sans">Graphic Design</h2>  
           <div class="row">
             <div class="col-xs-3 col-md-3">
                <div class="thumbnail">
                  <a class="fancybox" rel="gallery2" href="./imgs/portfolio/design1.jpg">
                   <img src="./imgs/portfolio/design1.jpg" alt="">
                  </a> 
                </div> 
             </div>
             <div class="col-xs-3 col-md-3">
                <div class="thumbnail">
                  <a class="fancybox" rel="gallery2" href="./imgs/portfolio/design2.jpg">
                   <img src="./imgs/portfolio/design2.jpg" alt="">
                  </a> 
                </div>  
             </div>
             <div class="col-xs-3 col-md-3">
              <div class="thumbnail">
                <a class="fancybox" rel="gallery2" href="./imgs/portfolio/design3.jpg">
                  <img src="./imgs/portfolio/design3.jpg" alt="">
                </a>
              </div>  
             </div>
             <div class="col-xs-3 col-md-3">
              <div class="thumbnail">
                <a class="fancybox" rel="gallery2" href="./imgs/portfolio/design4.jpg">
                  <img src="./imgs/portfolio/design4.jpg" alt="">
                </a>
              </div>  
             </div>
           </div>  
         </div>  <!-- portfolio end-->
   

        <div id="contact"></div>
         <header class="content3">  <!-- Contact ìì -->
                <div class="container">
                    <h1><small>Contact</small></h1>
                    <p>ì¬ì´í¸ ì ì ë¬¸ì ë° ì¹ íì¤ êµì¡ì ê´í´ì ì§ë¬¸íë ê³³ìëë¤. </p>
                </div><!-- end .container -->
         </header>
         <div class="container contact" >
          <div class="row">
            <div class="col-md-7">
                  <form class="form-horizontal" role="form" id="ajax-contact-form" action="#">  
                    <div class="form-group">                            
                      <input type="text" class="form-control required" name="name" placeholder="ì´ë¦" title="Name">
                    </div>
                    <div class="form-group"> 
                      <input type="text" class="form-control required" name="email" placeholder="ì´ë©ì¼" title="Email">
                    </div>
                    <div class="form-group">                    
                      <input type="text" class="form-control" name="subject" placeholder="ì ëª©" title="Subject">
                    </div>
                    <div class="form-group">                                              
                      <textarea name="message" class="form-control required" id="message" title="Message" placeholder="ë´ì©" rows=5></textarea>
                    </div>
                    <div class="form-group">   
                      <button class="send_btn" type="submit"> ì  ì¡</button>                  
                      <button type="reset" class="send_btn"> ì¬ì¤ì </button>
                    </div>  
                  </form> 
             </div>          
              <div class="col-md-4  col-md-offset-1 contact_info wp5 delay-05s">
                  <p><span class="glyphicon glyphicon-home"> </span> ì ì£¼í¹ë³ìì¹ë ì ì£¼ì ìëë¡ 44 206-602</p>
                  <p><span class="glyphicon glyphicon-phone"> </span> +82 10 8957 6415</p>
                  <p><span class="glyphicon glyphicon-inbox"> </span> <a href="mailto:ugpapa@gmail.com">ugpapa@gmail.com </a></p>
                  <p><span class="glyphicon glyphicon-copyright-mark"> </span> 9pixelsutdio</p>                   
              </div>
            </div>                
            </div><!-- contact_form -->        

      <footer class="content3">
        <div class="container">
          All contents copyright&#169; 2014 9pixelstudio.com 
        </div>
      </footer>
  
</div> <!--  fluid container ë -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/bootstrap-hover-dropdown.js"></script>
    <script src="./js/animatescroll.min.js"></script>
    <script src="./js/simpleparallax.js"></script>
    <script src="./js/waypoints.min.js"></script>
    <script src="./js/jquery.fancybox.js"></script>
    <script>
       $('.carousel').carousel()
       $('.carousel2').carousel({interval: 3000 }) 
       $('#nav-affix').affix({ });
        /***************** Waypoints ******************/
          $('.wp1').waypoint(function() {
            $('.wp1').addClass('animated fadeInLeft');
          }, {
            offset: '75%'
          });
          $('.wp2').waypoint(function() {
            $('.wp2').addClass('animated fadeInUp');
          }, {
            offset: '75%'
          });        
          $('.wp3').waypoint(function() {
            $('.wp3').addClass('animated fadeInDown');
          }, {
            offset: '55%'
          });
          $('.wp4').waypoint(function() {
            $('.wp4').addClass('animated fadeInDown');
          }, {
            offset: '75%'
          });
          $('.wp5').waypoint(function() {
            $('.wp5').addClass('animated fadeInRight');
          }, {
            offset: '75%'
          });
//*  */
      $(document).ready(function() {
        $(".fancybox").fancybox({
          openEffect  : 'none',
          closeEffect : 'none'
        });
      });


    </script>    
</body>
</html>