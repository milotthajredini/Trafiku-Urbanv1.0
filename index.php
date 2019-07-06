<?php 
	include('html/functions.php');

	if (!isLoggedIn()) {
		$_SESSION['msg'] = "You must log in first";
		header('location: index.html ');
	}
?>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <title>Trafiku Urban - Prishtin&euml</title>
        <link rel="icon" href="img/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" href="css/calendar.css" type="text/css">
        <!-- <link rel="stylesheet" href="css/tag.scss"> -->
        <link rel="stylesheet" href="css/mini-event-calendar.css">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/responsive.css">
    </head>
    <body id="bodyyy" >
    <div >
		<!-- notification message -->
		<?php if (isset($_SESSION['success'])) : ?>
			<div class="error success" >
				<h3>
					<?php 
						echo $_SESSION['success']; 
						unset($_SESSION['success']);
					?>
				</h3>
			</div>
		<?php endif ?>
		<!-- logged in user information -->
		<div style="widhth:100;float:right;"class="profile_info">
			<img src="../img/user_profile.png"/>

			<div>
				<?php  if (isset($_SESSION['user'])) : ?>
					<strong><?php echo $_SESSION['user']['username']; ?></strong>

					<small>
						<i  style="color: #888;">(<?php echo ucfirst($_SESSION['user']['user_type']); ?>)</i> 
						<br>
            <a href="index.php?logout='1'" style="color: red;">Logout</a>
            <a href="user/user.php" style="color: black;">Settings</a>
          </small>
