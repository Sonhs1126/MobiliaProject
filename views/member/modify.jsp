<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../include/header.jsp" />
<script src="./js/jquery.js"></script>
<script src="./js/join.js"></script>
<script src="./js/member/modify.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
   <h2>회원 정보 수정</h2>
  </div>
  <div class="myshop-welcome">
   <img src="./images/myshop/member_image.gif"/>
   <div id="welcome-text">
    <p>
         저희 쇼핑몰을 이용해 주셔서 감사합니다. <b>???</b> 님은 <b>[??]</b> 회원입니다.
    </p>
   </div>
   </div>
   <form name="m" method="post" action="modify_edit_ok.net" onsubmit="return edit_check();">
   <div class="modifying-information-area">
    <table border="1">
    <caption><b class="star">*</b>는 필수항목</caption>
    <colgroup>
     <col style="width:150px;">
     <col style="width:auto;">
    </colgroup>
    <tbody>
    <tr>
     <th scope="row" class="edit-th">아이디</th>
     <td>
      <input id="m_id" name="m_id" onclick="show_edit-id-text();" readonly>
	  <span id="edit-id-text">아이디는 수정이 불가능합니다.</span>
     </td>
    </tr>
    
    <tr>
     <th class="edit-th">비밀번호<b class="star">*</b></th>
     <td>
      <input id="m_pwd" name="m_pwd" onchange="check_pwd()">
      <span class="pwdMsg">(영문 대소문자/숫자/특수문자 조합가능, 6~16자)</span>
     </td>
    </tr>
    
    <tr>
     <th class="edit-th">비밀번호 확인<b class="star">*</b></th>
     <td>
      <input id="pwd_chk" name="pwd_chk" onchange="check_pwd()">
      &nbsp;<span id="check"></span>
     </td>
    </tr>
    
    <tr>
     <th class="edit-th">이름<b class="star">*</b></th>
     <td><input id="m_name" name="m_name"></td>
    </tr>
    
    <tr>
     <th id="post-th">주소<b class="star">*</b></th>
     <td>
     <input type="text" id="m_post" placeholder="우편번호" style="width:80px;" readonly>
	<input type="button" onclick="post_check()" value="우편번호 찾기"><br><br>
	<input type="text" id="m_roadAddr" placeholder="도로명주소" style="width:260px;" readonly>
	<input type="text" id="m_jibunAddr" placeholder="지번주소" style="width:260px;" readonly>
	<span id="guide" style="color:#999;display:none"></span>
	<input type="text" id="m_detailAddr" placeholder="상세주소" style="width:200px;">
     </td>
    </tr>
    
    <tr>
     <th class="edit-th">휴대전화<b class="star">*</b></th>
     <td>
      <select id="m_phone1" name="m_phone1" style="width:80px; height:30px; margin-left:12px; margin-right:12px;">
       <c:forEach var="p" items="${phone}">
        <option value="${p}">${p}</option>
       </c:forEach>
      </select>
      -
      <input id="m_phone02" name="m_phone02" size="4" maxlength="4">-
      <input id="m_phone03" name="m_phone03" size="4" maxlength="4">
     </td>
    </tr>
    
    <tr>
     <th class="edit-th">이메일<b class="star">*</b></th>
     <td>
      <input id="mail_id" name="mail_id">
      &nbsp;@&nbsp;<input id="mail_domain" name="mail_domain" readonly>&nbsp;
      <select id="mail_list" onchange="domain_list();" style="width:85px; height:30px;">
       <c:forEach var="mail" items="${email}">
        <option value="${mail}">${mail}</option>
       </c:forEach>
      </select>
     </td>
    </tr>
    
    <tr>
     <th class="edit-th">생년월일</th>
     <td>
      <input id="m_birth01" name="m_birth01" size="4" maxlength="4">년&nbsp;
      <input id="m_birth02" name="m_birth02" size="2" maxlength="2">월&nbsp;
      <input id="m_birth03" name="m_birth03" size="2" maxlength="2">일
     </td>
    </tr>
    </tbody>
    </table>
    <input type="submit" id="edit-submit" value="회원정보수정">
    <input type="reset" id="edit-reset" value="수정취소" onclick="$('#m_pwd').focus();">
    <input type="button" id="del-button" value="회원탈퇴" onclick="open_delwindow();">
   </div>
  </form>
  </div>
 </div>
 <jsp:include page="../include/footer.jsp" />