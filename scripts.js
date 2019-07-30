"use strict";

// (function(document,navigator,standalone) {
//   // prevents links from apps from oppening in mobile safari
//   // this javascript must be the first script in your <head>
//   if ((standalone in navigator) && navigator[standalone]) {
//     var curnode, location=document.location, stop=/^(a|html)$/i;
//     document.addEventListener('click', function(e) {
//       curnode=e.target;
//       while (!(stop).test(curnode.nodeName)) {
//         curnode=curnode.parentNode;
//       }
//       // Condidions to do this only on links to your own app
//       // if you want all links, use if('href' in curnode) instead.
//       if('href' in curnode && ( curnode.href.indexOf('http') || ~curnode.href.indexOf(location.host) ) ) {
//         e.preventDefault();
//         location.href = curnode.href;
//       }
//     },false);
//   }
// })(document,window.navigator,'standalone');



let appendices = document.getElementById("appendices");
let clusters = document.getElementById("clusters");
let linesOnly = document.querySelectorAll("[id$='line-group']");
let labelsOnly = document.querySelectorAll("[id$='labels-group']");
let connectors = document.getElementById("exchange-connectors");

// hover lines and labels
for (var i=0; i<14; i++) {
  // console.log(`${i}: ${linesOnly[i].id}`);
  let lineID = linesOnly[i].id;
  let labelsID = labelsOnly[i].id;
  let line = document.getElementById(lineID);
  let labels = document.getElementById(labelsID);
  // console.log(`loop ${i}: ${lineID} ${labelsID}`);
  line.addEventListener("mouseover", function(){
    // console.log(`mouseover ${lineID} ${i}`);
    for (let k=1; k<=14; k++) {
      let numk = k - 1;
      // console.log(`${k} add dim to ${linesOnly[numk].id} and ${labelsOnly[numk].id}`);
      linesOnly[numk].classList.add("dim");
      labelsOnly[numk].classList.add("dim");
      appendices.classList.add("dim");
      clusters.classList.add("dim");
    }
    // console.log(`remove dim from ${lineID} and ${labelsID}`);
    line.classList.remove("dim");
    labels.classList.remove("dim");
    connectors.classList.add("dim");
  });
  line.addEventListener("mouseout", function(){
    // console.log(`mouseout ${lineID} ${num}`);
    for (let k=1; k<=14; k++) {
      let numk = k - 1;
      // console.log(`${k} remove dim to ${linesOnly[numk].id}`);
      linesOnly[numk].classList.remove("dim");
      labelsOnly[numk].classList.remove("dim");
      connectors.classList.remove("dim");
      appendices.classList.remove("dim");
      clusters.classList.remove("dim");
    }
  });
}
