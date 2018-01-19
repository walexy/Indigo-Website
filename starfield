
var stars = 600;
var sizeVariance = .8; var starSize = 1;
var opacityVariance = .2; var w = 2100;
var h = 650;

var g = document.getElementById("starfield");

for ( var i = 0 ; i < stars ; i++){
    var x = getRandomNumber(0,w);
    var y = getRandomNumber(0,h);
    var r = getRandomNumber((starSize - (starSize*sizeVariance)),(starSize + (starSize*sizeVariance)));
    var o = getRandomNumber((.2 - opacityVariance),.2); g.append(makeStar(x,y,r,o));
    var theBlur = getRandomNumber(0,4); g.append(makeStar(x,y,r,o,theBlur));
}

function makeStar(x,y,r,o){
    var s = document.createElementNS("http://www.w3.org/2000/svg", "circle"); s.setAttribute("cx",x);
    s.setAttribute("cy",y);
    s.setAttribute("r",r);
    s.setAttribute("theBlur",theBlur);
}

function makeStar(x,y,r,o){
    var s = document.createElementNS("http://www.w3.org/2000/svg", "circle"); s.setAttribute("cx",x);
    s.setAttribute("cy",y);
    s.setAttribute("r",r);
    s.setAttribute("fill","#FFFFFF"); s.setAttribute("fill-opacity",o); return s;
}

function getRandomNumber(min,max){ 
    var dist = max - min;
    return min + (Math.random()*dist); 
}