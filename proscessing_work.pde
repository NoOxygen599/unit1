// Cyrus Hansen
// Block 2-3
// Jan 31, 2025

// general form of a processing function
// functionName(arg1, arg2, ar2 ...);

size(800, 800); // width, hight

stroke(0, 0, 0); //r, g, b
strokeWeight(0); //thickness in pixels


background(0, 0 ,0);

stroke(255, 255, 255); //r, g, b
strokeWeight(10); //thickness in pixels

stroke(255, 255, 255);
fill(61, 61, 61);
ellipse(400, 230, 400, 290); //head cover
ellipse(400, 410, 270, 320); //bottom head cover


fill(200, 200, 200);
rect(300, 200, 50, 100);//top square nub L
rect(450, 200, 50, 100);//top square nub R
rect(180, 180, 70, 80); //side square nub L
rect(550, 180, 70, 80);



stroke(255, 255, 255);
line (330, 250, 250, 200); //helmet side spike L.1
line (470, 250, 550, 200); //helmet side spike R.1
line (250, 200, 210, 250); //helmet side spike L.2
line (550, 200, 590, 250); //helmet side spike R.2
line (210, 250, 50, 170); //helmet long side spike L.3
line (590, 250, 750, 170); //helmet long side spike R.3
line (50, 170, 20, 130); //helmet last point L.4
line (750, 170, 780, 130); //helmet last point R.4
line (20, 130, 100, 280); //helmet down spike L.5
line (780, 130, 700, 280); //helmet down spike R.5
line (100, 280, 190, 340); //helmet down spike L.6
line (700, 280, 610, 340); //helmet down spike R.6
line (190, 340, 210, 420); //helmet down notch L.7
line (610, 340, 590, 420); //helmet down notch R.7
line (210, 420, 280, 430); //helmet bottom L.8
line (590, 420, 520, 430); //helmet bottom R.8

fill(61, 61, 61);
arc ( 310, 495, 150, 130, radians(270), radians(370)); //L

fill(61, 61, 61);
arc ( 490, 495, 150, 130, radians(530), radians(630)); //R

fill(255, 255, 255);
triangle(280, 430, 310, 475, 300, 410); //bottom point L
triangle(520, 430, 490, 475, 500, 410); //bottom point R

fill(0, 0, 0);
ellipse(400, 300, 200, 200); //x, y, w, h //black hole

fill(255, 255, 255);
strokeWeight(4);
rect (397, 380, 6, 130); // blackhole bottom line 
triangle (397, 380, 403, 380, 400, 340); //blackhole bottom line point

fill(255, 255, 255); 
strokeWeight(3.5);
rect(398, 0, 4, 240);// blackhole top line
triangle(398, 240, 402, 240, 400, 265);//blackhole top line point 


strokeWeight(10);
stroke(255, 255, 255);
fill(255, 255, 255);
triangle(256, 197, 280, 210, 325, 130); //head point L
triangle(544, 197, 520, 210, 475, 130); //head point R


rect(370, 180, 60, 1);//middle top line


stroke(0, 0, 0);
fill(0, 0, 0);
rect(385, 400, 30, 110); //bottom black fill
rect(350, 400, 100, 80);


stroke(255, 255, 255);
fill(61, 61, 61);
arc ( 310, 495, 150, 130, radians(270), radians(370)); //L

fill(61, 61, 61);
arc ( 490, 495, 150, 130, radians(530), radians(630)); //R

fill(255, 255, 255);
//filling head
strokeWeight(0);
triangle(250, 200, 210, 250, 320, 250);//fill L.1
triangle(550, 200, 590, 250, 480, 250);//fill R.1
triangle(45, 170, 100, 280, 210, 250); //fill L.2
triangle(755, 170, 700, 280, 590, 250); //fill R.2
triangle(100, 280, 320, 250, 190, 340); //fill L.3
triangle(700, 280, 480, 250, 610, 340); //fillR.3
triangle(100, 280, 210, 250, 320, 250); //fill L.4
triangle(700, 280, 590, 250, 480, 250); //fill R.4
 
stroke (219, 217, 217);
fill(219, 217, 217);
triangle(320, 250, 210, 420, 190, 340);//shaded L.1
triangle(480, 250, 590, 420, 610, 340);//shaded R.1

fill(200, 200, 200);
triangle(380, 440, 210, 420, 300, 270); //double shaded L.1
triangle(420, 440, 590, 420, 500, 260); //double shaded R.1
triangle(340, 430, 380, 440, 390, 500); //double shaded L.2
triangle(460, 430, 420, 440, 410, 500); //double shaded R.2

rect(300, 200, 50, 100);//top square nub L
rect(450, 200, 50, 100);//top square nub R



stroke(255, 255, 255); //r, g, b
strokeWeight(10); //thickness in pixels
fill(0, 0, 0);
ellipse(400, 300, 200, 200); //x, y, w, h //black hole

fill(255, 255, 255);
strokeWeight(4);
rect (397, 380, 6, 130); // blackhole bottom line 
triangle (397, 380, 403, 380, 400, 340); //blackhole bottom line point


fill(255, 255, 255); 
strokeWeight(3.5);
rect(398, 0, 4, 240);// blackhole top line
triangle(398, 240, 402, 240, 400, 265);//blackhole top line point 

//power lines
strokeWeight(7);
stroke(193, 35, 159);
line(300, 410, 270, 390); //pink line L.1
line(500, 410, 530, 390); //pink line R.1
line(270, 390, 260, 320); //pink line L.2
line(530, 390, 540, 320); //pink line R.2
line(260, 320, 200, 280); //pink line L.3
line(540, 320, 600, 280); //pink line R.3
line(200, 280, 180, 325); //pink line L.4
line(600, 280, 620, 325); //pink line R.4
line(180, 325, 105, 280); //pink line L.5
line(620, 325, 695, 280); //pink line R.5
line(105, 280, 20, 130); //pink line L.6
line(695, 280, 780, 130); //pink line R.6


stroke(255, 255, 255);
fill(255, 255, 255);
triangle(280, 430, 310, 475, 300, 410); //bottom point L
triangle(520, 430, 490, 475, 500, 410); //bottom point R

stroke(208, 153, 219);
fill(85, 34, 100);
ellipse(400, 780, 560, 540); //energy ball


stroke(255, 255, 255);
fill(255, 255, 255);
//arc(400, 640, 800, 300, radians(340), radians(480));