</div>

        <?php endif ?>
        
      </div>
      
        <div class="header">
          
          <!-- <a  id="register" href="html/register.php">  | Register</a>   
             <a  id="login" href="html/login.php">Login </a>     -->
             
           
                <img id="twitter" src="img/twittert.png" href="" style="margin-top: 60;width: 30px;float: right;margin-right: 5px">
                <a href="https://www.instagram.com/trafikuurban"><img id="insta" src="img/instalogo.png"  style="margin-top: 60;width: 30px;float: right;margin-right: 5px"></a>
           <a href="https://www.facebook.com/trafikurban/"><img id="fb" src="img/fbico.png" href="https://www.facebook.com/trafikurban/" style="margin-top:65;margin-right: 2px;float: right;width: 20px;">
           
            <div class="img2">
                <img src="img/logo-k.png" id="logok" style="width:150px;float: left;margin-top: 40"> </a>
            </div>
        
        </div>
        <div class="logokryesore">
        <a href="index.html"><img id="logokryesore" src="img/logofinalv3.png" style="/* margin-left: 800; */display: flex;justify-content: center;/* margin: auto; */width: 300;margin: auto;"></a>
      </div>
        <!-- Navigation Bar --> 
        <div class="nav">
        <ul id="ul">
                <li id="li"> <a href="index.php">Ballina</a></li>
                <div class="dropdown">
                        <button class="dropbtn">Linjat</button>
                        <div class="dropdown-content">
                          <a id="li" href="html/orari.php">Oraret</a>
                     
                        </div>
                      </div>
                      <li id="li"> <a href="html/biletat.html">Biletat</a></li>
                      <li id="li"> <a href="html/hartat.html">Hartat</a></li>
                      <li id="li"> <a href="html/kontakti.php">Kontakti</a></li>
                      <li id="li"> <a href="html/rrethnesh.html">Rreth Nesh</a></li>
            </ul>
        </div>
        <!-- Navigatrion Bar -->
        <!-- Container  -->
        <div class="video">
        <video id="videoindex" autoplay muted loop>
          <source src="vid/trafikuurban.mp4" type="video/mp4">
        </video>
      </div>
        <!-- Container End -->
         <!-- Calendar -->
         <div class="dropcalendar">
           <button id="buttoncal" >Calendar</button>
           
           <div class="calendari-drop">
        <div class="calendari">
        <div id="calendar" class="mini-cal">
          <div id="calTitle">
            <button type="button" class="month-mover prev">
              <svg fill="#FFFFFF" height="30" viewBox="0 0 24 24" width="30" xmlns="http://www.w3.org/2000/svg">
                <path d="M15.41 7.41L14 6l-6 6 6 6 1.41-1.41L10.83 12z"></path>
              </svg>
            </button>
            <div id="monthYear">May 2019</div>
            <button type="button" class="month-mover next">
              <svg fill="#FFFFFF" height="30" viewBox="0 0 24 24" width="30" xmlns="http://www.w3.org/2000/svg">
                <path d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path>
              </svg>
            </button>
          </div>
          <div>
            <div id="calThead"><div>S</div><div>M</div><div>T</div><div>W</div><div>T</div><div>F</div><div>S</div></div>
            <div id="calTbody"><div class="a-date blurred"><span>28</span></div><div class="a-date blurred"><span>29</span></div><div class="a-date blurred"><span>30</span></div><button type="button" class="a-date " data-event="null"><span>1</span></button><button type="button" class="a-date " data-event="null"><span>2</span></button><button type="button" class="a-date " data-event="null"><span>3</span></button><button type="button" class="a-date " data-event="null"><span>4</span></button><button type="button" class="a-date " data-event="null"><span>5</span></button><button type="button" class="a-date " data-event="null"><span>6</span></button><button type="button" class="a-date " data-event="null"><span>7</span></button><button type="button" class="a-date " data-event="null"><span>8</span></button><button type="button" class="a-date " data-event="null"><span>9</span></button><button type="button" class="a-date " data-event="null"><span>10</span></button><button type="button" class="a-date " data-event="null"><span>11</span></button><button type="button" class="a-date " data-event="null"><span>12</span></button><button type="button" class="a-date " data-event="null"><span>13</span></button><button type="button" class="a-date " data-event="null"><span>14</span></button><button type="button" class="a-date " data-event="null"><span>15</span></button><button type="button" class="a-date " data-event="null"><span>16</span></button><button type="button" class="a-date " data-event="null"><span>17</span></button><button type="button" class="a-date " data-event="null"><span>18</span></button><button type="button" class="a-date " data-event="null"><span>19</span></button><button type="button" class="a-date " data-event="null"><span>20</span></button><button type="button" class="a-date " data-event="null"><span>21</span></button><button type="button" class="a-date " data-event="null"><span>22</span></button><button type="button" class="a-date " data-event="null"><span>23</span></button><button type="button" class="a-date event " data-event="{&quot;title&quot;:&quot;Soulful sundays bay area&quot;,&quot;date&quot;:1558729569362,&quot;link&quot;:&quot;https://www.eventbrite.com/e/soulful-sundays-bay-area-edition-tickets-55214242285?aff=ehomecard&quot;}"><span>24</span></button><button type="button" class="a-date " data-event="null"><span>25</span></button><button type="button" class="a-date " data-event="null"><span>26</span></button><button type="button" class="a-date " data-event="null"><span>27</span></button><button type="button" class="a-date " data-event="null"><span>28</span></button><button type="button" class="a-date " data-event="null"><span>29</span></button><button type="button" class="a-date " data-event="null"><span>30</span></button><button type="button" class="a-date current focused event " data-event="{&quot;title&quot;:&quot;London Comicon&quot;,&quot;date&quot;:1559334369363,&quot;link&quot;:&quot;https://www.eventbrite.co.uk/e/london-film-comic-con-summer-2019-tickets-49472593860?aff=ebdssbdestsearch&quot;}"><span>31</span></button><div class="a-date blurred"><span>1</span></div><div class="a-date blurred"><span>2</span></div><div class="a-date blurred"><span>3</span></div><div class="a-date blurred"><span>4</span></div><div class="a-date blurred"><span>5</span></div><div class="a-date blurred"><span>6</span></div><div class="a-date blurred"><span>7</span></div><div class="a-date blurred"><span>8</span></div></div>
          </div>
          
        </div> 
        </div> 
      </div>
      </div>
        <!-- Calendar END  -->
        
        <div class="thenja">
        <h2>"Institucion i besueshëm për qytetarët duke ofruar shërbime sa më efikase të transportit publik".</h2>
       </div>

       <!-- Navigation Bar 2 -->
       <div class="nav2">
        <form class="form" action="http://livechat.trafikurban-pr.com/php/app.php?widget-mobile" >
        <button  class="button" >Kutia e Ankesav</button>
        </form>
        <form action="html/orari.php">
        <button class="button">Orari i Autobuseve</button>
    </form>
        <form action="html/linjaaeroport.html">
        <button class="button">Linja e Aeroportit</button>
    </form>
    </div>
       <div class="line1">
        <p style="border-top-style:groove;width:60%;display:flex;justify-content:center;margin-left:20%;border-color: #184cb4;margin-bottom: 2px;"></p>
        </div>
