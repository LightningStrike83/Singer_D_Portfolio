import {questions} from './trivia-questions.js'

export function trivia() {
    let question1 = document.querySelector ("#question_1");
    let question2 = document.querySelector ("#question_2");
    let question3 = document.querySelector ("#question_3");
    let question4 = document.querySelector ("#question_4");
    let question5 = document.querySelector ("#question_5");
    let question6 = document.querySelector ("#question_6");
    let question7 = document.querySelector ("#question_7");
    let question8 = document.querySelector ("#question_8");
    let question9 = document.querySelector ("#question_9");
    let question10 = document.querySelector ("#question_10");
    let questionsBox = document.querySelectorAll(".button")

    function loadQuestion() {
        resetElementsToOriginalState();
        let question = this.dataset.member;

        document.querySelector('.question').textContent = questions [question].question
        document.querySelector('#answer_1').textContent = questions [question].answer1
        document.querySelector('#answer_2').textContent = questions [question].answer2
        document.querySelector('#answer_3').textContent = questions [question].answer3
        document.querySelector('#answer_4').textContent = questions [question].answer4
    }

    function loadAnswer1() {
        document.querySelector('#answer_1_box').classList.add("wrong");
        document.querySelector('#answer_2_box').classList.add("wrong");
        document.querySelector('#answer_3_box').classList.add("right");
        document.querySelector('#answer_4_box').classList.add("wrong");
        
        let rightAnswer = document.querySelectorAll (".right");
        let wrongAnswer = document.querySelectorAll (".wrong")

        function rightColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");

            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            let questionBox = document.querySelector("#question_1");
            questionBox.style.backgroundColor = "#76C723";

            removeListener()
            scorePoint()
        }
        
        function wrongColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");
        
            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            let questionBox = document.querySelector("#question_1");
            questionBox.style.backgroundColor = "#DC143C";

            removeListener()
        }

        function removeListener() {
            var rightListen = document.querySelectorAll(".right");
            rightListen.forEach(listen => listen.removeEventListener('click', rightColour));

            var wrongListen = document.querySelectorAll(".wrong");
            wrongListen.forEach(listen => listen.removeEventListener ('click', wrongColour));
        }

        function scorePoint() {
            let boardScore = document.querySelector("#scoreboard_score");
            let currentValue = parseInt(boardScore.textContent);
            let newValue = currentValue + 1;
            boardScore.textContent = newValue;
        }

        rightAnswer.forEach(change => change.addEventListener('click', rightColour));
        wrongAnswer.forEach(change => change.addEventListener ('click', wrongColour));
    }

    function loadAnswer2() {
        document.querySelector('#answer_1_box').classList.add("right");
        document.querySelector('#answer_2_box').classList.add("wrong");
        document.querySelector('#answer_3_box').classList.add("wrong");
        document.querySelector('#answer_4_box').classList.add("wrong");
        
        let rightAnswer = document.querySelectorAll (".right");
        let wrongAnswer = document.querySelectorAll (".wrong")

        function rightColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");

            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            let questionBox = document.querySelector("#question_2");
            questionBox.style.backgroundColor = "#76C723";

            removeListener()
            scorePoint()
        }
        
        function wrongColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");
        
            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            let questionBox = document.querySelector("#question_2");
            questionBox.style.backgroundColor = "#DC143C";

            removeListener()
        }

        function removeListener() {
            var rightListen = document.querySelectorAll(".right");
            rightListen.forEach(listen => listen.removeEventListener('click', rightColour));

            var wrongListen = document.querySelectorAll(".wrong");
            wrongListen.forEach(listen => listen.removeEventListener ('click', wrongColour));
        }

        function scorePoint() {
            let boardScore = document.querySelector("#scoreboard_score");
            let currentValue = parseInt(boardScore.textContent);
            let newValue = currentValue + 1;
            boardScore.textContent = newValue;
        }

        rightAnswer.forEach(change => change.addEventListener('click', rightColour));
        wrongAnswer.forEach(change => change.addEventListener ('click', wrongColour));
    }

    function loadAnswer3() {
        document.querySelector('#answer_1_box').classList.add("right");
        document.querySelector('#answer_2_box').classList.add("wrong");
        document.querySelector('#answer_3_box').classList.add("wrong");
        document.querySelector('#answer_4_box').classList.add("wrong");
        
        let rightAnswer = document.querySelectorAll (".right");
        let wrongAnswer = document.querySelectorAll (".wrong")

        function rightColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");

            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            var questionBox = document.querySelector("#question_3");
            questionBox.style.backgroundColor = "#76C723";

            removeListener()
            scorePoint()
        }
        
        function wrongColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");
        
            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            var questionBox = document.querySelector("#question_3");
            questionBox.style.backgroundColor = "#DC143C";

            removeListener()
        }

        function removeListener() {
            var rightListen = document.querySelectorAll(".right");
            rightListen.forEach(listen => listen.removeEventListener('click', rightColour));

            var wrongListen = document.querySelectorAll(".wrong");
            wrongListen.forEach(listen => listen.removeEventListener ('click', wrongColour));
        }

        function scorePoint() {
            let boardScore = document.querySelector("#scoreboard_score");
            let currentValue = parseInt(boardScore.textContent);
            let newValue = currentValue + 1;
            boardScore.textContent = newValue;
        }

        rightAnswer.forEach(change => change.addEventListener('click', rightColour));
        wrongAnswer.forEach(change => change.addEventListener ('click', wrongColour));
    }

    function loadAnswer4() {
        document.querySelector('#answer_1_box').classList.add("wrong");
        document.querySelector('#answer_2_box').classList.add("wrong");
        document.querySelector('#answer_3_box').classList.add("wrong");
        document.querySelector('#answer_4_box').classList.add("right");
        
        let rightAnswer = document.querySelectorAll (".right");
        let wrongAnswer = document.querySelectorAll (".wrong")

        function rightColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");

            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            var questionBox = document.querySelector("#question_4");
            questionBox.style.backgroundColor = "#76C723";

            removeListener()
            scorePoint()
        }
        
        function wrongColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");
        
            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            var questionBox = document.querySelector("#question_4");
            questionBox.style.backgroundColor = "#DC143C";

            removeListener()
        }

        function removeListener() {
            var rightListen = document.querySelectorAll(".right");
            rightListen.forEach(listen => listen.removeEventListener('click', rightColour));

            var wrongListen = document.querySelectorAll(".wrong");
            wrongListen.forEach(listen => listen.removeEventListener ('click', wrongColour));
        }

        function scorePoint() {
            let boardScore = document.querySelector("#scoreboard_score");
            let currentValue = parseInt(boardScore.textContent);
            let newValue = currentValue + 1;
            boardScore.textContent = newValue;
        }

        rightAnswer.forEach(change => change.addEventListener('click', rightColour));
        wrongAnswer.forEach(change => change.addEventListener ('click', wrongColour));
    }

    function loadAnswer5() {
        document.querySelector('#answer_1_box').classList.add("wrong");
        document.querySelector('#answer_2_box').classList.add("right");
        document.querySelector('#answer_3_box').classList.add("wrong");
        document.querySelector('#answer_4_box').classList.add("wrong");
        
        let rightAnswer = document.querySelectorAll (".right");
        let wrongAnswer = document.querySelectorAll (".wrong")

        function rightColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");

            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            var questionBox = document.querySelector("#question_5");
            questionBox.style.backgroundColor = "#76C723";

            removeListener()
            scorePoint()
        }
        
        function wrongColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");
        
            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            var questionBox = document.querySelector("#question_5");
            questionBox.style.backgroundColor = "#DC143C";

            removeListener()
        }

        function removeListener() {
            var rightListen = document.querySelectorAll(".right");
            rightListen.forEach(listen => listen.removeEventListener('click', rightColour));

            var wrongListen = document.querySelectorAll(".wrong");
            wrongListen.forEach(listen => listen.removeEventListener ('click', wrongColour));
        }

        function scorePoint() {
            let boardScore = document.querySelector("#scoreboard_score");
            let currentValue = parseInt(boardScore.textContent);
            let newValue = currentValue + 1;
            boardScore.textContent = newValue;
        }

        rightAnswer.forEach(change => change.addEventListener('click', rightColour));
        wrongAnswer.forEach(change => change.addEventListener ('click', wrongColour));
    }

    function loadAnswer6() {
        document.querySelector('#answer_1_box').classList.add("wrong");
        document.querySelector('#answer_2_box').classList.add("wrong");
        document.querySelector('#answer_3_box').classList.add("right");
        document.querySelector('#answer_4_box').classList.add("wrong");
        
        let rightAnswer = document.querySelectorAll (".right");
        let wrongAnswer = document.querySelectorAll (".wrong")

        function rightColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");

            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            var questionBox = document.querySelector("#question_6");
            questionBox.style.backgroundColor = "#76C723";

            removeListener()
            scorePoint()
        }
        
        function wrongColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");
        
            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            var questionBox = document.querySelector("#question_6");
            questionBox.style.backgroundColor = "#DC143C";

            removeListener()
        }

        function removeListener() {
            var rightListen = document.querySelectorAll(".right");
            rightListen.forEach(listen => listen.removeEventListener('click', rightColour));

            var wrongListen = document.querySelectorAll(".wrong");
            wrongListen.forEach(listen => listen.removeEventListener ('click', wrongColour));
        }

        function scorePoint() {
            let boardScore = document.querySelector("#scoreboard_score");
            let currentValue = parseInt(boardScore.textContent);
            let newValue = currentValue + 1;
            boardScore.textContent = newValue;
        }

        rightAnswer.forEach(change => change.addEventListener('click', rightColour));
        wrongAnswer.forEach(change => change.addEventListener ('click', wrongColour));
    }

    function loadAnswer7() {
        document.querySelector('#answer_1_box').classList.add("wrong");
        document.querySelector('#answer_2_box').classList.add("right");
        document.querySelector('#answer_3_box').classList.add("wrong");
        document.querySelector('#answer_4_box').classList.add("wrong");
        
        let rightAnswer = document.querySelectorAll (".right");
        let wrongAnswer = document.querySelectorAll (".wrong")

        function rightColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");

            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            var questionBox = document.querySelector("#question_7");
            questionBox.style.backgroundColor = "#76C723";

            removeListener()
            scorePoint()
        }
        
        function wrongColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");
        
            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            var questionBox = document.querySelector("#question_7");
            questionBox.style.backgroundColor = "#DC143C";

            removeListener()
        }

        function removeListener() {
            var rightListen = document.querySelectorAll(".right");
            rightListen.forEach(listen => listen.removeEventListener('click', rightColour));

            var wrongListen = document.querySelectorAll(".wrong");
            wrongListen.forEach(listen => listen.removeEventListener ('click', wrongColour));
        }

        function scorePoint() {
            let boardScore = document.querySelector("#scoreboard_score");
            let currentValue = parseInt(boardScore.textContent);
            let newValue = currentValue + 1;
            boardScore.textContent = newValue;
        }

        rightAnswer.forEach(change => change.addEventListener('click', rightColour));
        wrongAnswer.forEach(change => change.addEventListener ('click', wrongColour));
    }

    function loadAnswer8() {
        document.querySelector('#answer_1_box').classList.add("wrong");
        document.querySelector('#answer_2_box').classList.add("wrong");
        document.querySelector('#answer_3_box').classList.add("right");
        document.querySelector('#answer_4_box').classList.add("wrong");
        
        let rightAnswer = document.querySelectorAll (".right");
        let wrongAnswer = document.querySelectorAll (".wrong")

        function rightColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");

            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            var questionBox = document.querySelector("#question_8");
            questionBox.style.backgroundColor = "#76C723";

            removeListener()
            scorePoint()
        }
        
        function wrongColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");
        
            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            var questionBox = document.querySelector("#question_8");
            questionBox.style.backgroundColor = "#DC143C";

            removeListener()
        }

        function removeListener() {
            var rightListen = document.querySelectorAll(".right");
            rightListen.forEach(listen => listen.removeEventListener('click', rightColour));

            var wrongListen = document.querySelectorAll(".wrong");
            wrongListen.forEach(listen => listen.removeEventListener ('click', wrongColour));
        }

        function scorePoint() {
            let boardScore = document.querySelector("#scoreboard_score");
            let currentValue = parseInt(boardScore.textContent);
            let newValue = currentValue + 1;
            boardScore.textContent = newValue;
        }

        rightAnswer.forEach(change => change.addEventListener('click', rightColour));
        wrongAnswer.forEach(change => change.addEventListener ('click', wrongColour));
    }

    function loadAnswer9() {
        document.querySelector('#answer_1_box').classList.add("wrong");
        document.querySelector('#answer_2_box').classList.add("wrong");
        document.querySelector('#answer_3_box').classList.add("right");
        document.querySelector('#answer_4_box').classList.add("wrong");
        
        let rightAnswer = document.querySelectorAll (".right");
        let wrongAnswer = document.querySelectorAll (".wrong")

        function rightColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");

            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            var questionBox = document.querySelector("#question_9");
            questionBox.style.backgroundColor = "#76C723";

            removeListener()
            scorePoint()
        }
        
        function wrongColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");
        
            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            var questionBox = document.querySelector("#question_9");
            questionBox.style.backgroundColor = "#DC143C";

            removeListener()
        }

        function removeListener() {
            var rightListen = document.querySelectorAll(".right");
            rightListen.forEach(listen => listen.removeEventListener('click', rightColour));

            var wrongListen = document.querySelectorAll(".wrong");
            wrongListen.forEach(listen => listen.removeEventListener ('click', wrongColour));
        }

        function scorePoint() {
            let boardScore = document.querySelector("#scoreboard_score");
            let currentValue = parseInt(boardScore.textContent);
            let newValue = currentValue + 1;
            boardScore.textContent = newValue;
        }

        rightAnswer.forEach(change => change.addEventListener('click', rightColour));
        wrongAnswer.forEach(change => change.addEventListener ('click', wrongColour));
    }

    function loadAnswer10() {
        document.querySelector('#answer_1_box').classList.add("wrong");
        document.querySelector('#answer_2_box').classList.add("right");
        document.querySelector('#answer_3_box').classList.add("wrong");
        document.querySelector('#answer_4_box').classList.add("wrong");
        
        let rightAnswer = document.querySelectorAll (".right");
        let wrongAnswer = document.querySelectorAll (".wrong")

        function rightColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");

            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            var questionBox = document.querySelector("#question_10");
            questionBox.style.backgroundColor = "#76C723";

            removeListener();
            scorePoint();
        }
        
        function wrongColour() {
            var rightAnswer = document.querySelectorAll(".right");
            rightAnswer.forEach(change => change.style.backgroundColor = "#76C723");
        
            var wrongAnswer = document.querySelectorAll(".wrong");
            wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

            var questionBox = document.querySelector("#question_10");
            questionBox.style.backgroundColor = "#DC143C";

            removeListener()
        }

        function removeListener() {
            var rightListen = document.querySelectorAll(".right");
            rightListen.forEach(listen => listen.removeEventListener('click', rightColour));

            var wrongListen = document.querySelectorAll(".wrong");
            wrongListen.forEach(listen => listen.removeEventListener ('click', wrongColour));
        }

        function scorePoint() {
            let boardScore = document.querySelector("#scoreboard_score");
            let currentValue = parseInt(boardScore.textContent);
            let newValue = currentValue + 1;
            boardScore.textContent = newValue;
        }

        rightAnswer.forEach(change => change.addEventListener('click', rightColour));
        wrongAnswer.forEach(change => change.addEventListener ('click', wrongColour));
    }

    function resetElementsToOriginalState() {
        var wrongAnswers = document.querySelectorAll(".wrong");
        wrongAnswers.forEach(answer => {
            answer.classList.remove("wrong");
            answer.style.backgroundColor = "";
        });

        var rightAnswers = document.querySelectorAll(".right");
        rightAnswers.forEach(answer => {
            answer.classList.remove("right");
            answer.style.backgroundColor = "";
        });

    }

    questionsBox.forEach(questionB => questionB.addEventListener('click', loadQuestion))

    question1.addEventListener('click', loadAnswer1);
    question2.addEventListener('click', loadAnswer2);
    question3.addEventListener('click', loadAnswer3);
    question4.addEventListener('click', loadAnswer4);
    question5.addEventListener('click', loadAnswer5);
    question6.addEventListener('click', loadAnswer6);
    question7.addEventListener('click', loadAnswer7);
    question8.addEventListener('click', loadAnswer8);
    question9.addEventListener('click', loadAnswer9);
    question10.addEventListener('click', loadAnswer10);
}

    

