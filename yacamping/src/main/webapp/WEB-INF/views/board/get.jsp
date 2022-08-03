<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<% String id = (String)session.getAttribute("id"); %>
<c:set var = "path" value = "${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>야캠핑어때 캠핑장 상세정보</title>
  <link href="${path}/resources/css/detail_info.css" rel="stylesheet" />
  <!-- 제이쿼리 불러오기 -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard-polyfill/2.8.6/clipboard-polyfill.js"></script>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c34b277686c67e06eb17fc958097c2d6"></script>
  <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
  <style>
  
  </style>
</head>

<body>
  <!--전체영역 감싸기-->
  <div class="container">

    <!--전체 컨텐츠 영역-->
    <div class="allcontent">

      <!-----------------헤더 시작----------------->
      <header class="header">
        <div class="head">
          <!--로고이미지&타이틀-->
          <img src="${path}/resources/image/logo-1.png" class="logo" alt="로고">
          <div class="logotitle">야캠핑어때
          </div>

 		  <!--로그인아이콘(유저아이콘)-->
          <ul class="login">
            <li>
              <img src="${path}/resources/image/user-logo.png" class="userlogo" alt="사용자로고">
            <ul class="menu">
              <%if(id == null) {%> 
              <li><a href="/Login">로그인</a></li>
              <li><a href="/Agree">회원가입</a></li>
              <% } else { %>
              <li><a href="/Logout">로그아웃</a></li>
              <li><a href="#">마이페이지</a></li>
              <% } %>
            </ul>
            </li>
          </ul>

      </header>
      <!-----------------헤더 끝----------------->

      <!-----------------섬네일 이미지 클릭 시 확대 시작----------------->

      <div class="main_img">

        <!--확대된 이미지-->
        <div id="zoom_img">
          <img src="${path}/resources/image/c3.jpg" alt="image1" class="zoomimg">
        </div>

        <!--섬네일 리스트-->
        <ul class="thumb">

          <!--섬네일1-->
          <li class="on">
            <a href="#">
              <img src="${path}/resources/image/c3.jpg" alt="image1">
            </a>
          </li>
          <!--섬네일2-->
          <li>
            <a href="#">
              <img src="${path}/resources/image/c5.jpg" alt="image2">
            </a>
          </li>
          <!--섬네일3-->
          <li>
            <a href="#">
              <img src="${path}/resources/image/c6.jpg" alt="image3">
            </a>
          </li>
          <!--섬네일4-->
          <li>
            <a href="#">
              <img src="${path}/resources/image/c14.jpg" alt="image4">
            </a>
          </li>
        </ul>
      </div>
      <!-----------------섬네일 이미지 클릭 시 확대 끝----------------->

      <!-----------------메일 타이틀 시작----------------->

      <div class="main_title">

        <!--해쉬태그-->
        <div class="reco_hashtag">
          <div class="hashtag">#실시간예약</div>
          <div class="hashtag">#포인트적립</div>
          <div class="hashtag">#포인트사용</div>
          <div class="hashtag">#양도가능</div>
        </div>
        <br>
        <div class="title">
          <h2>캠핑우든브릿지</h2>
          <h4>0504-2016-4022</h4>
          <div class="address">
            <input id="myInput" value="강원 영월군 무릉도원면 두산길 299-8 (두산리)" readonly>
            <button onclick="copy_to_clipboard()"><img src="${path}/resources/image/copy.png" alt="주소 복사">
              <p>주소 복사</p>
            </button>
          </div>
          <div class="price">55,000원~</div>
        </div>

        <div class="visit">
          최근 한달 동안 <span>1,379명</span> 방문 | <span>64명</span>이 예약하였습니다.
        </div>
      </div>

      <!-----------------메일 타이틀 끝----------------->

      <!-----------------캠핑장 소개 시작----------------->

      <div class="introduce">
        <div class="intro">캠핑장 소개</div>
        <div class="intro_detail">
          <div class="box">
            <div class="content">
              *** (예약은 찜하신후 5시간내 입급 완료시 예약완료)***<br>

              여름에도 저녁 시간(22도에서 24도 유지) 모기없고 시원한 계곡이 있는 소형 캠핑장<br>

              필독::: 예약 취소시(-1,000원) 차감후 환불 필독**장작반입금지 매점에서 초A급 판매**<br>

              1.데크 포함 모든 싸이트 텐트(대형), 차박(모든유형), 카라반(700급)까지== {모두대형싸이트}<br>

              투폴딩, 캠팡카(35인승)까지 모두 캠핑 가능한 대형 싸이트로 운영== {모두 대형싸이트}<br>

              2..반려견은 짖지않는 아이만 입장 가능[꼭 전화로 사전 문의] 후 예약하세요<br>

              3. 장작 반입 금지 매점에서 판매<br>

              4 동계장박(12월1일부터 4월30일까지) 선예약 환영 (홍천에서 가까운 인제 내린천휴게소근처)<br>

              5. 주의!! 꼭꼭꼭 내린천휴게소를 경유하여 인제ic로 나오셔야 길이 좋아요<br>

              6.여름 저녁 시간엔 22~24도를 유지하는 시원한 곳 동계장박시 바람이 없어 겨울장박에 최적화 소형캠핑장<br>

              7. 상시 관리인상주 솔캠하기 안전하고 쾌적한 조용한 캠핑장<br>

              입실 PM 2시 / 퇴실 PM 1시<br>

              **** 매너타임 PM11~ AM 8시까지 엄수요망 ****<br>

              캠핑장 인근 3km내 다양한 편의 시설 존재<br>

              하나로마트. 대형슈펴.약국.소방서.우체국.농협.보건소,소방서,파출소,<br>

              주유소 .커피숍.학교운동장.정육점.피자치킨.중국집.막국수.다양한 음식점<br>

              서울기준 양양,강릉 중간지점으로 1시간내 강원도내 이동 가능<br>

              다양한 음식점등 존재해요. 배달가능한 다수의 편의 시설이 있어요<br>

            </div>
          </div>
        </div>
      </div>

      <!-----------------캠핑장 소개 끝----------------->

      <!-----------------이용안내 중 기본정보 시작----------------->


      <div class="intro1">이용안내</div>
      <div class="basic_information">
        <p class="tit">기본정보</p>



        <ul class="icon_txt">
          <dl>
            <dt>관련 사이트</dt>
            <dd>
              <a href="#">www.캠핑장.com</a>
            </dd>
          </dl>


          <dl>
            <dt>운영형태</dt>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/a1.png">
              </div>
              <div class="txt">오토캠핑</div>
            </dd>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/a2.png">
              </div>
              <div class="txt">카라반</div>
            </dd>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/a3.png">
              </div>
              <div class="txt">글램핑</div>
            </dd>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/a4.png">
              </div>
              <div class="txt">펜션</div>
            </dd>
          </dl>

          <dl>
            <dt>편의시설</dt>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/b1.png">
              </div>
              <div class="txt">공용화장실</div>
            </dd>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/b2.png">
              </div>
              <div class="txt">공용샤워장</div>
            </dd>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/b3.png">
              </div>
              <div class="txt">개수대</div>
            </dd>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/b4.png">
              </div>
              <div class="txt">매점</div>
            </dd>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/b5.png">
              </div>
              <div class="txt">와이파이</div>
            </dd>
          </dl>

          <dl>
            <dt>이용가능</dt>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/ico_camp_atype_01.png">
              </div>
              <div class="txt">놀이시설</div>
            </dd>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/ico_camp_atype_02.png">
              </div>
              <div class="txt">수영장</div>
            </dd>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/ico_camp_atype_03.png">
              </div>
              <div class="txt">트램플린</div>
            </dd>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/ico_camp_atype_04.png">
              </div>
              <div class="txt">체험활동</div>
            </dd>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/c5.png">
              </div>
              <div class="txt">장비대여</div>
            </dd>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/c6.png">
              </div>
              <div class="txt">반려동물</div>
            </dd>
          </dl>

          <dl>
            <dt>레저</dt>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/d1.png">
              </div>
              <div class="txt">수상레저</div>
            </dd>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/d2.png">
              </div>
              <div class="txt">낚시</div>
            </dd>

            <dd>
              <div class="icon">
                <img src="${path}/resources/image/이용안내 아이콘/d3.png">
              </div>
              <div class="txt">등산</div>
            </dd>
          </dl>
        </ul>

      </div>

      <!-----------------이용안내 중 기본정보 끝----------------->

      <!-----------------이용안내 중 예약정보 시작----------------->

      <div class="reservation_information">
        <p class="tit">예약정보</p>

        <ul class="reser_info">

          <dl>
            <dt>예약가능일</dt>
            <dd>
              <div class="txt2">~2023.01.01</div>
            </dd>
          </dl>

          <dl>
            <dt>예약오픈일</dt>
            <dd>
              <div class="txt2">매일 10시 / 5개월 단위</div>
            </dd>
          </dl>

          <dl>
            <dt>예약가능일수</dt>
            <dd>
              <div class="txt2">최대 6박 7일</div>
            </dd>
          </dl>

          <dl>
            <dt><span style="width:95px;">예약가능사이트수</span></dt>
            <dd>
              <div class="txt2">최대 24개 사이트</div>
            </dd>
          </dl>

          <dl>
            <dt>성수기</dt>
            <dd>
              <div class="txt2">2022.07.12~2022.08.18</div>
            </dd>
          </dl>

          <dl>
            <dt>준성수기</dt>
            <dd>
              <div class="txt2">2022.08.19~2022.09.01</div>
            </dd>
          </dl>
        </ul>
      </div>

      <!-----------------이용안내 중 예약정보 끝----------------->

      <!-----------------이용안내 중 이용시간 안내 시작----------------->

      <div class="time_information">
        <p class="tit">이용시간 안내</p>

        <div class="time_detail">

          <div class="camtime">입퇴실시간</div>
          <div class="in">입실 <span class="t_inout">13 : 00</span></div>
          <hr>
          <div class="out">퇴실 <span class="t_inout">11 : 00</span></div>

        </div>


        <div class="time_detail">

          <div class="mannertime">매너타임</div>
          <div class="in">시작 <span class="t_manner">23 : 00</span></div>
          <hr>
          <div class="out">종료 <span class="t_manner">07 : 00</span></div>

        </div>
      </div>

      <!-----------------이용안내 중 이용시간 안내 끝----------------->

      <!-----------------이용안내 중 약도 시작----------------->

      <div class="maptitle">
        <p class="tit">약도</p>
        <div id="map"></div>
      </div>

      <!-----------------이용안내 중 약도 끝----------------->


      <!-----------------푸터 시작----------------->
      <footer class="footer">
        <div class="foot">

          <div class="foot_btn">
            <div class="share">
              <a href="javascript:sendLink()">
                <button>
                  <img src="${path}/resources/image/share.png" />
                </button>
              </a>
            </div>

            <div class="heart">
              <button><img src="${path}/resources/image/heart.png"></button>
            </div>
          </div>

          <div class="reservation_click">
            <button class="openBtn">예약하기</button>
            <div class="modal hidden">
              <div class="bg"></div>
              <div class="modalBox">
                <p>야캠핑어때 로그인 후 예약 가능합니다.</p>
                <div class="btn_log_close">
                  <button class="gotolog"><a href="#">로그인 하러가기</a></button>
                  <button class="closeBtn">닫기</button>
                </div>
              </div>
            </div>
          </div>

        </div>

      </footer>
      <!-----------------푸터 끝----------------->
    </div>
  </div>
  <script src="${path}/resources/js/detail_info.js"></script>

</body>

</html>