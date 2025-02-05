
let question = document.getElementsByClassName('theater_area');

function questionOpen(question,answer){
    if(answer.style.maxHeight){
        answer.style.maxHeight = null;
        question.classList.remove('on');
    } else{
        answer.style.maxHeight = answer.scrollHeight +"px";
        question.classList.add('on');
    }
}

function questionClose(index) {
    for (let j = 0; j < question.length; j++) {
        if (index !== j) {
            let answer = question[j].nextElementSibling;
            answer.style.maxHeight = null;
            question[j].classList.remove('on');
        }
    }
}

for(let i = 0; i < question.length; i++){
    question[i].addEventListener('click',function(){
        let answer = this.nextElementSibling;

        questionClose(i);
        questionOpen(question[i],answer);
    });
}