//AI Index:
//*Note* These prompts were done and made over the summer before the AI rule came into place. I'm referencing from the chatlogs what I believe I used and referenced

//Prompt 1: It's this part right here: rightAnswer.addEventListener('click', rightColour);
// The console says:
// "Uncaught TypeError: Cannot read properties of null (reading 'addEventListener')
//     at main.js:56:13"
// But I don't understand why

// Answer 1: The element with class "right" does not exist in your HTML. Double-check that you have an element with the class "right" in your HTML code.

// Prompt 1 Cont.: Okay so from what I understand: If the class of right doesn't exist yet, the code will break?

// Answer 1 Cont.: Yes, that's correct. If the class "right" does not exist in the HTML when the JavaScript code runs, the line document.querySelector(".right") will return null, and any attempt to access properties or methods of null, such as addEventListener, will result in the error you encountered.

//--------------------------------------------------------------------------------------------------

//Prompt 2: Is this code correct? console.log('Welcome to the world of Pokemon!');

// let question1 = document.querySelector ("#question_1");
// let question2 = document.querySelector ("#question_2");
// let question3 = document.querySelector ("#question_3");
// let question4 = document.querySelector ("#question_4");
// let question5 = document.querySelector ("#question_5");
// let question6 = document.querySelector ("#question_6");
// let question7 = document.querySelector ("#question_7");
// let question8 = document.querySelector ("#question_8");
// let question9 = document.querySelector ("#question_9");
// let question10 = document.querySelector ("#question_10");
// let rightAnswer = document.querySelectorAll (".right");
// let wrongAnswer = document.querySelectorAll (".wrong")

