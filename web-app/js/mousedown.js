function noDrag(e) {  
    e.preventDefault();  
} 

window.onload = function (e) {  
    var evt = e || window.event;                 
    if (evt.preventDefault) {    
        var images = document.getElementsByTagName('img');   
        for (var i = 0; i < imgs.length; i++) {    
            imgs[i].onmousedown = noDrag;  
        }  
    }  
};  
