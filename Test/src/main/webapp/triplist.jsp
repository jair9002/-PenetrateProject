<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  
  <title>관광지 조회</title>
  <link rel="shortcut icon" href="./assets/img/favicon.ico" />
  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
  integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
  integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
  crossorigin="anonymous"></script>
  <script src="main.js"></script>
  <script src="./assets/js/key.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
    <script src="scripts.js" defer></script>
  <link rel="stylesheet" href="main.css">
</head>

<body>
    <!--메뉴바 시작-->
    <%@ include file="nav.jsp" %>
    <!--메뉴바 끝-->


  <!-- 중앙 content start -->
  <div class="container">
    <div style="height: 70px"></div>
    <div class="row">

      <!-- 중앙 center content end -->
      <div class="col-md-15">
        <div class="alert alert-primary mt-3 text-center fw-bold" role="alert">
          관광지 정보 조회
        </div>
        <!-- 관광지 검색 start -->
        <form class="d-flex my-3" onsubmit="return false;" role="search">
          <select id="search-area" class="form-select me-2">
            <option value="0" selected>검색 할 지역 선택</option>
          </select>
          <select id="search-content-id" class="form-select me-2">
            <option value="0" selected>관광지 유형</option>
            <option value="12">관광지</option>
            <option value="14">문화시설</option>
            <option value="15">축제공연행사</option>
            <option value="25">여행코스</option>
            <option value="28">레포츠</option>
            <option value="32">숙박</option>
            <option value="38">쇼핑</option>
            <option value="39">음식점</option>
          </select>
          <input id="search-keyword" class="form-control me-2" type="search" placeholder="검색어" aria-label="검색어" />
          <button id="btn-search" class="btn btn-outline-success" type="button">검색</button>
        </form>
        <!-- kakao map start -->
        <div id="map" class="mt-3" style="width: 100%; height: 400px"></div>
        <!-- kakao map end -->
        <div class="row">
          <table class="table table-striped" style="display: none">
            <thead>
              <tr>
                <th>대표이미지</th>
                <th>관광지명</th>
                <th>주소</th>
                <th>위도</th>
                <th>경도</th>
              </tr>
            </thead>
            <tbody id="trip-list"></tbody>
          </table>
        </div>
        <!-- 관광지 검색 end -->
      </div>
    </div>
    <!-- 중앙 content end -->



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"></script>
    <script src="./assets/js/main.js"></script>
    <script type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5cbe260f12f7558c41e541afc9525bf6&libraries=services,clusterer,drawing"></script>
    <script src="js/triplist.js"></script>
</body>

</html>