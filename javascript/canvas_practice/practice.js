document.addEventListener("DOMContentLoaded", function(){
    const canvasElement = document.getElementById('mycanvas');
    canvasElement.height = 500;
    canvasElement.width = 500;

    // const ctx = canvas.getContext(contextType, contextAttributes);
    const ctx = canvasElement.getContext('2d');
    ctx.fillStyle = "#FF0000";
    ctx.fillRect(20, 20, 500, 500);
});