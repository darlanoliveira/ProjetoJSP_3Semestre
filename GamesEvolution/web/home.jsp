<!DOCTYPE html>
<html>
<title>Página inicial - Games Evolution</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inconsolata">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/conteudo.js"></script>
 <link rel="stylesheet" type="text/css" href="css/estilo.css"> 
<style>
body, html {
    height: 100%;
    font-family: "Inconsolata", sans-serif;
}
.menu {
    display: none;
}

</style>
<body>

<!-- Links (sit on top) -->
<div class="w3-top">
  <div class="w3-row w3-padding w3-black">
    <div class="w3-col s3">
      <a href="#" class="w3-button w3-block w3-black">HOME</a>
    </div>
    <div class="w3-col s3">
      <a href="#about" class="w3-button w3-block w3-black">DESTAQUES</a>
    </div>
    <div class="w3-col s3">
      <a href="lista.jsp" class="w3-button w3-block w3-black">GAMES</a>
    </div>
      <% if (session.getAttribute("login") != null) { %>
          <div class="w3-col s3">
      <a href="cadastro_game.jsp" class="w3-button w3-block w3-black">Bem vindo <% out.print(session.getAttribute("login")); %></a>
    </div>
     <% } else {%>
    <div class="w3-col s3">
      <a href="login.jsp" class="w3-button w3-block w3-black">LOGIN</a>
    </div>
             <% }%>
  </div>
</div>
<head>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="item active">
        <img src="foto/detroit.jpg" alt="Los Angeles" style="width:100%;">
        <div class="w3-display-middle w3-margin-top w3-center">
    <h1 class="w3-xxlarge w3-text-white"><span class="w3-padding w3-black w3-opacity-min"><b>BR</b></span> <span class="w3-hide-small w3-text-light-grey">Games Evolution</span></h1>
  </div>
      </div>

      <div class="item">
        <img src="foto/red.png" alt="Chicago" style="width:100%;">
        <div class="w3-display-middle w3-margin-top w3-center">
    <h1 class="w3-xxlarge w3-text-white"><span class="w3-padding w3-black w3-opacity-min"><b>BR</b></span> <span class="w3-hide-small w3-text-light-grey">Games Evolution</span></h1>
  </div>
      </div>
    
      <div class="item">
        <img src="foto/ellie.jpg" alt="New york" style="width:100%;">
        <div class="w3-display-middle w3-margin-top w3-center">
    <h1 class="w3-xxlarge w3-text-white"><span class="w3-padding w3-black w3-opacity-min"><b>BR</b></span> <span class="w3-hide-small w3-text-light-grey">Games Evolution</span></h1>
  </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</head>
<!-- Add a background color and large text to the whole page -->
<div class="w3-sand w3-large">
<div name="viewport" content="width=device-width, initial-scale=1" >  
<div class="w3-container w3-center w3-padding-64" id="Pesquisa" >
  <form>
      <h3>Pesquisar:<input  type="text" name="search" placeholder="Pesquise o jogo"> <button class="btn btn-default" type="button">Go!</button>
    
</form></h3>
</div>
</div>
<!-- About Container -->
<div class="w3-container" id="about">
  <div class="w3-content" style="max-width:700px">
    <h5 class="w3-center w3-padding-64"><span class=" w3-arial"><h1>Destaques<h1></span></h5>
    
</div>
  <p><div class="row">
  <div class="col-sm-6 col-md-4" >
    <div class="thumbnail" id="conteudo">
      <img src="foto/red.png" alt="Red Dead Redemption 2">
      <div class="caption">
        <h3>Red Dead Redemption 2</h3>
        <h4> Red Dead Redemption 2 terá duas versões especiais que virão com extras para ajudar no progresso dos jogadores. A Special Edition terá conteúdo adicional para a campanha, enquanto a Ultimate Edition adiciona vantagens também ao multiplayer online. Red Dead Redemption 2 tem lançamento marcado para 26 de outubro para PS4 e Xbox One.</h4>
        <p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail" id="conteudo">
      <img src="foto/thelastellie.jpg" alt="Red Dead Redemption 2">
      <div class="caption">
        <h3>The Last of Us 2</h3>
        <h4>The Last of Us Part II vai marcar presença na E3,A Naughty Dog confirmou a presença de The Last of Us Part II na E3 2018, que começa esta semana. Ao mesmo tempo, o próprio perfil do evento no Twitter pode ter revelado um detalhe importante do jogo.A princípio já era esperada a presença do game na conferência da Sony. Desde que foi anunciada, a segunda parte de The Last of Us tem recebido poucos detalhes. Nós tivemos alguns trailers escassos de informações e algumas imagens, mas nenhum gameplay. <h4>
        <p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail"id="conteudo">
      <img src="foto/war.jpg" alt="Red Dead Redemption 2">
      <div class="caption">
        <h3>God of War</h3>
        <h4>God of War é a maior aposta da Sony para 2018. A nova saga de Kratos agradou não apenas a crítica, mas também o público. Lançado em 20 de abril, o game alcançou a marca de 3,1 milhões de cópias vendidas em apenas três dias. Este feito torna God of War o jogo que vendeu mais rápido na plataforma PlayStation.<h4>
        <p>
      </div>
    </div>
  </div>
      </div><br></div>
  <div class="w3-container" id="menu">
  <div class="w3-content" style="max-width:700px">
 
    <h5 class="w3-center w3-padding-48"><span class=" w3-wide"><h1>IMAGENS</h1></span></h5>
      </div>
  <div class="container">
    <div class="row">
		<div class="col-md-12">
                <div id="Carousel" class="carousel slide">
                 
                <ol class="carousel-indicators">
                    <li data-target="#Carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#Carousel" data-slide-to="1"></li>
                    <li data-target="#Carousel" data-slide-to="2"></li>
                </ol>
                 
                <!-- Carousel items -->
                <div class="carousel-inner">
                    
                <div class="item active">
                	<div class="row">
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/500x500" alt="Image" style="max-width:100%;"></a></div>
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                	</div><!--.row-->
                </div><!--.item-->
                 
                <div class="item">
                	<div class="row">
                		<div class="col-md-3"><a href="#" class="thumbnail"><img src="foto/detroit.jpg" alt="Image" style="max-width:100%;"></a></div>
                		<div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                		<div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                		<div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                	</div><!--.row-->
                </div><!--.item-->
                 
                <div class="item">
                	<div class="row">
                		<div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                		<div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                		<div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                		<div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                	</div><!--.row-->
                </div><!--.item-->
                 
                </div><!--.carousel-inner-->
                  <a data-slide="prev" href="#Carousel" class="left carousel-control">?</a>
                  <a data-slide="next" href="#Carousel" class="right carousel-control">?</a>
                </div><!--.Carousel-->
                 
		</div>
	</div>
</div>     
<!-- Menu Container -->

  
    

<!-- Contact/Area Container -->

<!-- End page content -->
</div>

<!-- Footer -->
<footer class="w3-center w3-light-grey w3-padding-48 w3-large">
  <p>Powered by </p>
</footer>

<!-- Add Google Maps -->
<script>
function myMap()
{
  myCenter=new google.maps.LatLng(41.878114, -87.629798);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}

// Tabbed Menu
function openMenu(evt, menuName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("menu");
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
     tablinks[i].className = tablinks[i].className.replace(" w3-dark-grey", "");
  }
  document.getElementById(menuName).style.display = "block";
  evt.currentTarget.firstElementChild.className += " w3-dark-grey";
}
document.getElementById("myLink").click();
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>