<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="./js/jquery.js"></script>
<title></title>
<script>
function categoryChange(e) {
	var opt_a = ["single", "super_single", "double", "queen", "king"];
	var opt_b = ["menu", "menu", "menu", "menu", "menu"];
	var opt_c = ["menu", "menu", "menu", "menu", "menu"];
	var opt_d = ["menu", "menu", "menu", "menu", "menu"];
	var opt_e = ["menu", "menu", "menu", "menu", "menu"];
	var target = document.getElementById("p_category");

	if(e.value == "bed") var d = opt_a;
	else if(e.value == "sofa") var d = opt_b;
	else if(e.value == "table") var d = opt_c;
	else if(e.value == "chair") var d = opt_d;
	else if(e.value == "cabinet") var d = opt_e;

	target.options.length = 0;

	for (x in d) {
		var opt = document.createElement("option");
		opt.value = d[x];
		opt.innerHTML = d[x];
		target.appendChild(opt);
	}	
}
</script>
</head>
<body>
<div>
		<h2>상품 등록</h2>
		<form method="post" action="product_join_ok.net" 
		onsubmit="return product_join_check();" enctype="multipart/form-data">
		<%-- 
			파일을 첨부해서 서버에 업로드 하려면 추가 해야할 코드) => 자료실 만들 때 필요한 코드
			 1. 폼태그 내에 enctype="multipart/form-data" 속성을 지정해야 한다. 
			 2. method="post"방식만 가능하다. get방식은 안된다. 그러므로 form태그 내에서 
			 	method속성을 생략하면 안된다.(기본값 : get)
			 3. 파일을 첨부해서 서버에 업로드하려면 일반적으로 라이브러리가 필요하다.
		--%>
			<table>
				<tr>
					<th>상품명</th>
					<td>
						<input name="p_name" id="p_name" size="14">
					</td>
				</tr>
				<tr>
					<th>할인 전 가격</th>
					<td><input name="p_before_price" id="p_before_price" size="14"></td>
				</tr>
				<tr>
					<th>상품 가격</th>
					<td><input name="p_price" id="p_price" size="14"></td>
				</tr>
				<tr>
					<th>상품 수량</th>
					<td><input name="p_amount" id="p_amount" size="14"></td>
				</tr>
				
				<tr>
					<th>상품 이미지1</th>
					<td><input type="file" name="p_img1" id="p_img2"></td>
				</tr>
				
				<tr>
					<th>상품 이미지2</th>
					<td><input type="file" name="p_img2" id="p_img2"></td>
				</tr>
				
				<tr>
					<th>MD's Choice</th>
					<td><input type="checkbox" name="p_choice" id="p_choice" value="1">등록</td>
				</tr>
				
				<tr>
					<th>상품 분류</th>
					<td>
						<select name="p_class" id="p_class" onchange="categoryChange(this)">
							<option>선택</option>
							<option value="bed">Bed</option>
							<option value="sofa">Sofa</option>
							<option value="table">Table</option>
							<option value="chair">Chair</option>
							<option value="cabinet">Cabinet</option>
						</select>
					</tr>
				<tr>	
					<th>카테고리</th>
					<td>
						<select name="p_category" id="p_category">
						</select>
					</td>
				</tr>
			</table>
			
			<div>
				<input type="submit" value="등록">
				<input type="reset" value="취소" onclick="$('p_name').focus();">
			</div>
		</form>
	</div>
</body>
</html>