// function loadQuestion() {
//     let question = this.dataset.member;

//     document.querySelector('.question').textContent = questions [question].question
//     document.querySelector('#answer_1').textContent = questions [question].answer1
//     document.querySelector('#answer_2').textContent = questions [question].answer2
//     document.querySelector('#answer_3').textContent = questions [question].answer3
//     document.querySelector('#answer_4').textContent = questions [question].answer4
// }

// function loadAnswer1() {
//     document.querySelector('#answer_1_box').classList.add("wrong");
//     document.querySelector('#answer_2_box').classList.add("right");
//     document.querySelector('#answer_3_box').classList.add("wrong");
//     document.querySelector('#answer_4_box').classList.add("wrong");
// }

// function rightColour() {
//     debugger
//     var rightColour = document.querySelector(".right");
//     rightColour.style.backgroundColor = "#50C878";
// }

// function wrongColour() {
//     var rightColour = document.querySelectorAll(".right");
//     rightColour.style.backgroundColor = "#50C878";

//     var wrongColour = document.querySelectorAll(".wrong");
//     wrongColour.style.backgroundColor = "#DC143C";
// }

// question1.addEventListener('click', loadQuestion);
// question2.addEventListener('click', loadQuestion);
// question3.addEventListener('click', loadQuestion);
// question4.addEventListener('click', loadQuestion);
// question5.addEventListener('click', loadQuestion);
// question6.addEventListener('click', loadQuestion);
// question7.addEventListener('click', loadQuestion);
// question8.addEventListener('click', loadQuestion);
// question9.addEventListener('click', loadQuestion);
// question10.addEventListener('click', loadQuestion);

