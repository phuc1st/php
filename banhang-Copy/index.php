<?php
    include("ket_noi.php");	   		
?> 
<html>
	<head>
		<meta charset="UTF-8">
		<title>Web bán hàng</title>
		<link rel="stylesheet" href="giao_dien/giao_dien.css">
		<link rel="stylesheet" href="giao_dien/grid.css">
		<link rel="stylesheet" href="giao_dien/themify-icons/themify-icons.css">
	</head>
	<body>
		<div class="">
		<div style="background-color: #cd1818;">
			<div class="header">
				<?php 
					include("chuc_nang/tim_kiem/vung_tim_kiem.php"); 
						include("chuc_nang/menu_ngang/menu_ngang.php");
					?>
			</div>
		</div>
		</div>

		<div class="grid wide">
				<?php 
					include("chuc_nang/dieu_huong.php");
				?>
		</div>

		<!-- footer -->
		<div id="footer"><p>© 2004 - 2023 Công Ty Cổ Phần Bán Lẻ Kỹ Thuật Số PSHOP/ Địa chỉ: 261 - 263 Khánh Hội, P2, Q4, TP. PƠ / GPĐKKD số 0311609355 do Sở KHĐT PƠ cấp ngày 16/10/2023. GP số 47/GP-TTĐT do sở TTTT TP PƠ cấp ngày 16/10/2023. Điện thoại: (028) 7777888. Email: pshop@fpt.com. Chịu trách nhiệm nội dung: Nguyễn Văn Tân Phúc.</p></div>
	</body>
</html>