$(document).ready(function(){

$('.bookform').click(function(){
    $('.mainfilm').hide();
    $('.mainrestaurant').hide();
    $('.mainsong').hide();
    $('.maincoffeeshop').hide();
    $('.maincocktailbar').hide();
    $('.mainbook').show();
});

$('.restaurantform').click(function(){
    $('.mainfilm').hide();
    $('.mainsong').hide();
    $('.mainbook').hide();
    $('.maincoffeeshop').hide();
    $('.maincocktailbar').hide();
    $('.mainrestaurant').show();
});

$('.filmform').click(function(){
    $('.mainbook').hide();
    $('.mainsong').hide();
    $('.mainrestaurant').hide();
    $('.maincoffeeshop').hide();
    $('.maincocktailbar').hide();
    $('.mainfilm').show();
});

$('.songform').click(function(){
    $('.mainrestaurant').hide();
    $('.mainfilm').hide();
    $('.mainbook').hide();
    $('.maincoffeeshop').hide();
    $('.maincocktailbar').hide();
    $('.mainsong').show()
});

$('.coffeeshopform').click(function(){
    $('.mainrestaurant').hide();
    $('.mainfilm').hide();
    $('.mainbook').hide();
    $('.mainsong').hide();
    $('.maincocktailbar').hide();
    $('.maincoffeeshop').show();
});

$('.cocktailbarform').click(function(){
    $('.mainrestaurant').hide();
    $('.mainfilm').hide();
    $('.mainbook').hide();
    $('.mainsong').hide();
    $('.maincoffeeshop').hide();
    $('.maincocktailbar').show();
});
});