<!-- Lajme -->
          <div class="viewwall">
            <a href="http://blog.trafikurban-pr.com/" style="font-size: 12;
            text-decoration: none;
            font-family: 'Montserrat';">Te Gjitha Njoftimet</a>
          </div>
        <div class="lajmet">
          <h1>Lajme</h1>
          <div class="grid-container">
           <img src="img/shpend.jpg" alt="" style="width: 100px;height:100px;">
            <div class="grid-item"> 
             <a href="http://blog.trafikurban-pr.com/kryetari-i-komunes-z-shpend-ahmeti-me-rastin-e-fillimit-te-linjes-se-aeroportit/" style="text-decoration:none;"> 
              <h4>Kryetari i Komunës z.Shpend Ahmeti<br> me rastin e fillimit të Linjës së Aeroportit</h4></a>
              <p style="margin-top: -10px;">
                Sot filluam linjën Prishtinë – Aeroport – Prishtinë.<br> Kohëzgjatja ishte 43 minuta nga stacioni<br> ose rreth 35 minuta nga qendra... (më shumë) 
            </p>
            </div>
              <img src="img/bus.jpg" alt="" style="width: 100px;height:100px;">
            <div class="grid-item">
             <a href="http://blog.trafikurban-pr.com/linja-1a-prishtine-aeroport-prishtine/" style="text-decoration: none;"> <h4>Linja 1A: Prishtinë-Aeroport-Prishtinë</h4></a>
             <p>
                    Linja e Aeroportit, e shumë pritur nga <br> qytetarët,<br> filloi se funksionuari me autobusët tanë <br>sipas orarit qe e gjeni ketu... (më shumë) 
                </p>
              </div>
              <img src="img/tul.jpg" alt="" style="width: 100px;height:100px;">
              
              <a href="http://blog.trafikurban-pr.com/nga-trafiku-urban-perseri-trajnime-te-stafit/" style="text-decoration: none;display: contents;">
              <div class="grid-item"><h4>Nga Trafiku Urban përsëri trajnime te stafit</h4>
              </a>
              </div>
            
                <img src="img/bileta.png " style="width:100px;height:100px;" alt="">
            <a href="http://blog.trafikurban-pr.com/bileta-mujore-e-integruar-3/" style="text-decoration: none;">
              <div class="grid-item">
              <h4>Bileta Mujore e Integruar</h4>
            </div>
          </a>
           
          </div>
        </div>
        <!-- Lajme END -->
        <!-- Bashkpuntoet -->
        <div class="partner">
        <h1>Bashkëpunëtorët</h1>
        <div class="line2">
          <p style="border-top-style:groove;width:48%;display:flex;justify-content:center;margin-left:32%;border-color: #184cb4;margin-bottom: 2px;position: absolute;margin-top: 22;"></p>
          </div>
          <div class="partnerimg" >
            <h2>Disa nga </br>
                Partnerët</h2>
          <img src="img/CE.png" alt="">
          <img src="img/EUBANK.png" alt="">
          <img src="img/kmun.png" alt="">
          <img src="img/rks.png" alt="">
        </div>
      </div>
        <!-- Bashkpuntoret END -->
  <!-- Navigation bar End -->
     
      <!-- Footer   -->
        <footer>
          <h5 style="margin-left: -40%;">PËRMBAJTJA E MENYS</h5>
          <h5 style="margin-left: 14%;margin-top:-40px;">INFORMATAT E NDËRMARJES</h5>
          <h5 style="margin-left: 45%;margin-top:-38px;">QËNDRO NË KONTAKT</h5>
    <div class="col1">
      <ul>
        <li><a href="index.html">Ballina</a></li>
        <li><a href="html/orari.html">Linjat</a></li>
        <li><a href="html/biletat.html">Biletat</a></li>
        <li><a href="html/hartat.html">Hartat</a></li>
        <li><a href="html/kontakti.html">Kontakti</a></li>
      </ul> 
    </div>
      <div class="col2">
        <ul>
        <li><a href="http://trafikurban-pr.com/shq/d-prokurimi-shq.html">Departamenti i Prokurorimit</a></li>
        <li><a href="http://trafikurban-pr.com/shq/d-prokurimi-kontakt-shq.html">Njoftim për kontratë</a> </li>
        <li><a href="Njoftim për dhënien e kontratës"></a></li>
        <li><a href="http://trafikurban-pr.com/shq/d-prokurimi-n-kontrate-shq.html">Nj. për nënshkrimin e kontratës</a></li>
        <li><a href="http://trafikurban-pr.com/shq/d-prokurimi-n-anulim-shq.html">Njoftim për anulim</a></li>
      </ul>
      </div>
      
      <div class="col3">
        <ul>
          <li> 
