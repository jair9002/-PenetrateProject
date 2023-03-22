<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 정보 관리</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
    <script src="main.js"></script>
    <link rel="stylesheet" href="main.css">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
    <script src="scripts.js" defer></script>
    
    <style>
        #Whole-background{
        height: 100vh;
        width: 100vw;
        background-image: url('img/background1.jpg');
        background-repeat : no-repeat;
        background-size : cover;
      }
    </style>

</head>

<body>
    <!--메뉴바 시작-->
    <%@ include file="nav.jsp" %>
    <!--메뉴바 끝-->

    <div id="Whole-background" style="padding: 10px;">
        <div class="container mt-5">
            <h1>회원 정보 관리</h1>
            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#viewProfileModal"
                    id="btn1">회원 정보
                    조회</button>
                <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#editProfileModal"
                    id="btn2">회원
                    정보 수정</button>
                <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                    data-bs-target="#deleteProfileModal">회원
                    탈퇴</button>
            </div>
        </div>

        <script>
            window.onload = function () {
                document.querySelector("#btn1").onclick = function () {
                    document.querySelector("#card1").classList.remove("displayNone");
                    document.querySelector("#card2").classList.add("displayNone");

                }
                document.querySelector("#btn2").onclick = function () {
                    document.querySelector("#card1").classList.add("displayNone");
                    document.querySelector("#card2").classList.remove("displayNone");

                }
            }
        </script>

        <div class="card mt-3" id="card1" style="width: 60%; left: 20%;">
            <div class="card-body">
                <div id="profileInfo">
                    <div class="container">
                        <form method="post" action="my_change_ok.php">
                            <table class="table table-bordered">
                                <tr>
                                    <th>ID</th>
                                    <td><span id="id">ssafy1234</span></td>
                                </tr>
                                <tr>
                                    <th>PW</th>
                                    <td><input type="password" name="pw" id="pw" disabled placeholder="필수 입력 사항입니다."
                                            value="<?=$res['login_pw']?>" class="form-control"></td>
                                </tr>
                                <tr>
                                    <th>이름</th>
                                    <td><input type="text" name="name" id="name" disabled placeholder="필수 입력 사항입니다."
                                            value="김싸피" class="form-control"></td>
                                </tr>
                                <tr>
                                    <th>연락처</th>
                                    <td><input type="text" name="phone" id="phone" disabled value="010-1234-1234"
                                            class="form-control"></td>
                                </tr>
                                <tr>
                                    <th>Email</th>
                                    <td><input type="text" name="email" id="email" disabled value="ssafy1234@ssafy.com"
                                            class="form-control"></td>
                                </tr>
                                <tr>
                                    <th>주소</th>
                                    <td><input type="text" name="intro" id="intro" disabled value="싸피광역시 사피군 싸비로 446"
                                            class="form-control"></td>
                                </tr>
                            </table>
                            <!-- <input disabled id="submit" type="submit" value="수정" class="btn btn-primary"> -->
                        </form>
                    </div>

                </div>
            </div>
        </div>


        <div class="card mt-3 displayNone" id="card2" style="width: 70%; left: 15%;">
            <div class="card-body">
                <form id="editProfileForm">
                    <!-- 아이디는 변경할 수 없도록 readonly 속성 추가 -->
                    <div class="mb-3">
                        <label for="editUsername" class="form-label">아이디</label>
                        <input type="text" class="form-control" id="edit
                    Username" name="editUsername" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="editEmail" class="form-label">이메일</label>
                        <input type="email" class="form-control" id="editEmail" name="editEmail" required>
                    </div>
                    <div class="mb-3">
                        <label for="editAddress" class="form-label">주소</label>
                        <input type="text" class="form-control" id="editAddress" name="editAddress" required>
                    </div>
                    <div class="mb-3">
                        <label for="editPassword" class="form-label">새 비밀번호 (선택사항)</label>
                        <input type="password" class="form-control" id="editPassword" name="editPassword">
                    </div>
                    <button type="submit" class="btn btn-warning">수정하기</button>

                </form>
            </div>
        </div>



        <!-- 회원 탈퇴 팝업 -->
        <div class="modal fade" id="deleteProfileModal" tabindex="-1" aria-labelledby="deleteProfileModalLabel"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="deleteProfileModalLabel">회원 탈퇴</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>정말로 탈퇴하시겠습니까? 이 작업은 되돌릴 수 없습니다.</p>
                        <button type="button" class="btn btn-danger" id="deleteProfileBtn"
                            onclick="dropID()">탈퇴하기</button>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script>
        document.getElementById('deleteProfileBtn').onclick = function () {
            alert('탈퇴 되었습니다 향후 1년간 해당 계정으로 가입하실수 없습니다.');
            location.href = 'http://127.0.0.1:5500/index.jsp';

        };
    </script>

</body>

</html>