// rightAnswer.forEach(change => change.addEventListener ('click', rightColour))
// wrongAnswer.forEach(change => change.addEventListener ('click', wrongColour))

// question1.addEventListener('click', loadAnswer1);

// Answer 2: console.log('Welcome to the world of Pokemon!');

// let question1 = document.querySelector("#question_1");
// let question2 = document.querySelector("#question_2");
// let question3 = document.querySelector("#question_3");
// let question4 = document.querySelector("#question_4");
// let question5 = document.querySelector("#question_5");
// let question6 = document.querySelector("#question_6");
// let question7 = document.querySelector("#question_7");
// let question8 = document.querySelector("#question_8");
// let question9 = document.querySelector("#question_9");
// let question10 = document.querySelector("#question_10");
// let rightAnswer = document.querySelectorAll(".right");
// let wrongAnswer = document.querySelectorAll(".wrong");

// function loadQuestion() {
//     let question = this.dataset.member;

//     document.querySelector('.question').textContent = questions[question].question;
//     document.querySelector('#answer_1').textContent = questions[question].answer1;
//     document.querySelector('#answer_2').textContent = questions[question].answer2;
//     document.querySelector('#answer_3').textContent = questions[question].answer3;
//     document.querySelector('#answer_4').textContent = questions[question].answer4;
// }

