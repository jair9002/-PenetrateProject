<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />

    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
      integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
      integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
      crossorigin="anonymous"
    ></script>
    <script src="js/main.js"></script>
    <link rel="stylesheet" href="main.css" />

    <title>Document</title>

  
  </head>

  <body>
    <!--메뉴바 시작-->
    <%@ include file="nav.jsp" %>
    <!--메뉴바 끝-->

    

    <div class="container-fluid" style="padding: 0px">
      <div class="row">
        <div class="col">
          <div class="row" style="position: absolute; margin-top: 20%; margin-left: 20%">
            <div class="row mt-3" style="color: aliceblue; font-size: 4vw">
              나를 알아가는 여행
            </div>
            <div class="row" style="color: aliceblue; font-size: 1.7vw">
              관광지 정보 조회와 여행 계획을 해보세요
            </div>
          </div>
          <img src="img/mainImg.png" alt="" style="width: 100%" />
        </div>
      </div>
    </div>
    <div class="container-fluid" style="padding: 0px">
      <div class="row">
        <div class="col">
          <div class="row" style="position: absolute; margin-top: 20%; margin-left: 15%">
            <div class="row" style="color: blakc; font-size: 3vw">최신 여행 정보를</div>
            <div class="row" style="color: blakc; font-size: 3vw">모두 모았어요</div>
          </div>
          <img src="img/mainImg2.png" alt="" style="width: 100%" />
        </div>
      </div>
    </div>
  </body>
</html>
