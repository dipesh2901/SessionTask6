<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='bootstrap.min.css' />
<style>
body {
	background-color: #686868;
}

h4 {
	color: #800000;
	font-size: 20px;
	font-weight: bolder;
}

p {
	font-style: oblique;
	font-weight: bold;
	color: black;
}

#card1 {
	border: 2px solid black;
	background-color: #E6E6FA;
	margin-left: 36px;
	margin-top: 40px;
}

#title {
	font-weight: bold;
	font-size: 30px;
	font-style: italic;
	color: white;
}

#card2 {
	border: 2px solid black;
	background-color: #E6E6FA;
	margin-top: 40px;
	margin-left: 100px;
}

#card3 {
	border: 2px solid black;
	background-color: #E6E6FA;
	margin-top: 100px;
	margin-left: 10px;
}

#card4 {
	border: 2px solid black;
	background-color: #E6E6FA;
	margin-top: 30px;
	margin-left: 100px;
}

#card5 {
	border: 2px solid black;
	background-color: #E6E6FA;
	margin-top: 100px;
}

#card6 {
	border: 2px solid black;
	background-color: #E6E6FA;
	margin-left: 100px;
}

#card7 {
	border: 2px solid black;
	background-color: #E6E6FA;
	margin-top: 100px;
}

#card8 {
	border: 2px solid black;
	background-color: #E6E6FA;
	margin-left: 100px;
}

img:hover {
	border: 2px solid black;
}

.buttons {
	margin-bottom: 10px;
}

.buttons:hover {
	border: 2px solid black;
}

marquee {
	font-size: 40px;
	font-style: italic;
	color: #FFFAF0;
}

div {
	display: inline-block;
}
</style>
<script>
	function run() {
		alert("Please Login First!!!");
	}
