# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
	console.log("ready")
	$(".btn-green").click ->
		console.log("green")
		location.href = "./conquest/income"
	$(".btn-yellow").click ->
		console.log("yellow")
		location.href = "./conquest/asset"
	$(".btn-pink").click ->
		console.log("pink")
		location.href = "./conquest/liability"
	$(".btn-red").click ->
		console.log("red")
		location.href = "./conquest/equity"
	$(".btn-blue").click ->
		console.log("blue")
		location.href = "./conquest/credit"