// function loadAnswer1() {
//     document.querySelector('#answer_1_box').classList.add("wrong");
//     document.querySelector('#answer_2_box').classList.add("right");
//     document.querySelector('#answer_3_box').classList.add("wrong");
//     document.querySelector('#answer_4_box').classList.add("wrong");
// }

// function rightColour() {
//     debugger;
//     rightAnswer.forEach(change => change.style.backgroundColor = "#50C878");
// }

// function wrongColour() {
//     rightAnswer.forEach(change => change.style.backgroundColor = "#50C878");
//     wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");
// }

// question1.addEventListener('click', loadQuestion);
// question2.addEventListener('click', loadQuestion);
// question3.addEventListener('click', loadQuestion);
// question4.addEventListener('click', loadQuestion);
// question5.addEventListener('click', loadQuestion);
// question6.addEventListener('click', loadQuestion);
// question7.addEventListener('click', loadQuestion);
// question8.addEventListener('click', loadQuestion);
// question9.addEventListener('click', loadQuestion);
// question10.addEventListener('click', loadQuestion);

// rightAnswer.forEach(change => change.addEventListener('click', rightColour));
// wrongAnswer.forEach(change => change.addEventListener('click', wrongColour));

// question1.addEventListener('click', loadAnswer1);

//--------------------------------------------------------------------------------------------------

