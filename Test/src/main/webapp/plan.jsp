<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editable Content</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
    <script src="main.js"></script>
    <link rel="stylesheet" href="main.css" />

    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height: 100vh;
            margin: 0;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
        }

        .editable {
            border: 1px solid #ccc;
            padding: 10px;
            margin: 5px;
            width: 50%;
            min-height: 20px;
            text-align: center;
            resize: both;
            overflow: auto;
            box-sizing: border-box;
        }

        #add-btn {
            margin-top: 10px;
            padding: 5px 10px;
            font-size: 28px;
            background-color: #2196F3;
            color: white;
            border: none;
            cursor: pointer;
            position: fixed;
            /* 위치를 고정합니다. */
            bottom: 50px;
            /* 하단에서 10px 떨어진 곳에 배치합니다. */
            right: 50px;
            border-radius: 30%;
        }

        button:hover {
            background-color: #0c7cd5;
        }

        .editable:empty:not(:focus):before {
            content: attr(data-placeholder);
            color: #ccc;
        }


    </style>
</head>

<body>

      <!--메뉴바 시작-->
    <%@ include file="nav.jsp" %>
    <!--메뉴바 끝-->

    <div class="container" id="content-container">
    </div>
    <button id="add-btn">
        <a class="login nav-link active" aria-current="page" href="#" data-bs-toggle="modal"
            data-bs-target="#planModal">+</a></button>

    <div class="modal fade" id="planModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="SignUpModalLabel">여행계획</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <div class="container">
                    <div class="input-form-backgroud row">
                        <div class="input-form col-md-12 mx-auto">
                            <form class="validation-form" novalidate>

                                <div class="row">
                                    <div class="col-md-8 mb-3">
                                        <label for="root">방문 장소 분류</label>
                                        <select class="custom-select d-block w-100" id="root" style="width: 100%">
                                            <option value=""></option>
                                            <option>공항</option>
                                            <option>숙소</option>
                                            <option>관광지</option>
                                            <option>음식점</option>
                                        </select>
                                        <div class="invalid-feedback">방문 카테고리를 입력해주세요</div>
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="address">방문 장소를 입력해 주세요</label>
                                    <input type="text" class="form-control" id="placename" required />
                                    <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
                                </div>

                                <div class="mb-3">
                                    <label for="text">예상 금액을 입력해 주세요.</label>
                                    <input type="text" class="form-control" id="expectPrice" />
                                    <div class="invalid-feedback">예상 금액을 입력해 주세요.</div>
                                </div>

                                <div class="mb-3">
                                    <label for="address">주소</label>
                                    <input type="text" class="form-control" id="plan-address" required />
                                    <div class="invalid-feedback">주소를 입력해주세요.</div>
                                </div>

                                <div class="mb-4">
                                    <br />
                                    <button id="completePlanInputBtn" class="btn btn-primary btn-lg btn-block" type="button" style="padding: 5px">
                                        입력 완료
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script>
        // const addButton = document.getElementById('add-btn');
        // const contentContainer = document.getElementById('content-container');

        // addButton.addEventListener('click', () => {
        //     const editableDiv = document.createElement('div');
        //     editableDiv.setAttribute('contenteditable', 'true');
        //     editableDiv.classList.add('editable');
        //     contentContainer.appendChild(editableDiv);
        // });
            //editableDiv.innerHTML = `<div contenteditable='true' class='editable'></div>`;
    </script>

    <script src="js/plan.js">

       
    </script>


</body>

</html>