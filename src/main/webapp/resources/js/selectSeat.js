/**
 * 
 */
let selectedSeats = new Array();
let clicked = "";
let normalCnt = 0;
let teenCnt=0;
let oldCnt=0;
let allCnt=0;
let allMoney = 0;



document.addEventListener("DOMContentLoaded", function() {

	// 총 인원수 계산함수
    function updateAllCount() {
        
        allCnt = parseInt(normalCnt) + parseInt(teenCnt) + parseInt(oldCnt);
        console.log('총인원=' + allCnt);
        
        //인원 수 작성하기
		var numSclass = document.querySelector(".num span");
		numSclass.textContent = '인원 = ' + allCnt;
    }
    
    //총 금액 계산하기
    function updateAllMoney(){
    	allMoney = parseInt(normalCnt)*14000 + parseInt(teenCnt)*11000 + parseInt(oldCnt)*7000;
    	console.log('총금액=' + allMoney);
    	
    	var numdiv = document.querySelector(".info-money.col");
    	let moneySpan_nor = document.createElement("span");
    	let moneySpan_teen = document.createElement("span");
    	let moneySpan_old = document.createElement("span");
    	let moneySpan_all = document.createElement("span");
    	moneySpan_all.classList.add('allMoney');
    	
    	//작성될때마다 내용 초기화
    	numdiv.textContent = '';
    	
    	if(normalCnt != 0){
    		moneySpan_nor.textContent = '일반= 14,000원 X '+normalCnt;
    		numdiv.appendChild(moneySpan_nor);
    	}
    	
    	if(teenCnt != 0){
    		moneySpan_teen.textContent = '청소년= 11,000원 X '+teenCnt;
    		numdiv.appendChild(moneySpan_teen);
    	}
    	
    	if(oldCnt != 0){
    		moneySpan_old.textContent = '우대= 14,000원 X '+oldCnt;
    		numdiv.appendChild(moneySpan_old);
    	}
    	
    	moneySpan_all.textContent = '총금액= ' + allMoney;
    	numdiv.appendChild(moneySpan_all);
    	
    }
    
	//일반
    var firstButtonNor = document.querySelector('.select-seat-number button:first-child');
    firstButtonNor.classList.add('selected');
    
    var normalBtns = document.querySelectorAll('.select-seat-ul-normal button');
    normalBtns.forEach(function(button) {
        button.addEventListener('click', function() {
            // 초기화
            normalBtns.forEach(function(btn) {
                btn.classList.remove('selected');
            });

            //선택
            button.classList.add('selected');
            normalCnt = button.value;
            console.log('일반='+button.value);
            updateAllCount();
            updateAllMoney();
            
        });
    });

	//청소년
	var firstButtonTeen = document.querySelector('.select-seat-ul-teen button:first-child');
    firstButtonTeen.classList.add('selected');
    
    var teenBtns = document.querySelectorAll('.select-seat-ul-teen button');
    teenBtns.forEach(function(button) {
        button.addEventListener('click', function() {
            // 초기화
            teenBtns.forEach(function(btn) {
                btn.classList.remove('selected');
            });

            //선택
            button.classList.add('selected');
            teenCnt = button.value;
            console.log('청소년='+button.value);
            updateAllCount();
            updateAllMoney();
        });
    });
    
    //우대
    var firstButtonOld = document.querySelector('.select-seat-ul-old button:first-child');
    firstButtonOld.classList.add('selected');
    
    var oldBtns = document.querySelectorAll('.select-seat-ul-old button');
    oldBtns.forEach(function(button) {
        button.addEventListener('click', function() {
            // 초기화
            oldBtns.forEach(function(btn) {
                btn.classList.remove('selected');
            });

            //선택
            button.classList.add('selected');
            oldCnt = button.value;
            console.log('우대='+button.value);
            updateAllCount();
            updateAllMoney();
        });
    });
    
    //좌석이 선택되었을때 수행하는 구문.
	const seats = document.querySelectorAll('.seat-wrapper .seat-box input[name="seats"]');
	
	    seats.forEach(seat => {
	        seat.addEventListener('click', function() {
	            // 클릭된 좌석의 id 값
	            const seatId = seat.id;
	            const seatVal = seat.value;
	
	            // 좌석이 이미 선택되었는지 확인
	            const isSelected = seat.classList.contains('clicked');
	
	            if (isSelected) {
	                seat.classList.remove('clicked');
	                const index = selectedSeats.indexOf(seatVal);
	                //일치하는 요소가 없으면 -1 반환
	                if (index != -1) {
	                    selectedSeats.splice(index, 1);
	                }
	            } else {
		            if(selectedSeats.length+1 > allCnt){
		        		alert("인원수를 초과하였습니다.");
		        		return;
		        	}
		        	
	                seat.classList.add('clicked');
	                selectedSeats.push(seatVal);
	            }
	
	            //console에 출력
	            console.log("Selected Seats: ", selectedSeats);
	            
	             //jsp 하단 popup에 출력하는 코드
	            var seatNameDiv = document.querySelector(".seat-name span");
	            
	            // 초기화
        		seatNameDiv.textContent = "";
        		
	            selectedSeats.forEach(function(seat, index) {
		            if (index === 0) {
		                seatNameDiv.textContent = seat;
		            } else {
		                seatNameDiv.textContent += " | " + seat;
		            }
		        });    
				     
	        }); //seat.addEventListener 종료
	    }); // seats.forEach 종료
	    
	    
	    //예매초기화 버튼
	    var refreshButton = document.getElementById('refreshButton');
		refreshButton.addEventListener('click', function() {
		    // 페이지 새로고침
		    location.reload();
		});
		
		var refreshButton = document.getElementById('refreshButton');
		



}); // document 종료



