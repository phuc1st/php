<?php 
	$tv="select id,ten,loai_menu from menu_ngang order by id";
	$tv_1=mysqli_query($connect,$tv);
	echo "<ul class='menu_ngang'><li><a href='index.php'>Trang chủ</a></li>";
	while($tv_2=mysqli_fetch_array($tv_1))
	{
		if($tv_2['loai_menu']==""){$link_menu="?thamso=xuat_mot_tin&id=".$tv_2['id'];}
		if($tv_2['loai_menu']=="san_pham")
		{
			$link_menu="?thamso=xuat_san_pham_2";
			echo "<li style='position: relative;'><a href='$link_menu' >";
				echo $tv_2['ten'];
			echo "</a>";
			$tv3="select * from menu_doc order by id";
			$tv_4=mysqli_query($connect,$tv3);
			echo "<ul class='menu_doc' >";
			while($tv_5=mysqli_fetch_array($tv_4))
			{
				$link="?thamso=xuat_san_pham&id=".$tv_5['id'];
				echo "<li><a href='$link'>";
					echo $tv_5['ten'];
				echo "</a></li>";
			}
			echo "</ul></li>";			
		}
		else
		{
			echo "<li><a href='$link_menu'>";
				echo $tv_2['ten'];
			echo "</a></li>";
		}
	}
	echo "</ul>"
?>