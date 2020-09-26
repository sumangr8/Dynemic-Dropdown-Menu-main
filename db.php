<?php
function connect()
{
	$connection=mysqli_connect("localhost","root","","signup") or die("Connection Error");
	if(!$connection)
	{
		die("Faield To connect With database");
	}

	return $connection;
}

// function debug($arg)
// {
// 	echo "<pre>";
// 	print_r($arg);
// 	echo "</pre>";
// 	exit();
// }
//Only parent menu Fetch
function get_menus()
{
	$connection=connect();
	$result=mysqli_query($connection,"select * from menu");
	if(mysqli_num_rows($result))
	{
		$rows=mysqli_fetch_all($result, MYSQLI_ASSOC);
		$menus=[];
		foreach($rows as $index=>$row)
		{
			if($row['menu_id'])
			{
				$id=$row['menu_id'];
				$menus['menu_'.$id]['submenu'][]=[
					'id' =>$row['id'],
					'title' => $row['title'],
					'page' => $row['page'],
				];
			}
			else
			{
				$id=$row['id'];
				$menus['menu_'.$id]=[
					'id' =>$row['id'],
					'title' => $row['title'],
					'page' => $row['page'],
				];
			}
		}
		// debug($menus);
	}
	return $menus;
}

//dropwown menu fetch
function display_menu()
{
	$menus=get_menus();
	if(!$menus)
	{
		return 'No Menu Exists In Database';
	}
	$html='';
	$html.='<ul class="menu">';
	foreach($menus as $menu)
	{
		if(isset($menu['submenu']))
		{
			if($menu['page'])
			{
				$html.='<li><a href="'.$menu['page'].'">'.$menu['title'].'</a>';
			}
			else
			{
				$html.='<li><a href="">'.$menu['title'].'</a>';
			}
			if(is_array($menu['submenu']))
			{
				$html.='<ul class="dropdown">';
				foreach($menu['submenu'] as $submenu )
				{
					if($submenu['page'])
					{
						$html.='<li><a href="'.$submenu['page'].'">'.$submenu['title'].'</a></li>';
					}
					else
					{
						$html.='<li><a href="">'.$submenu['title'].'</a></li>';
					}
				}
				$html.='</ul>';
			}
			$html.='</li>';
		}
		else
		{
			if($menu['page'])
			{
				$html.='<li><a href="'.$menu['page'].'">'.$menu['title'].'</a></li>';
			}
			else
			{
				$html.='<li><a href="">'.$menu['title'].'</a></li>';
			}
		}
	}
	$html.='</ul>';
	return $html;
}




//Add menu form me parrent menu fetch
function get_parent_menu()
{
	$connection=connect();
	$result=mysqli_query($connection,"select * from menu where menu_id is null");
	if(mysqli_num_rows($result))
	{
		$menu='';
		while($row=mysqli_fetch_assoc($result))
		{
			$menu.='<option value="'.$row['id'].'">'.$row['title'].'</option>';
		}
		return $menu;
	}
}
?>