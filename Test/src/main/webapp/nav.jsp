<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp">Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
			<form class="d-flex">

				
 				
				<a class="login nav-link active" aria-current="page"
					href="triplist.jsp">관광지 정보 조회</a> 
					<a class="login nav-link active" aria-current="page" href="#"
					data-bs-toggle="modal" data-bs-target="#SignUpModal">회원가입</a>
				<a class="login nav-link active" aria-current="page" href="#"
					data-bs-toggle="modal" data-bs-target="#loginModal">로그인</a>


				<a class="login nav-link active displayNone" aria-current="page"
					href="plan.jsp">여행 계획 세우기</a> 
				<a class="login nav-link active displayNone" aria-current="page"
					href="myPage.jsp">마이페이지</a> 
				<a class="login nav-link active displayNone" aria-current="page"
					type="submit" action="./user/logout" method="POST" href="./user/logout">로그아웃</a>
			</form>
		</div>
	</div>
</nav>


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
            <form id="loginForm" action="./user/login" method="POST">
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
                type="submit"
                class="btn btn-primary">
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
                <form class="validation-form" action="./user/register" method="POST" novalidate>
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
    
    <%
		String login = (String)session.getAttribute("login");
		if(login == "true"){
			System.out.println("로그인 완료");
	%>
	<script>
	 	document.querySelectorAll(".login").forEach((el,i)=>{
	        if(0 < i && i < 3) el.classList.add("displayNone");
	        else el.classList.remove("displayNone");
	    })
	</script>
	<%
		}
		else System.out.println("로그인 실패");
	%>