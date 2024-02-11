function pressedbutton(userChoice){

    let userScore=Number(document.getElementById("userScore").innerText);
    let compScore=Number(document.getElementById("compScore").innerText);

    let display=document.getElementById("display");
    const choice=["rock","paper","scissor"];
    let randomNumber=Math.floor((Math.random()*3));
    let computerChoice=choice[randomNumber];

    if((userChoice=="rock" && computerChoice=="rock")||(userChoice=="paper" && computerChoice=="paper")||(userChoice=="scissor" && computerChoice=="scissor")){
        display.innerText="DRAW!!";
        display.classList.replace("bg-black","bg-yellow-600");
        display.classList.replace("bg-green-600","bg-yellow-600");
        display.classList.replace("bg-red-600","bg-yellow-600");
    }
    // won
    else if(userChoice=="rock" && computerChoice=="scissor"){
        display.innerText="Rock breaks Scissor!!"; 
        display.classList.replace("bg-black","bg-green-600");
        display.classList.replace("bg-yellow-600","bg-green-600");
        display.classList.replace("bg-red-600","bg-green-600");
        userScore=userScore+1;
        document.getElementById("userScore").innerText=userScore;
    }
    // lose
    else if(userChoice=="rock"&& computerChoice=="paper"){
        display.innerText="Rock wrapped by paper!!";
        display.classList.replace("bg-black","bg-red-600");
        display.classList.replace("bg-yellow-600","bg-red-600");
        display.classList.replace("bg-green-600","bg-red-600");
        compScore=compScore+1;
        document.getElementById("compScore").innerText=compScore;
    }
    // won
    else if(userChoice=="paper"&& computerChoice=="rock"){
        display.innerText="Paper wraps Rock!!";
        display.classList.replace("bg-black","bg-green-600");
        display.classList.replace("bg-yellow-600","bg-green-600");
        display.classList.replace("bg-red-600","bg-green-600");
        userScore=userScore+1;
        document.getElementById("userScore").innerText=userScore; 
    }
    // lose
    else if(userChoice=="paper"&& computerChoice=="scissor"){
        display.innerText="Paper cut by Scissor!!";
        display.classList.replace("bg-black","bg-red-600");
        display.classList.replace("bg-yellow-600","bg-red-600");
        display.classList.replace("bg-green-600","bg-red-600");
        compScore=compScore+1;
        document.getElementById("compScore").innerText=compScore;
    }
    // won
    else if(userChoice=="scissor"&& computerChoice=="paper"){
        display.innerText="Scissor cuts Paper!!";
        display.classList.replace("bg-black","bg-green-600");
        display.classList.replace("bg-yellow-600","bg-green-600");
        display.classList.replace("bg-red-600","bg-green-600"); 
        userScore=userScore+1;
        document.getElementById("userScore").innerText=userScore;
    }
    // lose
    else if(userChoice=="scissor"&&computerChoice=="rock"){
        display.innerText="Scissor broke by Rock!!";
        display.classList.replace("bg-black","bg-red-600");
        display.classList.replace("bg-yellow-600","bg-red-600");
        display.classList.replace("bg-green-600","bg-red-600");
        compScore=compScore+1;
        document.getElementById("compScore").innerText=compScore;
    }
}