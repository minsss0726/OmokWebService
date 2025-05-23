<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.shinhan5goodteam.omok.model.User" %>
<%
    User user = (User) session.getAttribute("user");
    String user_id = user.getUserid();

%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>내 프로필</title>
  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/layout.css">
  <link rel="stylesheet" href="css/myprofil.css">
</head>
<body>
  <div id="wrapper">

    <!-- 상단 헤더 -->
    <header>
      <div class="title">5조은목</div>
      <div class="home_icon">
        <a href="main.html">
          <img src="img/tomainicon.png" alt="홈" />
        </a>
      </div>
    </header>

    <!-- 메인 영역 -->
    <main>

      <!-- 회원정보 수정 -->
      <div id="user_section_title">
        <img src="img/arrow.png" alt="arrow" style="width:14px; height:14px; margin-right:8px;">
        회원 정보 
      </div>

      <div id="user_info_form">
        <input type="text" id="user_id_input" value="<%= user_id %>" disabled />
        <div id="pw_change_group">
          <input type="password" id="user_pw_input" placeholder="************" disabled />
          <!--<button type="button" id="change_pw_button">비밀번호 변경</button>-->
        </div>
      </div>

      <!-- 프로필 변경 박스 -->
    
    <div id="profile_section_title">
        <span class="section_icon_text">
        <img src="img/arrow.png" alt="arrow" class="arrow_icon" />
        프로필 변경
        </span>
    </div>

    <div id="profile_box_wrapper">
        <!-- 선택된 캐릭터 -->
        <div id="profile_preview">
          <img src="img/moli.png" alt="선택된 캐릭터" id="selected_character_img" />
          <div id="selected_character_name">모리</div>
        </div>

        <!-- 캐릭터 선택 -->
        <div id="character_selection_box">
          <div id="character_selection_group" class="character_selection_group">
            <img src="img/moli.png" id="moli" alt="모리" class="character_option" data-name="모리"/>
            <img src="img/rino.png" id="rino" alt="리노" class="character_option" data-name="리노" />
            <img src="img/sol.png" id="sol" alt="솔" class="character_option" data-name="솔" />
            <img src="img/lay.png" id="lay" alt="레이" class="character_option" data-name="레이" />
          </div>
        </div>

        <!-- 배경 색상 선택 -->
        <div id="background_color_box">
          <div id="background_color_group" class="background_color_selection_container">
            <div id="orange" class="color_option" style="background-color: #F3B671;" data-color="#f4be5b"></div>
            <div id="pink" class="color_option" style="background-color: #F6C8E8;"data-color="#f4c2d7"></div>
            <div id="gray" class="color_option" style="background-color: #DADADA;"data-color="#d3d3d3"></div>
            <div id="skyblue" class="color_option" style="background-color: #A4B2C0;"data-color="#cbd3db"></div>
            <div id="navy" class="color_option" style="background-color: #5874A0;"data-color="#506fa1"></div>
          </div>
        </div>
      </div>

      <!-- 저장 버튼 -->
      <div id="save_button_container" class="save_button_container">
        <button id="save_button">저장</button>
      </div>

    </main>
  </div>

  <!-- 스크립트 -->
  <script src="myprofilscript.js"></script>
</body>
</html>