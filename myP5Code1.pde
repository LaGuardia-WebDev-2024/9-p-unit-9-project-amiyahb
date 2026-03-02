setup = function() {
    size(600, 400);
    frameRate(8)
};

//Background Images
var snoopyImage = loadImage("https://i.pinimg.com/736x/69/6d/f8/696df8538a424133eff21f91669d7dd2.jpg");

var flyImage = loadImage("https://people.com/thmb/HSSthZrlQs5G6NxljQoY5Jj55I8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(999x0:1001x2)/snoopy-1f5571532ca54022b5eae307ab3381d6.jpg");

var snoopyDanceImage = loadImage("https://i.pinimg.com/originals/c4/fb/9b/c4fb9b892452ee310381f66d5c2002bb.gif");

var snoopyWithFriendsImage = loadImage("https://npr.brightspotcdn.com/dims4/default/f16b22c/2147483647/strip/true/crop/3840x2160+0+0/resize/880x495!/quality/90/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2Fac%2Fbb%2F9d718cd04c7b87cf5e2d5da6e007%2F101920-snoopy-apple-partnership-wildbrain-shows-big-image-01.jpg");

var funImage = loadImage("https://www.cnet.com/a/img/resize/6daaac9e88422669cb5f2d5d5000639567db2bac/hub/2025/08/15/1abeefe9-7530-489b-ad69-3a5060d12341/snoopy-presents-summer-camp-photo-0114-jpg-photo-modal-show-home-large.jpg?auto=webp&fit=crop&height=1200&width=1200");

var snoopyEatingImage = loadImage("https://ww2.kqed.org/app/uploads/sites/2/2023/11/rn7jh5_custom-21dd4a34a900f827dd1abd36f0e0a57c6515030c-scaled-e1700681914217-800x605.jpg");

var tranquilSnoopyImage = loadImage("https://charlestinsley.wordpress.com/wp-content/uploads/2019/03/charlie_brown_and_snoopy_sitting_at_dock.jpg");

var sleepImage = loadImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRhOzPrhXBFm-pPsAfcgrNWiB06FkeEMUEkg&s");

//Variable Declarations
var sceneImage = snoopyImage;
var sceneText = "Lets take Snoopy on an adventure!  [Press f to fly]";

draw = function(){
    
   drawScene();
   
   //Disco ball for dance
      if(snoopyDanceImage == sceneImage && mousePressed){
      text("🥳", random(1, 500) , random(1, 600));
      text("🎉", random(1, 500) , random(1, 600));
    }

      if(snoopyWithFriendsImage == sceneImage && mousePressed){
      text("🥳", random(1, 500) , random(1, 600));
      text("🎉", random(1, 500) , random(1, 600));
    }

    if(funImage == sceneImage && mousePressed){
      text("🥳", random(1, 500) , random(1, 600));
      text("🎉", random(1, 500) , random(1, 600));
    }

   
//Different Scenes
   if(keyPressed){
     if(key == 'f'){
       sceneImage = flyImage;   
       sceneText = "WEEEEEE!.  [Press d to land]";
     } 
     if(key == 's'){
      sceneImage = snoopyImage;
      sceneText = "Lets take Snoopy on an adventure!  [Press f to fly]";
    } 
    
     if(key == 'd'){
       sceneImage = snoopyDanceImage
       sceneText = "We found Mary and Rerun, lets dance! [Click the Screen! \nPress p to travel]";
     }
     
      if(key == 'p'){
      sceneImage = snoopyWithFriendsImage;
      sceneText = "YAY! We found friends lets go somewhere else  [Press t]";
     }

     if(key == 't'){
      sceneImage = funImage
      sceneText = "We brought the party to the school! Maybe we should get \n something to eat [Press y]";
      }

     if(key == 'y'){
      sceneImage = snoopyEatingImage
      sceneText = "Yummy food! Snoopy is getting tired, take him somewhere tranquil \n[Press l]";
     }

     if(key == 'l'){
      sceneImage = tranquilSnoopyImage
      sceneText = "ahh this feels nice! I think its time to end the day [Press e]";
     }
     
     if(key == 'e'){
      sceneImage = sleepImage
      sceneText = "Thanks for spending the day with Snoopy, see you next time! \n[Press s to restart]";
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



