// Cyrus Hansen
// Block 2-3
// Jan 31, 2025

// general form of a processing function
// functionName(arg1, arg2, ar2 ...);

size(600, 600); // width, hight

background(255,39,205); //r, g, b


//mountain
fill(98, 20, 224); //r, g, b,: 0-255
triangle(0, 300, 300, 0, 600, 300); //x1, y1, x2, y2, x3, y3

stroke(246, 255, 0); //r, g, b
strokeWeight(10); //thickness in pixels

//hill
fill(20,224,35);
ellipse(300, 300, 200, 200);