// Prompt 3: Okay, how do I stop a function and return the elements it was targeting to their original states if i want to run a different function?

// Response 4: // Your existing code for adding classes "wrong" and "right" to the elements

// function rightColour() {
//   var rightAnswer = document.querySelectorAll(".right");
//   rightAnswer.forEach(change => change.style.backgroundColor = "#50C878");
// }

// function wrongColour() {
//   var rightAnswer = document.querySelectorAll(".right");
//   rightAnswer.forEach(change => change.style.backgroundColor = "#50C878");

//   var wrongAnswer = document.querySelectorAll(".wrong");
//   wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");
// }

// function resetElementsToOriginalState() {
//   // Remove the "wrong" and "right" classes from all the elements
//   var allAnswers = document.querySelectorAll("#answer_1_box, #answer_2_box, #answer_3_box, #answer_4_box");
//   allAnswers.forEach(answer => {
//     answer.classList.remove("wrong", "right");
//     answer.style.backgroundColor = ""; // Reset the background color to default (empty string)
//   });
// }

// function loadAnswer1() {
//   // Add the "wrong" and "right" classes to the elements
//   // Your existing code here

//   // If you want to reset the elements to their original states later
//   // you can call the resetElementsToOriginalState() function like this:
//   // resetElementsToOriginalState();
// }

