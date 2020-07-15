document.addEventListener("DOMContentLoaded", function(){
    const canvasElement = document.getElementById('mycanvas');
    canvasElement.height = 500;
    canvasElement.width = 500;

    // Draw a Rectangle
    // const ctx = canvas.getContext(contextType, contextAttributes);
    const ctx = canvasElement.getContext('2d');
    ctx.fillStyle = "#FF0000";
    ctx.fillRect(20, 20, 500, 500);

    // Draw a Circle
    ctx.beginPath();
    // ctx.arc(x, y, radius, startAngle, endAngle [, anticlockwise]);
    ctx.arc(200, 200, 50, 0, 2 * Math.PI, true)
    ctx.strokeStyle = 'blue';
    ctx.lineWidth = 6;
    ctx.stroke();
    ctx.fillStyle = 'purple';
    ctx.fill();

    // Draw a triangle
    ctx.beginPath();
    ctx.moveTo(200, 100);
    ctx.lineTo(75, 100);
    ctx.lineTo(75, 50);
    ctx.fill();
});