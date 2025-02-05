
 document.addEventListener("DOMContentLoaded",function(){

	
    const date = new Date();
    const lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0);
    const reserveDate = document.querySelector(".contens");
    
    const weekOfDay = ['일', '월', '화', '수', '목', '금', '토'];
    const year = date.getFullYear();  // year() 함수 호출을 수정
    const month = date.getMonth() + 1;  // month() 함수 호출을 수정
    
    for (let i = date.getDate(); i <= lastDay.getDate(); i++) {  // i < lastDay.getDate()에서 i <= lastDay.getDate()로 수정
        // 버튼 생성
        const button = document.createElement("button");
        // span 생성
        const spanWeekOfDay = document.createElement("span");
        const spanDay = document.createElement("span");
    
        // class 이름 넣기
       
        button.classList = "day-box";
        spanWeekOfDay.classList = "dayweek";
        spanDay.classList = "day";
    
        const dayOfWeek = weekOfDay[new Date(year, month - 1, i).getDay()];  // month는 0부터 시작하므로 -1
    
        //요일 넣기
        if (dayOfWeek === "토") {
            spanWeekOfDay.classList.add("saturday");
            spanDay.classList.add("saturday");
        } else if (dayOfWeek === "일") {
            spanWeekOfDay.classList.add("sunday");
            spanDay.classList.add("sunday");
        }
        
        
    
        // 요일 텍스트 설정
        spanWeekOfDay.textContent = dayOfWeek;
    
        // 날짜 텍스트 설정
        spanDay.textContent = i;
    
        // 요일과 날짜를 버튼에 추가
        button.append( spanDay, spanWeekOfDay);
        
    
        // 버튼을 reserveDate에 추가
        reserveDate.append(button);
    
        // dayClickEvent 함수 호출
        dayClickEvent(button);
    }
    
    

function dayClickEvent(button) {
    button.addEventListener("click", function() {
        const movieDateWrapperActive = document.querySelectorAll(".movie-date-wrapper-active");
        movieDateWrapperActive.forEach((list) => {
            list.classList.remove("movie-date-wrapper-active");
        })
        button.classList.add("movie-date-wrapper-active");
    })
}



// 지역 토글 온오프

const question = document.getElementsByClassName("question");

function questionOpen(question, answer) {
  if (answer.style.maxHeight) {
    answer.style.maxHeight = null;
    question.classList.remove("on");
  } else {
    answer.style.maxHeight = answer.scrollHeight + "px";
    question.classList.add("on");
  }
}

function questionClose(i, item) {
  for (let j = 0; j < question.length; j++) {
    if (i != j) {
      item[j].nextElementSibling.style.maxHeight = null;
      item[j].classList.remove("on");
    }
  }
}

for (let i = 0; i < question.length; i++) {
  question[i].addEventListener("click", function () {
      
    let answer = this.nextElementSibling;

    questionClose(i, question);
    questionOpen(question[i], answer);
  });
}


// 영화 클릭




});








 