</script>
</head>
<body>
	<%
	request.getRequestDispatcher("indexNav.jsp").include(request, response);
	%>
	<marquee>CAR SHOWROOM</marquee>
	<div class="container" align="center">

		<div class="card" id="card1" style="width: 500px">
			<img class="card-img-top" src="images/tata_altroz.jpg"
				alt="Card image" style="width: 100%"></a>
			<div class="card-body">
				<h4 class="card-title">Tata Altroz</h4>
				<p class="card-text">Overall the exterior design is edgy, sharp
					and clutter-breaking. In terms of dimensions, the Tata Altroz
					measures 3990 mm long, 1755 mm wide and 1523 mm height. The premium
					hatchback comes with a 2501 mm long wheelbase and an unladen ground
					clearance of 165 mm.</p>
				<p class="card-text">he Tata Altroz interiors has a new
					instrument cluster with a multi-information display, including
					average fuel consumption, distance to empty, and voice alerts for
					the easy attention of the users. The driver seat with height adjust
					feature, rear seats with ample leg space and headroom with foldable
					backrest for extending the luggage space can be expected</p>
			</div>
		</div>
		<div class="card" id="card2" style="width: 500px">
			<img class="card-img-top" src="images/Mahindra2.jpg" alt="Card image"
				style="width: 100%"> </a>
			<div class="card-body">
				<h4 class="card-title">Mahindra XUV700</h4>
				<p class="card-text">The XUV700 remains true to the Mahindra
					XUV500 design, only taking it forward. In the flesh, the Mahindra
					has a strong presence and a proper SUV stance which leaves an
					impression. The highlight is the large front grille with vertical
					slats, and been seen for the first time on the recently unveiled.</p>
				<p class="card-text">heres a reason why this is called the
					XUV700 and not the 2021 XUV500. Underpinning it is a new platform
					which not just supports all-wheel-drive options but has been
					designed keeping future mild-hybrid powertrains in mind.As you get
					in, you are greeted with an elegant looking dashboard.</p>
			</div>
		</div>
		<div class="card" id="card3" style="width: 500px">
			<img class="card-img-top" src="images/KiaSeltos.jpg" alt="Card image"
				style="width: 100%"> </a>
			<div class="card-body">
				<h4 class="card-title">Kia Seltos</h4>
				<p class="card-text">As you get in, you are greeted with an
					elegant looking dashboard. Some of the design elements are heavily
					inspired by Mercedes-Benz. Like the long display covering
					practically half of the dashboard. These are essentially two
					10.25-inch screens ??? a central infotainment touchscreen sitting
					next to the large driver???s information console. Since this piece of
					tech is standard in practically all the trim (except the base), it
					definitely will be one of the key attractions for buyers.</p>
			</div>
		</div>
		<div class="card" id="card4" style="width: 500px">
			<img class="card-img-top" src="images/HondaCity.jpg" alt="Card image"
				style="width: 100%"> </a>
			<div class="card-body">
				<h4 class="card-title">Honda City</h4>
				<p class="card-text">The Honda City has 1 Diesel Engine and 1
					Petrol Engine on offer. The Diesel engine is 1498 cc while the
					Petrol engine is 1498 cc . It is available with the Manual &
					Automatic transmission. Depending upon the variant and fuel type
					the City has a mileage of 17.8 to 24.1 kmpl. The City is a 5 seater
					and has length of 4549mm, width of 1748mm and a wheelbase of
					2600mm. The price of Honda City starts at Rs. 11.16 Lakh and goes
					upto Rs. 15.11 Lakh.</p>
			</div>
		</div>
		<div class="card" id="card5" style="width: 500px">
			<img class="card-img-top" src="images/ToyotaCar.jpg" alt="Card image"
				style="width: 100%"> </a>
			<div class="card-body">
				<h4 class="card-title">Toyota Fortuner</h4>
				<p class="card-text">Toyota Fortuner Price: Toyota retails the
					Fortuner from Rs 30.34 lakh and Rs 38.30 lakh (ex-showroom Delhi).

					Toyota Fortuner Seating Capacity: The SUV comes in a 7-seater
					layout. Toyota Fortuner Powertrains: It is offered with both petrol
					and diesel engines. While the 2.7-litre petrol unit (166PS/245Nm)
					is</p>
			</div>
		</div>
		<div class="card" id="card6" style="width: 500px">
			<img class="card-img-top" src="images/SkodaOctavia.jpg"
				alt="Card image" style="width: 100%"> </a>
			<div class="card-body">

				<h4 class="card-title">Skoda Octavia</h4>
				<p class="card-text">Skoda Octavia Price: The Skoda Octavia is
					priced between Rs 25.99 lakh and Rs 28.99 lakh (ex-showroom,
					pan-India). Skoda Octavia Variants:</p>
				<p class="card-title">Skoda offers the sedan in two variants:
					Style and Laurin & Klement.</p>
				<p class="card-title">Skoda Octavia Engine and Transmission: It
					is powered by the Superb???s 2-litre turbo-petrol engine
					(190PS/320Nm)</p>
			</div>
		</div>

		<div class="card" id="card7" style="width: 500px">
			<img class="card-img-top" src="images/Ford.jpg" alt="Card image"
				style="width: 100%"></a>
			<div class="card-body">
				<h4 class="card-title">Ford Endeavour</h4>
				<p class="card-text">Ford Endeavour is a 7 seater SUV available
					in a price range of Rs. 33.81 - 36.26 Lakh*. It is available in 3
					variants, a 1996 cc, BS6 and a single Automatic transmission. Other
					key specifications of the Endeavour include a kerb weight of
					2415kg, ground clearance of and boot space of Liters. The Endeavour
					is available in 3 colours.</p>

			</div>
		</div>

		<div class="card" id="card8" style="width: 500px">
			<img class="card-img-top" src="images/Datson2.jpg" alt="Card image"
				style="width: 100%"> </a>
			<div class="card-body">
				<h4 class="card-title">Datsun GO Plus</h4>
				<p class="card-text">Datsun GO Plus is a 7 seater MUV available
					in a price range of Rs. 4.25 - 6.99 Lakh*. It is available in 7
					variants, a 1198 cc, BS6 and 2 transmission options: Manual &
					Automatic. Other key specifications of the GO Plus include a kerb
					weight of 950kg, ground clearance of and boot space of 347 (3rd row
					folded) Liters.</p>
			</div>
		</div>
	</div>
	<jsp:include page="footer.html"></jsp:include>
</body>
</html>