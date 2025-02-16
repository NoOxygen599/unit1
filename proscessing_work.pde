// Cyrus Hansen
// Block 2-3
// Jan 31, 2025

// general form of a processing function
// functionName(arg1, arg2, ar2 ...);

size(800, 800); // width, hight

stroke(0, 0, 0); //r, g, b
strokeWeight(0); //thickness in pixels


background(100, 100 ,100);

stroke(255, 255, 255); //r, g, b
strokeWeight(10); //thickness in pixels

stroke(100, 100, 100);
fill(61, 61, 61);
ellipse(400, 230, 400, 290);

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

fill(100, 100, 100);
arc ( 310, 495, 150, 130, radians(270), radians(370));

fill(100, 100, 100);
arc ( 490, 495, 150, 130, radians(530), radians(630));

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

stroke(208, 153, 219);
fill(85, 34, 100);
ellipse(400, 780, 560, 540); 
strokeWeight(10);
stroke(255, 255, 255);
fill(255, 255, 255);
triangle(256, 197, 280, 210, 325, 130); //head point L
triangle(544, 197, 520, 210, 475, 130); //head point R


rect(370, 160, 60, 1);//middle top line

//filling head
strokeWeight(0);
triangle(250, 200, 210, 250, 320, 250);//fill L.1
triangle(550, 200, 590, 250, 480, 250);//fill R.1
triangle(45, 170, 100, 280, 210, 250); //fill L.2
triangle(755, 170, 700, 280, 590, 250); //fill R.2
triangle(100, 280, 320, 250, 190, 340);