// // Your existing code for adding event listeners


// Prompt 3 Cont.: It's not removing the classes :S

// Response 3 Cont.: Apologies for the confusion. You are right; I missed a crucial part in the code. The issue is with this line:

// answer.classList.remove("wrong", "right");
// The classList.remove() method can only remove one class at a time. To remove multiple classes, you need to call classList.remove() for each class separately. Here's the correct version of the resetElementsToOriginalState() function:

// function resetElementsToOriginalState() {
//     // Remove the "wrong" class from all the elements
//     var wrongAnswers = document.querySelectorAll(".wrong");
//     wrongAnswers.forEach(answer => {
//         answer.classList.remove("wrong");
//         answer.style.backgroundColor = "#333333"; // Reset the background color to default (empty string)
//     });

//     // Remove the "right" class from all the elements
//     var rightAnswers = document.querySelectorAll(".right");
//     rightAnswers.forEach(answer => {
//         answer.classList.remove("right");
//         answer.style.backgroundColor = "#333333"; // Reset the background color to default (empty string)
//     });
// }
// Now, the function first selects all elements with the class "wrong" and iterates over them, removing the "wrong" class and resetting the background color. Then, it selects all elements with the class "right" and does the same. This should correctly reset the elements to their original state.

//--------------------------------------------------------------------------------------------------

//Prompt 4: There is an issue

// When I run a function, for example, loadAnswer1
// It works fine

// When I run loadAnswer2 right after it, it will target an element in loadAnswer1 and change that. 

// Response 4: I see what the issue is. It seems like there might be some conflicts in the event listeners and how the classes are being added and removed. The problem is that the event listeners for rightColour and wrongColour functions are not being removed when you load a different answer.

// To fix this, you need to remove the event listeners from the elements before adding them again with the new answer. You can achieve this by using the removeEventListener method. Here's how you can modify your code to remove the event listeners before adding them again for each question:

// NOTE: THE CODE PROVIDED BY THE AI WAS NOT USED

// Prompt 4 Cont.: Let's take this another way
// Can I write a function that will remove eventlisteners when it's called upon?

// Response: Yes, you can write a function that removes event listeners. This can be useful in situations where you want to disable certain functionalities or prevent event handlers from executing after a specific condition is met. Here's an example of how you can create a function to remove event listeners:

// javascript
// Copy code
// function removeEventListeners() {
//     // Replace 'yourElement' with the actual element that has the event listeners attached
//     let yourElement = document.querySelector('#yourElementId');

//     // Clone the element to remove all event listeners
//     let newElement = yourElement.cloneNode(true);

//     // Replace the old element with the new element, effectively removing all event listeners
//     yourElement.parentNode.replaceChild(newElement, yourElement);
// }

// // Usage:
// // Call the removeEventListeners function when you want to remove the event listeners
// removeEventListeners();

// Prompt 4 Cont: Would this work? function loadAnswer10() {
//     document.querySelector('#answer_1_box').classList.add("wrong");
//     document.querySelector('#answer_2_box').classList.add("right");
//     document.querySelector('#answer_3_box').classList.add("wrong");
//     document.querySelector('#answer_4_box').classList.add("wrong");
    
//     let rightAnswer = document.querySelectorAll (".right");
//     let wrongAnswer = document.querySelectorAll (".wrong")

//     function rightColour() {
//         var rightAnswer = document.querySelectorAll(".right");
//         rightAnswer.forEach(change => change.style.backgroundColor = "#50C878");

//         var wrongAnswer = document.querySelectorAll(".wrong");
//         wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

//         var questionBox = document.querySelector("#question_10");
//         questionBox.style.backgroundColor = "#50C878";

