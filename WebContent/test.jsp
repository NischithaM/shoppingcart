<!DOCTYPE html>
<html lang="en">
<head>
<title>jQuery Get the data-id Attribute</title>
<style>
    ul li{ 
        display: inline-block;
        margin: 10px;
        list-style: none;
        opacity: 0.8;
    }
    ul li:hover{
        opacity: 1;
    }
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function(){
    $(".gallery li").on("click", function(){
        var dataId = $(this).attr("data-id");
        alert("The data-id of clicked item is: " + dataId);
    });
});
</script>
</head>
<body>
    <ul class="gallery">
        <li data-id="1">
            <a href="#">
                <img src="images/buy-1.jpg" alt="Club">
            </a>            
        </li>
        <li data-id="2">
            <a href="#">
                <img src="images/diamond.jpg" alt="Diamond">
            </a>
        </li>
        <li data-id="3">
            <a href="#">
                <img src="images/spade.jpg" alt="Spade">
            </a>
        </li>
        <li data-id="4">
            <a href="#">
                <img src="images/heart.jpg" alt="Heart">
            </a>
        </li>
    </ul>
</body>
</html>