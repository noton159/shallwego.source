<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- 공지사항 -->
<div class="on rv-on notice">
	<!-- 공지사항 버튼 -->
	<ul class="qa-btn-wrap">
		<li class="on-bottom notice-btn">서비스 공지사항</li>
		<c:if test="${login.position == 1 }">
		<li class="notice-btn">공지사항 작성</li>
		</c:if>
	</ul>

	<!-- 나의 공지내역 -->
	<ul class="on notice-list notice-con-none notice-content-wrap">

		<!-- 리스트에 값이 있으면 -->
		<c:if test="${!empty noticeList }">

			<c:forEach var="notice" items="${noticeList }">
				<!-- delete가 0인 친구만 보이게 한다 -->
				<form method="POST" action="${cpath }/board/deleteNotice">
					<c:if test="${notice.deleted == 0 }">
						<input type="hidden" name="notice_idx" value="${notice.notice_idx }" />
						<!-- 내 게시글이 있을경우 -->
						<li class="notice-on notice-write">
							<div class="a notice-content">
								<h3 class="notice-title-main">${notice.notice_title }</h3>
								<p class="gray-f">${notice.date }</p>
							</div>
						</li>

						<!-- 내 공지사항 상세보기 -->
						<div class="notice-list-sub notice-content-wrap">
							<div class="notice-content">
								<div class="notice-title">
									<!-- 내 공지 제목 -->
									<h2>${notice.notice_title }</h2>
								</div>
								<div class="notice-date">
									<p class="gray-f">
										<span>작성일&nbsp;&nbsp;|</span> <span>${notice.notice_date }</span>
										<!-- 작성된 날짜 -->
									</p>
								</div>
								<div class="notice-content">
									<p>${notice.notice_content }</p>
									<!-- 작성내용 -->
								</div>
								<div class="board-left-btn">
	               					<input type="button" id="notice-before_btn" class="btn02 pink" value="이전" onclick="history.go(-1)" />	
	               					<c:if test="${login.position == 1 }">
									<input type="submit" id="notice-del-btn" class="btn02 pink-b" value="삭제" />
									</c:if>
								</div>
							</div>
						</div>

					</c:if>
				</form>
			</c:forEach>
		</c:if>

		<!-- 리스트에 값이 없으면 -->
		<c:if test="${empty noticeList }">
			<!-- 내 게시글이 null일 경우 -->
			<li class="notice-write-null">
				<div class="notice-content">
					<h1>등록된 공지사항이 없습니다.</h1>
					<p class="gray-f">떠나볼까는 현재 공지할 사항이 없습니다.</p>
				</div>
			</li>
		</c:if>
	</ul>

	<c:if test="${login.position == 1 }">
	<!-- 새 공지사항 작성 ***************************** -->
	<!-- dto : notice_idx, notice_title, notice_writer, notice_content, notice_date -->
	<div class="notice-con-none notice-content-wrap">
		<ul class="notice-content notice-new">
			<li>
				<h3 class="gray-f">떠나볼까? 유저들을 위한 공지사항을 작성해주세요.</h3>
			</li>
			<form method="POST" id="new-notice-write"
				action="${cpath }/board/writeNotice">
				<input type="hidden" name="admin_idx" id="admin_idx"
					value="${login.user_idx }">

				<li>
					<h3 class="title">공지제목</h3>
					<div class="content">
						<input class="text01 gray-f" id="notice_title" name="notice_title"
							type="text" placeholder="필수항목 입니다." />
					</div>

				</li>
				<li>
					<h3 class="title">공지내용</h3>
					<div class="content">
						<input class="text01 gray-f questions" id="notice_content"
							name="notice_content" type="text" placeholder="필수항목 입니다." />
					</div>

				</li>
				<li><input type="submit" id="notice_btn" class="btn02 pink"
					value="작성완료" /></li>
			</form>
		</ul>
	</div>
	</c:if>
</div>


<script>
		//(공지사항)작성완료 클릭 
		$("#new-notice-write").submit(function(event) { // 작성하기 버튼을 클릭하면 이벤트 작동 
			event.preventDefault(); // form태그가 돌아가지 않게 이벤트 막는다. 
			console.log('event')
			
			const url = cpath + '/board/writeNotice';
			const opt = {
				method : 'POST',
				body : JSON.stringify({
					/* 
					admin_idx
					notice_title
					notice_content
				 */
				admin_idx : $('#admin_idx').val(), // admin 
				notice_title : $('#notice_title').val(), // 공지 제목  
				notice_content : $('#notice_content').val(), // 공지 내용 
				}),
				headers: {
		            'Content-Type': 'application/json',
		        },
			};
			fetch(url, opt)
			.then(resp => resp.text())
			.then(text => {
				console.log('노티스 뿌에에에!!!!!');
				alert(text);
				if (text == '게시글이 등록되었습니다.') {
					location.replace(cpath + '/board/notice');
				} else {
					console.log('김하윤 ㅋㅋㅋㅋ');
				}
			})
		});
	</script>