//         removeListener()
//     }
    
//     function wrongColour() {
//         var rightAnswer = document.querySelectorAll(".right");
//         rightAnswer.forEach(change => change.style.backgroundColor = "#50C878");
    
//         var wrongAnswer = document.querySelectorAll(".wrong");
//         wrongAnswer.forEach(change => change.style.backgroundColor = "#DC143C");

//         var questionBox = document.querySelector("#question_10");
//         questionBox.style.backgroundColor = "#DC143C";

//         removeListener()
//     }

//     function removeListener() {
//         var rightListen = document.querySelectorAll(".right");
//         rightListen.forEach(listen => listen.removeEventListener('click', rightColour));

//         var wrongListen = document.querySelectorAll(".wrong");
//         wrongListen.forEach(listen => listen.removeEventListener ('click', wrongColour));
//     }

//     rightAnswer.forEach(change => change.addEventListener('click', rightColour));
//     wrongAnswer.forEach(change => change.addEventListener ('click', wrongColour));
// }

//--------------------------------------------------------------------------------------------------

// Response 4 Cont.: Yes, your code looks good! The addition of the removeListener() function is a proper approach to remove the event listeners once the correct answer has been selected.

// Prompt 5: Now comes a question
// What do I need to write if I want to add 1 to a value that's defined in HTML?

// Response 5: In your JavaScript code, you can access the element using document.getElementById() or document.querySelector() and then perform the addition.
// javascript
// Copy code
// // Suppose you want to add 1 to the value when a button is clicked.
// // First, get a reference to the HTML element.
// let valueElement = document.getElementById('valueDisplay');
// // Or use document.querySelector() if you prefer to select the element with a CSS selector.

// // Then, add an event listener to a button (or any other trigger) to perform the addition.
// let addButton = document.getElementById('addButton'); // Replace 'addButton' with the actual id of your button.

// addButton.addEventListener('click', function() {
//   // Get the current value as a number using parseInt() or parseFloat().
//   let currentValue = parseInt(valueElement.textContent); // Use parseInt for integers, parseFloat for floats.

//   // Perform the addition.
//   let newValue = currentValue + 1;

//   // Update the display with the new value.
//   valueElement.textContent = newValue;
// });
// Now, when the button with id 'addButton' is clicked, it will retrieve the current value from the HTML element, add 1 to it, and then update the display with the new value. Make sure to replace 'addButton' with the actual id of your button element.

// NOTE: THE CODE WAS BAD BUT THIS WAS THE CODE THAT WAS USED

// Prompt 5 Cont.: Couldn't I use querySelector instead of ID?

// Response 5 Cont.: Yes, you can use querySelector instead of getElementById to select the element with the "scoreboard_score" id. Here's the updated code using querySelector:

// html
// Copy code
// <section id="scoreboard" class="grid-con">
//     <h2 class="hidden">Score Board Area</h2>
//     <div id="scoreboard_text" class="col-start-4 col-end-5 m-col-start-10 m-col-end-13">
//         <p id="scoreboard_title">
//             Scoreboard:
//         </p>
//         <p id="scoreboard_score">
//             0
//         </p>
//     </div>
// </section>
// javascript
// Copy code
// let rightTally = document.querySelectorAll(".right");

// function scorePoint() {
//     let boardScore = document.querySelector("#scoreboard_score");
//     let currentValue = parseInt(boardScore.textContent);
//     let newValue = currentValue + 1;
//     boardScore.textContent = newValue;
// }

// rightTally.forEach(tally => tally.addEventListener('click', scorePoint));
// Using querySelector("#scoreboard_score") will select the element with the id "scoreboard_score" just like getElementById("scoreboard_score"). The querySelector method is more flexible and can be used to select elements using various CSS selectors, whereas getElementById is specifically used for selecting elements by their id.

// Both methods should work fine in this case. If you're still facing issues, please check for any errors in the console and ensure that the elements with the "right" class are clickable and correctly selected.