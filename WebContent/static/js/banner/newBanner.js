/*게시글 목록*/
showList();

function showList(){
	banners = JSON.parse(banners);
	/*files = JSON.parse(files);*/
	console.log(banners);
	const $wrapper = $(".swiper-wrapper");
	const $button = $(".bannerButtonWrapper");
	const $pagination = $(".swiper-pagination");
	let text = "";
	console.log("new Banner");
	
	banners.forEach(banner => {
	text += `				
				<div id="slide-${banner.bannerId}" class="swiper-slide">
					<div>
						<label style="min-height: 250px">
							<a>
								<img alt="" src="${contextPath}/static/img/banner/${banner.bannerSystemName}">
							</a>
						</label>
					</div>
				</div>`;
	});
	
	
	
	
	/*text += `	<div class="swiper-wrapper">`;
			
	banners.forEach((banner) => {
		text += `
					<div id="slide-${banner.bannerId}" class="swiper-slide"><label style="min-height: 250px"><a><img alt="" src="${banner.bannerSystemName}"></a></label></div>
				`});
				
	text += `	</div>
				<div>`;
	banners.forEach((banner) => {
		`<a type="button" class="is-page${banner.bannerId}"></a>`
	});
	
	text += `	</div>
				<div class="swiper-pagination">`;
				
	banners.forEach((banner) => {
		`<span class="swiper-pagination-bullet"></span>`
	});
	
	text += `<span class="swiper-notification"></span>`;
	
			/*<li>
		        <div>
		            <a href="javascript:location.href='${contextPath}/board/detailOk.board?boardId=${board.boardId}&page=${page}&sort=${sort}&type=${type}&keyword=${keyword}'">
		                <section class="content-container">
		                    <div class="profile">
		                        <div><img src="${contextPath}/static/images/profile.png" width="15px"></div>
		                        <h6 class="writer">${board.memberName}</h6>
		                    </div>
		                    <h4 class="title">${board.boardTitle}</h4>
		                    <h6 clss="board-info">
		                        <span class="read-count">조회 ${board.boardReadCount}</span>
		                        <span>·</span>
		                        <span class="date">`+ elapsedTime(board.boardRegisterDate) +`</span>
		                    </h6>
		                </section>
			`;
			if(files[board.boardId]){
				text += `<img src="${contextPath}/upload/${files[board.boardId].fileSystemName}" class="preview">`;
			}
			text += `
		            </a>
		        </div>
		    </li>
			`;
	});*/
	
	$wrapper.append(text);
	
	text = "";
	let i = 0;
	banners.forEach(banner => {
		text += `
				<a type="button" class="is-page${++i}"></a>
		`;
	});
	
	$button.append(text);
	
	text ="";
	
	banners.forEach(banner => {
		text += `
			<label class="swiper-pagination-bullet" style="cursor: pointer"><a></a></label>
		`;
	});
	
	$pagination.append(text);
}




