<!DOCTYPE html>
<html>
<title>ITELEC2C-MP2</title>
<link rel="icon" href="images/logo.png">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Allerta Stencil|Audiowide|Antic">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="bootstrap/downloads/w3.css">
<link rel="stylesheet" href="bootstrap/downloads/w3-theme-black.css">
<link rel="stylesheet"
	href="font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="bootstrap/downloads/antic.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="bootstrap/downloads/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<style>
body {
	background-color: #000;
}

.allerta {
	font-family: Allerta Stencil;
}

.w3-half img {
	cursor: pointer
}

.w3-half img:hover {
	transition: 0.3s
}

a:link {
	text-decoration: none;
}
</style>
<body>
	<div class="w3-top">
		<div class="w3-bar w3-theme-d2 w3-left-align">
			<a
				class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-hover-white"
				href="javascript:void(0);" onclick="openNav()"><i
				class="fa fa-bars"></i></a> <a href="index.jsp"
				class="w3-bar-item w3-button w3-green allerta w3-large">Carl and
				Jasiel's Airfacturers</a>
			<div class="w3-dropdown-hover w3-hide-small">
				<button class="w3-button allerta w3-large" title="Notifications">
					Shop Airfacturers <i class="fa fa-caret-down"></i>
				</button>
				<div class="w3-dropdown-content w3-card-4 w3-bar-block">
					<a href="indexAirbus.jsp" class="w3-bar-item w3-button allerta">Airbus</a>
					<a href="indexBoeing.jsp" class="w3-bar-item w3-button allerta">Boeing</a>
					<a href="indexDouglas.jsp" class="w3-bar-item w3-button allerta">McDonnell
						Douglas</a>
				</div>
			</div>
		</div>
		<div id="navDemo"
			class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium">
			<a href="indexAirbus.jsp" class="w3-bar-item w3-button allerta">Airbus</a>
			<a href="indexBoeing.jsp" class="w3-bar-item w3-button allerta">Boeing</a>
			<a href="indexDouglas.jsp" class="w3-bar-item w3-button allerta">McDonnell
				Douglas</a>
		</div>
		<div class="w3-container"
			style="background-color: #000; color: yellow;">
			<h1 class="allerta" align="center">
				AIRCRAFT TYPES
			</h1>
		</div>
	</div>
	<!-- Photo grid -->
	<div class="w3-row w3-padding-64">
		<div class="w3-half">
			<img src="images/aeroplane-trans.png"
				style="width: 100%; background: #F00;"
				onclick="document.getElementById('modal01').style.display='block'"
				alt="BOEING 737" class="w3-hover-black"> <img
				src="images/aeroplane-trans.png"
				style="width: 100%; background: #FF0;"
				onclick="document.getElementById('modal02').style.display='block'"
				alt="BOEING 747" class="w3-hover-black"> <img
				src="images/aeroplane-trans.png"
				style="width: 100%; background: #ABE;"
				onclick="document.getElementById('modal03').style.display='block'"
				alt="BOEING 757" class="w3-hover-black">
		</div>
		<div class="w3-half">
			<img src="images/aeroplane-trans.png"
				style="width: 100%; background: #FAB;"
				onclick="document.getElementById('modal04').style.display='block'"
				alt="BOEING 767" class="w3-hover-black"> <img
				src="images/aeroplane-trans.png"
				style="width: 100%; background: #BAF;"
				onclick="document.getElementById('modal05').style.display='block'"
				alt="BOEING 777" class="w3-hover-black"> <img
				src="images/aeroplane-trans.png"
				style="width: 100%; background: #123;"
				onclick="document.getElementById('modal06').style.display='block'"
				alt="BOEING 787" class="w3-hover-black">
		</div>
	</div>
	<!-- Modal for full size images on click-->
	<div id="modal01" class="w3-modal"
		style="padding-top: 0; background-image: url('images/Image_Background.jpg');"
		onclick="this.style.display='none'">
		<span class="w3-button w3-black w3-xlarge w3-display-topright">�</span>
		<div
			class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
			<img src="images/B737 PAL.jpg" class="img-responsive"
				style="display: block; margin: auto; border-style: inset; border-width: 5px; border-color: gold;">
			<h1 class="allerta" style="color: #FFF;">B737 PAL</h1>
		</div>
	</div>
	<div id="modal02" class="w3-modal"
		style="padding-top: 0; background-image: url('images/Image_Background.jpg');"
		onclick="this.style.display='none'">
		<span class="w3-button w3-black w3-xlarge w3-display-topright">�</span>
		<div
			class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
			<img src="images/B747 PAL.jpg" class="img-responsive"
				style="display: block; margin: auto; border-style: inset; border-width: 5px; border-color: gold;">
			<h1 class="allerta" style="color: #FFF;">B747 PAL</h1>
		</div>
	</div>
	<div id="modal03" class="w3-modal"
		style="padding-top: 0; background-image: url('images/Image_Background.jpg');"
		onclick="this.style.display='none'">
		<span class="w3-button w3-black w3-xlarge w3-display-topright">�</span>
		<div
			class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
			<img src="images/B757 CEB.jpg" class="img-responsive"
				style="display: block; margin: auto; border-style: inset; border-width: 5px; border-color: gold;">
			<h1 class="allerta" style="color: #FFF;">B757 CEB</h1>
		</div>
	</div>
	<div id="modal04" class="w3-modal"
		style="padding-top: 0; background-image: url('images/Image_Background.jpg');"
		onclick="this.style.display='none'">
		<span class="w3-button w3-black w3-xlarge w3-display-topright">�</span>
		<div
			class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
			<img src="images/B767 BAE.jpg" class="img-responsive"
				style="display: block; margin: auto; border-style: inset; border-width: 5px; border-color: gold;">
			<h1 class="allerta" style="color: #FFF;">B767 BAE</h1>
		</div>
	</div>
	<div id="modal05" class="w3-modal"
		style="padding-top: 0; background-image: url('images/Image_Background.jpg');"
		onclick="this.style.display='none'">
		<span class="w3-button w3-black w3-xlarge w3-display-topright">�</span>
		<div
			class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
			<img src="images/B777 PAL.jpg" class="img-responsive"
				style="display: block; margin: auto; border-style: inset; border-width: 5px; border-color: gold;">
			<h1 class="allerta" style="color: #FFF;">B777 PAL</h1>
		</div>
	</div>
	<div id="modal06" class="w3-modal"
		style="padding-top: 0; background-image: url('images/Image_Background.jpg');"
		onclick="this.style.display='none'">
		<span class="w3-button w3-black w3-xlarge w3-display-topright">�</span>
		<div
			class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
			<img src="images/B787.jpg" class="img-responsive"
				style="display: block; margin: auto; border-style: inset; border-width: 5px; border-color: gold;">
			<h1 class="allerta" style="color: #FFF;">B787</h1>
		</div>
	</div>
	<div class="w3-container allerta" align="center">

		<h1 style="color: #0F0;">SELECT AIRCRAFT:</h1>
		<form action='procaircrafttype.html' method='post'>
			<p>
				<select name='selectedAircraftType'
					style="font-size: 20px; background-color: #0F0; font-weight: bold; color: blue;">
					<option value="B737" class="w3-hover-red">B737</option>
					<option value="B747">B747</option>
					<option value="B757">B757</option>
					<option value="B767">B767</option>
					<option value="B777">B777</option>
					<option value="B787">B787</option>
				</select>
			</p>
			<input type='submit' value='Select'
				class="w3-button w3-hover-green  w3-round-large w3-white w3-block"
				style="width: 80%; margin: 5px; font-size: 20px;" /> <input
				type='reset' value='Reset'
				class="w3-button w3-hover-green  w3-round-large w3-white w3-block"
				style="width: 80%; margin: 5px; font-size: 20px;" />
		</form>
		<form>
			<a href="index.jsp"><input VALUE="Back"
				class="w3-button w3-hover-green  w3-round-large w3-white w3-block"
				style="width: 80%; margin: 5px; font-size: 20px;"></a>
		</form>

	</div>
	<script>
		// Script for side navigation
		function w3_open() {
			var x = document.getElementById("mySidebar");
			x.style.width = "300px";
			x.style.paddingTop = "10%";
			x.style.display = "block";
		}
		// Close side navigation
		function w3_close() {
			document.getElementById("mySidebar").style.display = "none";
		}
		// Used to toggle the menu on smaller screens when clicking on the menu button
		function openNav() {
			var x = document.getElementById("navDemo");
			if (x.className.indexOf("w3-show") == -1) {
				x.className += " w3-show";
			} else {
				x.className = x.className.replace(" w3-show", "");
			}
		}
	</script>
</body>
</html>
