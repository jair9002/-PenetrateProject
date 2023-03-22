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
  <link rel="stylesheet" href="main.css">
</head>

<body>
  <!--메뉴바 시작-->
  <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="index.jsp">Home</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">

        </ul>
        <form class="d-flex">
          <a class="login nav-link active" aria-current="page" href="triplistlogout.jsp" >관광지 정보 조회</a>
          <a
          class="login nav-link active"
          aria-current="page"
          href="#"
          data-bs-toggle="modal"
          data-bs-target="#SignUpModal"
          >회원가입</a
        >
        <a
          class="login nav-link active"
          aria-current="page"
          href="#"
          data-bs-toggle="modal"
          data-bs-target="#loginModal">로그인</a
        >

          
          <a class="login nav-link active displayNone" aria-current="page" href="triplistlogin.jsp" >관광지 정보 조회</a>
          <a class="login nav-link active displayNone" aria-current="page" href="myPage.jsp">마이페이지</a>
          <a class="login nav-link active displayNone" aria-current="page" href="#" onclick="logout()">로그아웃</a>

        </form>
      </div>
    </div>
  </nav>
  <!--메뉴바 끝-->
   <!--로그인 모달 시작-->
   <div
   class="modal fade"
   id="loginModal"
   tabindex="-1"
   aria-labelledby="loginModalLabel"
   aria-hidden="true"
 >
   <div class="modal-dialog">
     <div class="modal-content">
       <div class="modal-header">
         <h5 class="modal-title" id="loginModalLabel">로그인</h5>
         <button
           type="button"
           class="btn-close"
           data-bs-dismiss="modal"
           aria-label="Close"
         ></button>
       </div>
       <div class="modal-body">
         <form id="loginForm">
           <div class="mb-3">
             <label for="username" class="form-label">아이디</label>
             <input type="text" class="form-control" id="loginID" name="username" required />
           </div>
           <div class="mb-3">
             <label for="password" class="form-label">비밀번호</label>
             <input
               type="password"
               class="form-control"
               id="loginPassword"
               name="password"
               required
             />
           </div>
           <button
             type="button"
             class="btn btn-primary"
             onclick="location.href = 'http://127.0.0.1:5500/triplistlogin.jsp'"
           >
             로그인
           </button>
         </form>
       </div>
     </div>
   </div>
 </div>
 <!--로그인 모달 끝-->

 <!--회원가입 모달 시작-->
 <div
   class="modal fade"
   id="SignUpModal"
   tabindex="-1"
   aria-labelledby="loginModalLabel"
   aria-hidden="true"
 >
   <div class="modal-dialog">
     <div class="modal-content">
       <div class="modal-header">
         <h5 class="modal-title" id="SignUpModalLabel">회원가입</h5>
         <button
           type="button"
           class="btn-close"
           data-bs-dismiss="modal"
           aria-label="Close"
         ></button>
       </div>

       <div class="container">
         <div class="input-form-backgroud row">
           <div class="input-form col-md-12 mx-auto">
             <form class="validation-form" novalidate>
               <div class="row">
                 <div class="col-md-6 mb-3">
                   <label for="name">이름</label>
                   <input
                     type="text"
                     class="form-control"
                     id="name"
                     placeholder=""
                     value=""
                     required
                   />
                   <div class="invalid-feedback">이름을 입력해주세요.</div>
                 </div>
                 <div class="col-md-6 mb-3">
                   <label for="nickname">ID</label>
                   <input
                     type="text"
                     class="form-control"
                     id="nickname"
                     placeholder=""
                     value=""
                     required
                   />
                   <div class="invalid-feedback">별명을 입력해주세요.</div>
                 </div>
               </div>

               <div class="mb-3">
                 <label for="password">비밀번호</label>
                 <input type="password" class="form-control" id="password" required />
                 <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
               </div>

               <div class="mb-3">
                 <label for="email">이메일</label>
                 <input
                   type="email"
                   class="form-control"
                   id="email"
                   placeholder="you@example.com"
                   required
                 />
                 <div class="invalid-feedback">이메일을 입력해주세요.</div>
               </div>

               <div class="mb-3">
                 <label for="address">주소</label>
                 <input
                   type="text"
                   class="form-control"
                   id="address"
                   placeholder="서울특별시 강남구"
                   required
                 />
                 <div class="invalid-feedback">주소를 입력해주세요.</div>
               </div>

               <div class="mb-3">
                 <label for="address2"
                   >상세주소<span class="text-muted"> (필수 아님)</span></label
                 >
                 <input
                   type="text"
                   class="form-control"
                   id="address2"
                   placeholder="상세주소를 입력해주세요."
                 />
               </div>

               <div class="row">
                 <div class="col-md-8 mb-3">
                   <label for="root">가입 경로</label>
                   <select class="custom-select d-block w-100" id="root" style="width: 100%">
                     <option value=""></option>
                     <option>검색</option>
                     <option>카페</option>
                     <option>지인</option>
                     <option>광고</option>
                   </select>
                   <div class="invalid-feedback">가입 경로를 선택해주세요.</div>
                 </div>
               </div>
               <hr class="mb-4" />
               <div class="custom-control custom-checkbox">
                 <input type="checkbox" class="custom-control-input" id="aggrement" required />
                 <label class="custom-control-label" for="aggrement"
                   >개인정보 수집 및 이용에 동의합니다.</label
                 >
               </div>

               <div class="mb-4">
                 <br />
                 <button
                   class="btn btn-primary btn-lg btn-block"
                   type="submit"
                   style="padding: 5px"
                 >
                   가입 완료
                 </button>
               </div>
             </form>
           </div>
         </div>
       </div>
     </div>
   </div>
 </div>
 <!--회원가입 모달 끝-->


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
  <script src="triplist.js"></script>
</body>

</html>