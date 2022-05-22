<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="shoesstore.entities.OrderDetails" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<c:set var="card" value="${sessionScope['scopedTarget.cardService']}"/>
<div class="container justify-content-center d-flex">
<f:setLocale value="vi_VN" scope="session"/>
	<div class="col-sm-12 col-md-10 col-md-offset-1 justify-content-center">
		<table class="table table-hover justify-content-center">
			<thead>
				<tr>
					<th>Tên sản phẩm</th>
					<th>Size</th>
					<th>Màu sắc</th>
					<th>Số lượng</th>
					<th class="text-center">Giá</th>
					<th class="text-center">Tổng cộng</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${sessionScope['scopedTarget.cardService'].items}">
							<tr data-id="${item.product.id}"
					    data-price="${item.product.price}"
					    data-color="${item.color}"
					    data-size="${item.size}"
					    data-sale="${item.product.sale}">
						<td class="col-sm-8 col-md-6">
							<div class="media">
								<a class="thumbnail pull-left" href="#"> <img
									class="media-object"
									src="data:image/jpeg;base64,${item.product.image}"
									style="width: 72px; height: 72px;">
								</a>
							</div>
						</td>
						<td class="col-sm-1 col-md-1 text-center"><strong>${item.size}</strong></td>
						<td class="col-sm-1 col-md-1 text-center"><strong>${item.color}</strong></td>
						<td class="col-sm-1 col-md-1" style="text-align: center">
							<input class="form-control" type="number" min="1"
									value="${item.quantity}" >
						</td>
						<td class="col-sm-1 col-md-1 text-center"><strong><f:formatNumber value="${item.product.price*(1-item.product.sale)}" type="currency"/></strong></td>
						<td class= "total col-sm-1 col-md-1 text-center">
								<f:formatNumber value="${item.totalPrice}" type="currency"/>
						</td>
						<td class="col-sm-1 col-md-1">
							<button type="button" class="btn btn-danger btn-card-remove">
								<span class="fa fa-remove"></span> Xoá 
							</button>
						</td>
					</tr>
				</c:forEach>
				<tr >
					<td></td>
					<td></td>
					<td>
						<button type="button" class="btn btn-default continue">
							<span class="fa fa-shopping-cart"></span> Shopping
						</button>
					</td>
					<td><f:formatNumber value="${card.amount}" type="currency"/></td>
					<td class="col-sm-0 col-md-50">
						<button type="button" class="btn btn-success check-out">
							Thanh toán <span class="fa "></span>
						</button>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function(){
	 $("tr[data-id] input").on("input",function(){
		var id = $(this).closest("tr").attr("data-id"); 
		var price = $(this).closest("tr").attr("data-price"); 
		var sale = $(this).closest("tr").attr("data-sale"); 
		var color = $(this).closest("tr").attr("data-color"); 
		var size = $(this).closest("tr").attr("data-size"); 
		var qty = $(this).val();
		var url = "/shoes_store/card/update/"+color+size+id+"/quantity/"+qty;
		$.ajax({
			url:url,
			type: "GET",
			success: function( response ){
				$("#amt").html(response[1]);
				$("#cnt").html(response[0]);
			}
		});
		var totalPrice = price*(1-sale)*qty;
		$(this).closest("tr").find("td.total").html(totalPrice);
	 });
	 $(".btn-card-remove").click(function(){
		 var id = $(this).closest("tr").attr("data-id");
		 var color = $(this).closest("tr").attr("data-color"); 
		 var size = $(this).closest("tr").attr("data-size"); 
		 var url = "/shoes_store/card/remove/"+color+size+id;
		 $.ajax({
				url:url,
				type: "GET",
				success: function( response ){
					$("#amt").html(response[1]);
					$("#cnt").html(response[0]);
				}
		});
		$(this).closest("tr").remove();
	 });
	 $(".check-out").click(function(){
		 var url = "/shoes_store/card/checkout";
		 top.location.href=url;
	 });
	 $(".continue").click(function(){
		 var url = "/shoes_store/shop";
		 top.location.href=url;
	 });
});
</script>