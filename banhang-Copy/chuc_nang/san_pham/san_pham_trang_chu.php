<?php 
	
	$tv="select id,ten,gia,hinh_anh,thuoc_menu from san_pham where trang_chu='co' order by sap_xep_trang_chu desc limit 0,15";
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
?>