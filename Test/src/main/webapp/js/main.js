function login(){
    document.querySelectorAll(".login").forEach((el,i)=>{
        if(0 < i && i < 3) el.classList.add("displayNone");
        else el.classList.remove("displayNone");
    })
}

function logout(){
    document.querySelectorAll(".login").forEach((el,i)=>{
        if(0 < i && i < 3) el.classList.remove("displayNone");
        else el.classList.add("displayNone");
    })
}

