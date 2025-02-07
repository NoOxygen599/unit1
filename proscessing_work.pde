// Cyrus Hansen
// Block 2-3
// Jan 31, 2025

// general form of a processing function
// functionName(arg1, arg2, ar2 ...);

size(800, 800); // width, hight

stroke(0, 0, 0); //r, g, b
strokeWeight(0); //thickness in pixels




stroke(255, 255, 255); //r, g, b
strokeWeight(10); //thickness in pixels

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

triangle(280, 430, 310, 475, 300, 410); //bottom point L
triangle(520, 430, 490, 475, 500, 410); //bottom point R



fill(0, 0, 0);
ellipse(400, 300, 200, 200); //x, y, w, h //black hole
