<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:include page="../include/header.jsp" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
 <div class="Myshop">
 <%------------ 화면좌측 카테고리 영역시작 ------------%>
  <div id="myshop_left-look">
   <div class="myshop_category-box">
    <h4>주문조회</h4>
    <ul>
     <li><a href="orderlist.net">주문조회/배송조회</a></li>
     <li><a href="orderlist.net">취소/반품/교환내역</a></li>
     <li><a href="orderlist.net">과거주문내역</a></li>
    </ul>
   </div>
   <div class="myshop_category-box">
    <h4>혜택내역</h4>
    <ul>
     <li><a href="#">적립금 내역</a></li>
     <li><a href="#">회원등급적립내역</a></li>
     <li><a href="#">쿠폰관리</a></li>
    </ul>
   </div>
   <div class="myshop_category-box">
   <h4>활동관리</h4>
   <ul>
    <li><a href="#">1:1 문의관리</a></li>
    <li><a href="#">나의 게시물 관리</a></li>
   </ul>
   </div>
   <div class="myshop_category-box" style="border:none;">
   <h4>나의정보</h4>
   <ul>
    <li><a href="#">관심상품</a></li>
    <li><a href="modify.net">회원정보수정</a></li>
   </ul>
   </div>
  </div>
 <%------------ 화면좌측 카테고리 영역끝 ------------%>
 <div id="myshop-center">
  <div id="myshop-title-area">
   <h2>마이 쇼핑</h2>
  </div>
  <div class="myshop-welcome">
   <img src="./images/myshop/member_image.gif"/>
   <div id="welcome-text">
    <p>
         저희 쇼핑몰을 이용해 주셔서 감사합니다. <b>???</b> 님은 <b>[??]</b> 회원입니다.
    </p>
   </div>
  </div>
  <%-------- 주문처리 현황 영역 시작--------%>
  <div class="order-processing-area">
   <div id="top">
    <b>주문처리 현황</b>
   </div>
   <div id="bottom">
      <div><b>배송준비중</b><a href="#">0</a></div>
      <div><b>배송중</b><a href="#">0</a></div>
      <div><b>배송완료</b><a href="#">0</a></div>
   </div>
  </div>
  <%-------- 주문처리 현황 영역 끝--------%>
  <div class="category-views">
   <div id="top-div">
    <div>
     <img src="./images/myshop/order.png" alt="주문내역 조회"/><br>
     <a href="orderlist.net" class=top-a>
      <b>Order</b><br>
      <label>주문내역 조회</label><br><br>
     </a>
     <a href="orderlist.net" class="bottom-a">
      <label>고객님께서 주문하신 상품의</label><br>
 	  <label>주문내역을 확인하실 수 있습니다.</label>
     </a>
    </div>
    <div class="revision">
     <img src="./images/myshop/profile.png" alt="회원 정보"/><br>
     <a href="modify.net" class="top-a">
      <b>Profile</b><br>
      <label>회원 정보</label><br><br>
     </a>
     <a href="modify.net" class="bottom-a">
      <label>회원이신 고객님의 개인정보를</label><br>
      <label>관리하는 공간입니다.</label>
     </a>
    </div>
    <div class="revision">
     <img src="./images/myshop/wishlist.png" alt="관심 상품"/><br>
     <a href="#" class="top-a">
      <b>Wishlist</b><br>
      <label>관심 상품</label><br><br>
     </a>
     <a href="#" class="bottom-a">
      <label>관심상품으로 등록하신</label><br>
      <label>상품의 목록을 보여드립니다.</label>
     </a>
    </div>
   </div>
   <div id="bottom-div">
    <div class="revision">
     <img src="./images/myshop/mileage.png" alt="적립금"/><br>
     <a href="#"  class="top-a">
      <b>Mileage</b><br>
      <label>적립금</label><br><br>
     </a>
     <a href="#" class="bottom-a">
      <label>적립금은 상품 구매 시</label><br>
      <label>사용하실 수 있습니다.</label>
     </a>
    </div>   
    <div>
     <img src="./images/myshop/board.png" alt="게시물 관리"/><br>
     <a href="#" class="top-a">
      <b>Board</b><br>
      <label>게시물 관리</label><br><br>
     </a>
     <a href="#" class="bottom-a">
      <label>고객님께서 작성하신 게시물을</label><br>
      <label>관리하는 공간입니다.</label>
     </a>
    </div>
    <div class="revision">
    <img src="./images/myshop/recently.png" alt="주문내역 조회"/><br>
     <a href="#" class="top-a"> 
      <b>Recently Viewed</b><br>
      <label>최근 본 상품</label><br><br>
     </a>
     <a href="#" class="bottom-a">
      <label>최근에 봤던 상품들을</label><br>
      <label>모아보실 수 있습니다.</label>
     </a>
    </div>
   </div>
  </div>
 </div>
</div>
<jsp:include page="../include/footer.jsp" />