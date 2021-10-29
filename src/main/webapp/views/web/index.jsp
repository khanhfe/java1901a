<%--
  Created by IntelliJ IDEA.
  User: saber
  Date: 2021-10-29
  Time: 12:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Cache-control" content="no-cache">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<title>Trang chủ</title>
</head>
<body>
	<header id="header" class="header">
		<div class="container d-flex">
			<div class="logo"><img src="https://file.hstatic.net/200000265255/file/logo-min_659f1336baab4e208eae9fcb45e22567.png" alt="logo"></div>
			<div class="component-search">
				<form action="#" method="get" accept-charset="utf-8">
					<input type="text" name="key" placeholder="Tìm kiếm sản phẩm ...">
					<button type="submit"><i class="fa fa-search"></i></button>
				</form>	
			</div>
			<div class="component-cart">
				<a href="#" title="Cart"><i class="fa fa-cart"></i></a>
			</div>
		</div>
	</header><!-- /header -->
	<section class="banner">
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="sidebar">
						<nav class="nav-main">
							<ul>
								<li><a href="/" title="Điện thoại">Điện thoại</a></li>
								<li><a href="/" title="Điện thoại">Máy tính bảng</a></li>
								<li><a href="/" title="Điện thoại">Laptop</a></li>
								<li><a href="/" title="Điện thoại">Đồng hồ</a></li>
								<li><a href="/" title="Điện thoại">Phụ kiện</a></li>
							</ul>
						</nav>
					</div>				
				</div>
				<div class="col-sm-9">
					<div class="owl-carousel" id="owl-banner">
						<C:forEach var="item" items="${model.listResult}">
							<div class="item-banner">
								<img src="https://file.hstatic.net/200000265255/file/img4_a0bac513a67c4331882dd3ce20259a72.jpg" alt="#">
							</div>
						</C:forEach>
					</div>
				</div>
			</div>	
		</div>
	</section>
	<section id="policy">
		<div class="container">
			<div class="row ">
				<div class="col-sm-3">
					<div class="policyItem">
						<div class="d-flex">
							<img src="https://file.hstatic.net/200000265255/file/static-icons-1_c276878e211c4819b74eef75150bcdab.png" class="img-fluid ls-is-cached lazyloaded" data-src="https://file.hstatic.net/200000265255/file/static-icons-1_c276878e211c4819b74eef75150bcdab.png" alt="Policy-1">
							<div class="policyItemContent">
								<div><strong>Đảm bảo đúng hẹn</strong></div>
								<span>Hoàn lại tiền trong 30 ngày</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="policyItem">
						<div class="d-flex">
							<img src="https://file.hstatic.net/200000265255/file/static-icons-2_527e480eb3f6439d9c5fe19bc5e9a31f.png" class="img-fluid ls-is-cached lazyloaded" data-src="https://file.hstatic.net/200000265255/file/static-icons-2_527e480eb3f6439d9c5fe19bc5e9a31f.png" alt="Policy-2">
							<div class="policyItemContent">
								<div><strong>Miễn phí vận chuyển</strong></div>
								<span>Hóa đơn trên 100.000 VNĐ</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="policyItem">
						<div class="d-flex">
							<img src="https://file.hstatic.net/200000265255/file/static-icons-3_bf2d3625ab414276a01c726228fd46c0.png" class="img-fluid ls-is-cached lazyloaded" data-src="https://file.hstatic.net/200000265255/file/static-icons-3_bf2d3625ab414276a01c726228fd46c0.png" alt="Policy-3">
							<div class="policyItemContent">
								<div><strong>Hổ trợ trực tuyến</strong></div>
								<span>Chúng tôi hổ trợ 24/24</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="policyItem">
						<div class="d-flex">
							<img src="https://file.hstatic.net/200000265255/file/static-icons-4_506ec194d9444d30925aaa929ae0e2b3.png" class="img-fluid ls-is-cached lazyloaded" data-src="https://file.hstatic.net/200000265255/file/static-icons-4_506ec194d9444d30925aaa929ae0e2b3.png" alt="Policy-4">
							<div class="policyItemContent">
								<div><strong>Khuyến mãi</strong></div>
								<span>Giảm giá 50% tất cả sản phẩm</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="cat-dtdd">
		<div class="container">
			<div class="owl-carousel" id="owl-dtdd">
				<C:forEach var="item" items="${model.listResult}">
					<div class="item-product">
						<div class="img-product">
							<img src="https://product.hstatic.net/200000265255/product/iphone-11-pro-max-didongviet_gold_7b0d0ace73d2440ca821bafa14892538_2c741e50f399449599a7355b4a430754_grande.png" alt="#">
						</div>	
						<h3 class="name-prodcut">iPhone 13 Pro Max</h3>
						<p class="price-product">29.990.000đ</p>
					</div>
				</C:forEach>
			</div>
		</div>
	</section>
	<section class="cat-latop">
		<div class="container">
			<div class="owl-carousel" id="owl-latop">
				<C:forEach var="item" items="${model.listResult}">
					<div class="item-product">
						<div class="img-product">
							<img src="https://product.hstatic.net/200000265255/product/iphone-11-pro-max-didongviet_gold_7b0d0ace73d2440ca821bafa14892538_2c741e50f399449599a7355b4a430754_grande.png" alt="#">
						</div>	
						<h3 class="name-prodcut">iPhone 13 Pro Max</h3>
						<p class="price-product">29.990.000đ</p>
					</div>
				</C:forEach>
			</div>
		</div>
	</section>
	<section class="cat-tablet">
		<div class="container">
			<div class="owl-carousel" id="owl-tablet">
				<C:forEach var="item" items="${model.listResult}">
					<div class="item-product">
						<div class="img-product">
							<img src="https://product.hstatic.net/200000265255/product/iphone-11-pro-max-didongviet_gold_7b0d0ace73d2440ca821bafa14892538_2c741e50f399449599a7355b4a430754_grande.png" alt="#">
						</div>	
						<h3 class="name-prodcut">iPhone 13 Pro Max</h3>
						<p class="price-product">29.990.000đ</p>
					</div>
				</C:forEach>
			</div>
		</div>
	</section>
	<section class="cat-watch">
		<div class="container">
			<div class="owl-carousel" id="owl-watch">
				<C:forEach var="item" items="${model.listResult}">
					<div class="item-product">
						<div class="img-product">
							<img src="https://product.hstatic.net/200000265255/product/iphone-11-pro-max-didongviet_gold_7b0d0ace73d2440ca821bafa14892538_2c741e50f399449599a7355b4a430754_grande.png" alt="#">
						</div>	
						<h3 class="name-prodcut">iPhone 13 Pro Max</h3>
						<p class="price-product">29.990.000đ</p>
					</div>
				</C:forEach>
			</div>
		</div>
	</section>
	<section id="news">
		<div class="container">
			<div class="owl-carousel" id="owl-news">
				<div class="item-news">
					<div class="img-news">
						<img src="https://file.hstatic.net/200000265255/article/s_15_96aea310f1494f1eb02dac28f7c4a4a4_1c37065654724ff7b34877a2efb33873_84e41076c1eb465f8cf3f772d1f27b7a_1024x1024.jpg" alt="">
					</div>
					<div class="desc-news">
						<h3 class="title-news">Những chiếc iPhone này sẽ bị iOS bỏ rơi vào năm sau</h3>
						<p class="description-news">
							Một báo cáo mới cho thấy Apple đang có kế hoạch loại bỏ hỗ trợ iOS 15 cho các mẫu iPhone SE, 6S và 6S Plus vào năm tới.Điều này xảy ra sau khi Apple tiếp tục duy trì khả năng tương thích của các thiết bị nói trên trong...
						</p>
					</div>
				</div>	
				<div class="item-news">
					<div class="img-news">
						<img src="https://file.hstatic.net/200000265255/article/s_15_96aea310f1494f1eb02dac28f7c4a4a4_1c37065654724ff7b34877a2efb33873_84e41076c1eb465f8cf3f772d1f27b7a_1024x1024.jpg" alt="">
					</div>
					<div class="desc-news">
						<h3 class="title-news">Những chiếc iPhone này sẽ bị iOS bỏ rơi vào năm sau</h3>
						<p class="description-news">
							Một báo cáo mới cho thấy Apple đang có kế hoạch loại bỏ hỗ trợ iOS 15 cho các mẫu iPhone SE, 6S và 6S Plus vào năm tới.Điều này xảy ra sau khi Apple tiếp tục duy trì khả năng tương thích của các thiết bị nói trên trong...
						</p>
					</div>
				</div>	
				<div class="item-news">
					<div class="img-news">
						<img src="https://file.hstatic.net/200000265255/article/s_15_96aea310f1494f1eb02dac28f7c4a4a4_1c37065654724ff7b34877a2efb33873_84e41076c1eb465f8cf3f772d1f27b7a_1024x1024.jpg" alt="">
					</div>
					<div class="desc-news">
						<h3 class="title-news">Những chiếc iPhone này sẽ bị iOS bỏ rơi vào năm sau</h3>
						<p class="description-news">
							Một báo cáo mới cho thấy Apple đang có kế hoạch loại bỏ hỗ trợ iOS 15 cho các mẫu iPhone SE, 6S và 6S Plus vào năm tới.Điều này xảy ra sau khi Apple tiếp tục duy trì khả năng tương thích của các thiết bị nói trên trong...
						</p>
					</div>
				</div>	
			</div>
		</div>
	</section>
	<section id="partner">
		<div class="container">
			<div class="owl-carousel" id="owl-partner">
				<div class="item-partner">
					<img src="https://file.hstatic.net/200000265255/file/iphone_f7964eac19af4932ab5f13eac1bc3d23.png" alt="">
				</div>
				<div class="item-partner">
					<img src="https://file.hstatic.net/200000265255/file/iphone_f7964eac19af4932ab5f13eac1bc3d23.png" alt="">
				</div>
				<div class="item-partner">
					<img src="https://file.hstatic.net/200000265255/file/iphone_f7964eac19af4932ab5f13eac1bc3d23.png" alt="">
				</div>
				<div class="item-partner">
					<img src="https://file.hstatic.net/200000265255/file/iphone_f7964eac19af4932ab5f13eac1bc3d23.png" alt="">
				</div>
				<div class="item-partner">
					<img src="https://file.hstatic.net/200000265255/file/iphone_f7964eac19af4932ab5f13eac1bc3d23.png" alt="">
				</div>
				<div class="item-partner">
					<img src="https://file.hstatic.net/200000265255/file/iphone_f7964eac19af4932ab5f13eac1bc3d23.png" alt="">
				</div>
			</div>
		</div>
	</section>
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<h4>Thông tin liên hệ</h4>
					<div class="wrap-info">
						<img src="https://file.hstatic.net/200000265255/file/logo-min_659f1336baab4e208eae9fcb45e22567.png" alt="logo">
						<p><i class="fa fa-map"></i> 1 Hoàng Đạo Thúy, Thanh Xuân, Hà Nội</p>
						<p><i class="fa fa-phone"></i> 0389 021 327</p>
						<p><i class="fa fa-mail"></i> khanhnguyen@icolor.vn</p>
					</div>
				</div>
				<div class="col-sm-3">
					<h4>Hỗ trợ</h4>
					<div class="FooterMainListToggle">
						<ul>
							<li class="item">
								<a href="/search" title="Tìm kiếm">Tìm kiếm</a>
							</li>
							<li class="item">
								<a href="/pages/about-us" title="Giới thiệu">Giới thiệu</a>
							</li>
							<li class="item">
								<a href="/pages/chinh-sach-doi-tra" title="Chính sách đổi trả">Chính sách đổi trả</a>
							</li>
							<li class="item">
								<a href="/pages/chinh-sach-bao-mat" title="Chính sách bảo mật">Chính sách bảo mật</a>
							</li>
							<li class="item">
								<a href="/pages/dieu-khoan-dich-vu" title="Điều khoản dịch vụ">Điều khoản dịch vụ</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-3">
					<h4>Dịch vụ khách hàng</h4>
					<div class="FooterMainListToggle">
						<ul>
							<li class="item">
								<a href="/collections/onsale" title="Sản phẩm khuyến mãi">Sản phẩm khuyến mãi</a>
							</li>
							<li class="item">
								<a href="/collections/all" title="Tất cả sản phẩm">Tất cả sản phẩm</a>
							</li>
							<li class="item">
								<a href="/collections/onsale" title="Sản phẩm nổi bật">Sản phẩm nổi bật</a>
							</li>
							<li class="item">
								<a href="/collections/ipad" title="Ipad">Ipad</a>
							</li>
							<li class="item">
								<a href="/collections/dien-thoai" title="Iphone">Iphone</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-3">
					<h4>Về chúng tôi</h4>
				</div>
			</div>
		</div>
	</footer>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://kit.fontawesome.com/9f613a715c.js" defer></script>
	<script type="text/javascript" charset="utf-8" defer>
		jQuery(document).ready(function($) {
			$('#owl-banner').owlCarousel({
				loop:true, 
				items : 1,
				lazyLoad : true,
				autoPlay : true,
				stopOnHover : true,
				navigation:true, 
				nav: true,
			});
			$('#owl-dtdd').owlCarousel({
				loop:false, 
				items : 5,
				lazyLoad : true,
				autoPlay : true,
				stopOnHover : true,
				navigation:true, 
				nav: true,
			});
			$('#owl-laptop').owlCarousel({
				loop:false, 
				items : 5,
				lazyLoad : true,
				autoPlay : true,
				stopOnHover : true,
				navigation:true, 
				nav: true,
			});
			$('#owl-tablet').owlCarousel({
				loop:false, 
				items : 5,
				lazyLoad : true,
				autoPlay : true,
				stopOnHover : true,
				navigation:true, 
				nav: true,
			});
			$('#owl-watch').owlCarousel({
				loop:false, 
				items : 5,
				lazyLoad : true,
				autoPlay : true,
				stopOnHover : true,
				navigation:true, 
				nav: true,
			});
			$('#owl-news').owlCarousel({
				loop:false, 
				items : 2,
				lazyLoad : true,
				autoPlay : true,
				stopOnHover : true,
				navigation:true, 
				nav: true,
			});
			$('#owl-partner').owlCarousel({
				loop:false, 
				items : 6,
				lazyLoad : true,
				autoPlay : true,
				stopOnHover : true,
				navigation:true, 
				nav: true,
			});
		});
	</script>
</body>
</html>
