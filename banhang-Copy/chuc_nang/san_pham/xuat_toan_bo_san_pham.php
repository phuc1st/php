<?php 
	$so_du_lieu=25;
	$tv="select count(*) from san_pham";
	$tv_1=mysqli_query($connect,$tv);
	$tv_2=mysqli_fetch_array($tv_1);
	$so_trang=ceil($tv_2[0]/$so_du_lieu);
	
	if(!isset($_GET['trang'])){$vtbd=0;}else{$vtbd=($_GET['trang']-1)*$so_du_lieu;}
	
	$tv="select id,ten,gia,hinh_anh,thuoc_menu from san_pham order by id desc limit $vtbd,$so_du_lieu";
	$tv_1=mysqli_query($connect,$tv);
	echo "<div class='row products'>";
	while($tv_2=mysqli_fetch_array($tv_1))
	{
				echo "<div class='col l-2-4 product' >";					
						$link_anh="hinh_anh/san_pham/".$tv_2['hinh_anh'];
						$link_chi_tiet="?thamso=chi_tiet_san_pham&id=".$tv_2['id'];
						$gia=$tv_2['gia'];
						$gia=number_format($gia,0,",",".");
						echo "<a href='$link_chi_tiet' >";
							echo "<div class='product__image'><img src='$link_anh' style='max-width:100%' ></div>";
							echo "<h3>".$tv_2['ten']."</h3>";
							echo "<strong>$gia</strong>";
						echo "</a>"; 						
				echo "</div>";				
	}
	echo "</div>";
	echo "<div class='row col l-12'>";
		echo "<center>";
			echo "<div class='phan_trang' >";
				for($i=1;$i<=$so_trang;$i++)
				{
					$link="?thamso=xuat_san_pham_2&trang=".$i;
					echo "<a href='$link' >";
						echo $i;echo " ";
					echo "</a>";
				}
			echo "</div>";
		echo "</center>";
	echo "</div>";
?>