<a href="">Struktura e Ndërmarjes </a>
          </li>
          <li>
<a href="http://trafikurban-pr.com/shq/information-2-shq.html">  Bordi Udhëhqës</a>
          </li>
          <li>
<a href="http://trafikurban-pr.com/shq/information-3-shq.html">Kryeshefi Ekzekutiv</a>
          </li>
          <li>
<a href="http://trafikurban-pr.com/shq/information-5-shq.html">Organogrami</a>
          </li>
          <li>
<a href="http://trafikurban-pr.com/shq/partner-donator-shq.html">Partnerët & Donatorët</a>
          </li>
        </ul>
      </div>
      <div class="col4">
        <ul>
          <li>Tel: + 383 (0) 45 10 11 22</li>
          <li>Email: info@trafikurban-pr.com</li>
          <li><br></li>
          <li>NPK Trafiku Urban SH.A</li>
          <li>Rr. Tahir Zajmi, nr.43, Prishtinë.</li>
        </ul>
      </div>
        
      
      
  
  
        </footer>
        <!-- Footer END  -->
          
  
  <script src="js/mini-event-calendar.js"></script>
  <script>
		var sameDaylastWeek = new Date().setDate(new Date().getDate() - 7);
		var someDaynextMonth = new Date().setDate(new Date().getDate() + 31);
		// All dates should be provided in timestamps
	    	var sampleEvents = [
			{
			    title: "Soulful sundays bay area",
			    date: sameDaylastWeek, // Same day as today, last week
			    link: "https://www.eventbrite.com/e/soulful-sundays-bay-area-edition-tickets-55214242285?aff=ehomecard"
			},
			{
			    title: "London Comicon",
			    date: new Date().getTime(), // Today
			    link: "https://www.eventbrite.co.uk/e/london-film-comic-con-summer-2019-tickets-49472593860?aff=ebdssbdestsearch"
			},
			{
			    title: "Youth Athletic Camp",
			    date: someDaynextMonth, // Some day as today, next month
			    link: "https://www.eventbrite.com/e/leaner-stronger-faster-tm-youth-athletic-camp-2021-tickets-38245970728?aff=ebdssbdestsearch"
			}
	    	];
		$(document).ready(function(){
			$("#calendar").MEC({
				events: sampleEvents
			});
			// Make calendar start on monday
			$("#calendar2").MEC({
				from_monday: true,
				events: sampleEvents
			});
		});
  </script>
  <script>
  function show(){
    document.getElementById('formalogin1').style.display='block';
    document.getElementById('bodyyy').removeAttr('background-image');
    
  }
  </script>

    </body>
</html>