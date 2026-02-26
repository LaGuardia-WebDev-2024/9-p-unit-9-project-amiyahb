setup = function() {
    size(600, 400);
};

//Background Images
var snoopyImage = loadImage("https://i.pinimg.com/736x/69/6d/f8/696df8538a424133eff21f91669d7dd2.jpg");

var flyImage = loadImage("https://people.com/thmb/HSSthZrlQs5G6NxljQoY5Jj55I8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(999x0:1001x2)/snoopy-1f5571532ca54022b5eae307ab3381d6.jpg");

var snoopyDanceImage = loadImage("https://i.pinimg.com/originals/c4/fb/9b/c4fb9b892452ee310381f66d5c2002bb.gif");

//Variable Declarations
var sceneImage = snoopyImage;
var sceneText = "Lets take Snoopy on an adventure!  [Press f to fly]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'f'){
       sceneImage = flyImage;   
       sceneText = "WEEEEEE!.  [Press d to lands to restart]";
     } 
     if(key == 's'){
      sceneImage = snoopyImage;
      sceneText = "Lets take Snoopy on an adventure!  [Press f to fly]";
    } 
     if(key == 'd'){
       sceneImage = snoopyDanceImage
       sceneText = "We found Mary and Rerun, lets dance!";
     }
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 375);
};



