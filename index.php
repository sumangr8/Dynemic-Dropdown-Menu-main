<?php
include("db.php");
// get_menus();
display_menu();
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="container">
	<header>
		<nav class="top-nav">
			<?php echo display_menu(); ?>
			<!-- <ul class="menu">
				<li><a href="">Home</a></li>
				<li>
					<a href="">Products</a>
					<ul class="dropdown">
						<li><a href="">Product1</a></li>
						<li><a href="">Product2</a></li>
					</ul>
				</li>
				<li>
					<a href="">Services</a>
					<ul class="dropdown">
						<li><a href="">Service1</a></li>
						<li><a href="">Service2</a></li>
					</ul>
				</li>
				<li><a href="">About</a></li>
				<li><a href="">Contact</a></li>
			</ul> -->

		</nav>
	</header>


	<div class="info">
		<h1>Dymenic Navigation Menu</h1>
		<h3>HTML, CSS, PHP & MYSQL Databse</h3>
	</div>
	<div class="form-wrapper">
		<h3>Add List item : </h3>
		<form method="post" action="add_menu.php">
			<input type="text" name="menu_name" placeholder="Type Item name">
			<input type="text" name="menu_page" placeholder="Type Page Name">
			<select name="menu_id">
				<option value="">Select A Parent menu (Optional)</option>
				<?php echo get_parent_menu(); ?>
			</select>
			<input type="submit" name="submit" value="Add Menu">
		</form>
	</div>




	<div class="form-wrapper">
		<h3>Remove List item : </h3>
		<form method="post" action="add_menu.php">
			<select name="menu_id">
				<option value="">Select SomeThing</option>
			</select>
			<input type="submit" name="submit" value="Add Menu Item">
		</form>
	</div>
</div>
</body>
</html>