<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title> Architectures Modules </title>
</head>
<style>
body {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  overflow: hidden;
  background: #e4e2e5;
}
body #wrap {
  width: 800px;
  height: 500px;
  box-shadow: 0 20px 30px -5px rgba(0, 0, 0, 0.15);
  overflow: hidden;
  position: relative;
  transform-style: preserve-3d;
  background: linear-gradient(to bottom, #fff 50%, #e4e2e5 50%);
}
body #wrap .trigger {
  position: absolute;
  width: 5%;
  height: 100%;
  bottom: 0;
  right: 0;
  z-index: 99;
  opacity: 1;
  cursor: pointer;
}
body #wrap .trigger:before {
  content: "";
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  background: #fff;
  box-shadow: -1px 0 0 0 rgba(0, 0, 0, 0.015);
  transition: 0.2s ease-in-out;
}
body #wrap .trigger:after {
  content: "";
  position: absolute;
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 20px 0 20px 20px;
  border-color: transparent transparent transparent #222;
  top: calc(50% - 20px);
  right: 8.5px;
  transition: 0.2s ease-in-out;
  opacity: 0;
}
body #wrap .trigger:first-of-type:checked ~ .innerwrap .cards .cardwrap:first-of-type {
  opacity: 0;
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cards .cardwrap:last-of-type {
  opacity: 0;
}
body #wrap .trigger:nth-of-type(1):after {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(1):hover:after {
  border-color: transparent transparent transparent #fff;
}
body #wrap .trigger:nth-of-type(1):hover:before {
  background: #222;
}
body #wrap .trigger:nth-of-type(1):checked {
  pointer-events: none;
  transform: translateX(100%);
}
body #wrap .trigger:nth-of-type(1):checked ~ .trigger {
  transform: translateX(0%);
  z-index: 98;
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap .cards {
  transform: rotate(0deg);
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap input:nth-of-type(1) {
  transform: rotate(45deg);
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap input:nth-of-type(2) {
  transform: rotate(90deg);
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap input:nth-of-type(3) {
  transform: rotate(135deg);
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap input:nth-of-type(4) {
  transform: rotate(180deg);
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap input:nth-of-type(5) {
  transform: rotate(225deg);
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap input:nth-of-type(6) {
  transform: rotate(270deg);
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap input:nth-of-type(7) {
  transform: rotate(315deg);
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap input:nth-of-type(8) {
  transform: rotate(360deg);
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap .cardwrap:nth-of-type(1) .card {
  transform: rotate(-45deg);
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap .cardwrap:nth-of-type(2) .card {
  transform: rotate(-90deg);
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap .cardwrap:nth-of-type(3) .card {
  transform: rotate(-135deg);
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap .cardwrap:nth-of-type(4) .card {
  transform: rotate(-180deg);
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap .cardwrap:nth-of-type(5) .card {
  transform: rotate(-225deg);
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap .cardwrap:nth-of-type(6) .card {
  transform: rotate(-270deg);
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap .cardwrap:nth-of-type(7) .card {
  transform: rotate(-315deg);
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(1):checked ~ .innerwrap .cardwrap:nth-of-type(8) .card {
  transform: rotate(-360deg);
}
body #wrap .trigger:first-of-type:checked ~ .innerwrap .cards .cardwrap:first-of-type {
  opacity: 0;
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cards .cardwrap:last-of-type {
  opacity: 0;
}
body #wrap .trigger:nth-of-type(2):after {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(2):hover:after {
  border-color: transparent transparent transparent #fff;
}
body #wrap .trigger:nth-of-type(2):hover:before {
  background: #222;
}
body #wrap .trigger:nth-of-type(2):checked {
  pointer-events: none;
  transform: translateX(200%);
}
body #wrap .trigger:nth-of-type(2):checked ~ .trigger {
  transform: translateX(0%);
  z-index: 97;
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap .cards {
  transform: rotate(45deg);
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap input:nth-of-type(1) {
  transform: rotate(90deg);
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap input:nth-of-type(2) {
  transform: rotate(135deg);
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap input:nth-of-type(3) {
  transform: rotate(180deg);
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap input:nth-of-type(4) {
  transform: rotate(225deg);
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap input:nth-of-type(5) {
  transform: rotate(270deg);
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap input:nth-of-type(6) {
  transform: rotate(315deg);
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap input:nth-of-type(7) {
  transform: rotate(360deg);
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap input:nth-of-type(8) {
  transform: rotate(405deg);
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap .cardwrap:nth-of-type(1) .card {
  transform: rotate(-90deg);
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap .cardwrap:nth-of-type(2) .card {
  transform: rotate(-135deg);
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap .cardwrap:nth-of-type(3) .card {
  transform: rotate(-180deg);
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap .cardwrap:nth-of-type(4) .card {
  transform: rotate(-225deg);
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap .cardwrap:nth-of-type(5) .card {
  transform: rotate(-270deg);
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap .cardwrap:nth-of-type(6) .card {
  transform: rotate(-315deg);
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap .cardwrap:nth-of-type(7) .card {
  transform: rotate(-360deg);
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(2):checked ~ .innerwrap .cardwrap:nth-of-type(8) .card {
  transform: rotate(-405deg);
}
body #wrap .trigger:first-of-type:checked ~ .innerwrap .cards .cardwrap:first-of-type {
  opacity: 0;
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cards .cardwrap:last-of-type {
  opacity: 0;
}
body #wrap .trigger:nth-of-type(3):after {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(3):hover:after {
  border-color: transparent transparent transparent #fff;
}
body #wrap .trigger:nth-of-type(3):hover:before {
  background: #222;
}
body #wrap .trigger:nth-of-type(3):checked {
  pointer-events: none;
  transform: translateX(300%);
}
body #wrap .trigger:nth-of-type(3):checked ~ .trigger {
  transform: translateX(0%);
  z-index: 96;
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap .cards {
  transform: rotate(90deg);
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap input:nth-of-type(1) {
  transform: rotate(135deg);
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap input:nth-of-type(2) {
  transform: rotate(180deg);
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap input:nth-of-type(3) {
  transform: rotate(225deg);
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap input:nth-of-type(4) {
  transform: rotate(270deg);
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap input:nth-of-type(5) {
  transform: rotate(315deg);
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap input:nth-of-type(6) {
  transform: rotate(360deg);
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap input:nth-of-type(7) {
  transform: rotate(405deg);
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap input:nth-of-type(8) {
  transform: rotate(450deg);
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap .cardwrap:nth-of-type(1) .card {
  transform: rotate(-135deg);
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap .cardwrap:nth-of-type(2) .card {
  transform: rotate(-180deg);
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap .cardwrap:nth-of-type(3) .card {
  transform: rotate(-225deg);
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap .cardwrap:nth-of-type(4) .card {
  transform: rotate(-270deg);
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap .cardwrap:nth-of-type(5) .card {
  transform: rotate(-315deg);
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap .cardwrap:nth-of-type(6) .card {
  transform: rotate(-360deg);
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap .cardwrap:nth-of-type(7) .card {
  transform: rotate(-405deg);
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(3):checked ~ .innerwrap .cardwrap:nth-of-type(8) .card {
  transform: rotate(-450deg);
}
body #wrap .trigger:first-of-type:checked ~ .innerwrap .cards .cardwrap:first-of-type {
  opacity: 0;
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cards .cardwrap:last-of-type {
  opacity: 0;
}
body #wrap .trigger:nth-of-type(4):after {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(4):hover:after {
  border-color: transparent transparent transparent #fff;
}
body #wrap .trigger:nth-of-type(4):hover:before {
  background: #222;
}
body #wrap .trigger:nth-of-type(4):checked {
  pointer-events: none;
  transform: translateX(400%);
}
body #wrap .trigger:nth-of-type(4):checked ~ .trigger {
  transform: translateX(0%);
  z-index: 95;
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap .cards {
  transform: rotate(135deg);
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap input:nth-of-type(1) {
  transform: rotate(180deg);
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap input:nth-of-type(2) {
  transform: rotate(225deg);
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap input:nth-of-type(3) {
  transform: rotate(270deg);
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap input:nth-of-type(4) {
  transform: rotate(315deg);
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap input:nth-of-type(5) {
  transform: rotate(360deg);
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap input:nth-of-type(6) {
  transform: rotate(405deg);
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap input:nth-of-type(7) {
  transform: rotate(450deg);
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap input:nth-of-type(8) {
  transform: rotate(495deg);
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap .cardwrap:nth-of-type(1) .card {
  transform: rotate(-180deg);
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap .cardwrap:nth-of-type(2) .card {
  transform: rotate(-225deg);
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap .cardwrap:nth-of-type(3) .card {
  transform: rotate(-270deg);
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap .cardwrap:nth-of-type(4) .card {
  transform: rotate(-315deg);
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap .cardwrap:nth-of-type(5) .card {
  transform: rotate(-360deg);
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap .cardwrap:nth-of-type(6) .card {
  transform: rotate(-405deg);
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap .cardwrap:nth-of-type(7) .card {
  transform: rotate(-450deg);
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(4):checked ~ .innerwrap .cardwrap:nth-of-type(8) .card {
  transform: rotate(-495deg);
}
body #wrap .trigger:first-of-type:checked ~ .innerwrap .cards .cardwrap:first-of-type {
  opacity: 0;
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cards .cardwrap:last-of-type {
  opacity: 0;
}
body #wrap .trigger:nth-of-type(5):after {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(5):hover:after {
  border-color: transparent transparent transparent #fff;
}
body #wrap .trigger:nth-of-type(5):hover:before {
  background: #222;
}
body #wrap .trigger:nth-of-type(5):checked {
  pointer-events: none;
  transform: translateX(500%);
}
body #wrap .trigger:nth-of-type(5):checked ~ .trigger {
  transform: translateX(0%);
  z-index: 94;
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap .cards {
  transform: rotate(180deg);
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap input:nth-of-type(1) {
  transform: rotate(225deg);
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap input:nth-of-type(2) {
  transform: rotate(270deg);
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap input:nth-of-type(3) {
  transform: rotate(315deg);
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap input:nth-of-type(4) {
  transform: rotate(360deg);
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap input:nth-of-type(5) {
  transform: rotate(405deg);
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap input:nth-of-type(6) {
  transform: rotate(450deg);
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap input:nth-of-type(7) {
  transform: rotate(495deg);
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap input:nth-of-type(8) {
  transform: rotate(540deg);
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap .cardwrap:nth-of-type(1) .card {
  transform: rotate(-225deg);
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap .cardwrap:nth-of-type(2) .card {
  transform: rotate(-270deg);
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap .cardwrap:nth-of-type(3) .card {
  transform: rotate(-315deg);
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap .cardwrap:nth-of-type(4) .card {
  transform: rotate(-360deg);
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap .cardwrap:nth-of-type(5) .card {
  transform: rotate(-405deg);
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap .cardwrap:nth-of-type(6) .card {
  transform: rotate(-450deg);
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap .cardwrap:nth-of-type(7) .card {
  transform: rotate(-495deg);
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(5):checked ~ .innerwrap .cardwrap:nth-of-type(8) .card {
  transform: rotate(-540deg);
}
body #wrap .trigger:first-of-type:checked ~ .innerwrap .cards .cardwrap:first-of-type {
  opacity: 0;
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cards .cardwrap:last-of-type {
  opacity: 0;
}
body #wrap .trigger:nth-of-type(6):after {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(6):hover:after {
  border-color: transparent transparent transparent #fff;
}
body #wrap .trigger:nth-of-type(6):hover:before {
  background: #222;
}
body #wrap .trigger:nth-of-type(6):checked {
  pointer-events: none;
  transform: translateX(600%);
}
body #wrap .trigger:nth-of-type(6):checked ~ .trigger {
  transform: translateX(0%);
  z-index: 93;
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap .cards {
  transform: rotate(225deg);
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap input:nth-of-type(1) {
  transform: rotate(270deg);
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap input:nth-of-type(2) {
  transform: rotate(315deg);
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap input:nth-of-type(3) {
  transform: rotate(360deg);
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap input:nth-of-type(4) {
  transform: rotate(405deg);
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap input:nth-of-type(5) {
  transform: rotate(450deg);
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap input:nth-of-type(6) {
  transform: rotate(495deg);
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap input:nth-of-type(7) {
  transform: rotate(540deg);
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap input:nth-of-type(8) {
  transform: rotate(585deg);
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap .cardwrap:nth-of-type(1) .card {
  transform: rotate(-270deg);
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap .cardwrap:nth-of-type(2) .card {
  transform: rotate(-315deg);
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap .cardwrap:nth-of-type(3) .card {
  transform: rotate(-360deg);
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap .cardwrap:nth-of-type(4) .card {
  transform: rotate(-405deg);
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap .cardwrap:nth-of-type(5) .card {
  transform: rotate(-450deg);
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap .cardwrap:nth-of-type(6) .card {
  transform: rotate(-495deg);
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap .cardwrap:nth-of-type(7) .card {
  transform: rotate(-540deg);
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(6):checked ~ .innerwrap .cardwrap:nth-of-type(8) .card {
  transform: rotate(-585deg);
}
body #wrap .trigger:first-of-type:checked ~ .innerwrap .cards .cardwrap:first-of-type {
  opacity: 0;
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cards .cardwrap:last-of-type {
  opacity: 0;
}
body #wrap .trigger:nth-of-type(7):after {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(7):hover:after {
  border-color: transparent transparent transparent #fff;
}
body #wrap .trigger:nth-of-type(7):hover:before {
  background: #222;
}
body #wrap .trigger:nth-of-type(7):checked {
  pointer-events: none;
  transform: translateX(700%);
}
body #wrap .trigger:nth-of-type(7):checked ~ .trigger {
  transform: translateX(0%);
  z-index: 92;
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap .cards {
  transform: rotate(270deg);
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap input:nth-of-type(1) {
  transform: rotate(315deg);
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap input:nth-of-type(2) {
  transform: rotate(360deg);
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap input:nth-of-type(3) {
  transform: rotate(405deg);
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap input:nth-of-type(4) {
  transform: rotate(450deg);
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap input:nth-of-type(5) {
  transform: rotate(495deg);
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap input:nth-of-type(6) {
  transform: rotate(540deg);
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap input:nth-of-type(7) {
  transform: rotate(585deg);
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap input:nth-of-type(8) {
  transform: rotate(630deg);
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap .cardwrap:nth-of-type(1) .card {
  transform: rotate(-315deg);
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap .cardwrap:nth-of-type(2) .card {
  transform: rotate(-360deg);
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap .cardwrap:nth-of-type(3) .card {
  transform: rotate(-405deg);
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap .cardwrap:nth-of-type(4) .card {
  transform: rotate(-450deg);
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap .cardwrap:nth-of-type(5) .card {
  transform: rotate(-495deg);
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap .cardwrap:nth-of-type(6) .card {
  transform: rotate(-540deg);
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap .cardwrap:nth-of-type(7) .card {
  transform: rotate(-585deg);
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(7):checked ~ .innerwrap .cardwrap:nth-of-type(8) .card {
  transform: rotate(-630deg);
}
body #wrap .trigger:first-of-type:checked ~ .innerwrap .cards .cardwrap:first-of-type {
  opacity: 0;
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cards .cardwrap:last-of-type {
  opacity: 0;
}
body #wrap .trigger:nth-of-type(8):after {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(8):hover:after {
  border-color: transparent transparent transparent #fff;
}
body #wrap .trigger:nth-of-type(8):hover:before {
  background: #222;
}
body #wrap .trigger:nth-of-type(8):checked {
  pointer-events: none;
  transform: translateX(800%);
}
body #wrap .trigger:nth-of-type(8):checked ~ .trigger {
  transform: translateX(0%);
  z-index: 91;
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cards {
  transform: rotate(315deg);
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap input:nth-of-type(1) {
  transform: rotate(360deg);
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap input:nth-of-type(2) {
  transform: rotate(405deg);
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap input:nth-of-type(3) {
  transform: rotate(450deg);
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap input:nth-of-type(4) {
  transform: rotate(495deg);
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap input:nth-of-type(5) {
  transform: rotate(540deg);
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap input:nth-of-type(6) {
  transform: rotate(585deg);
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap input:nth-of-type(7) {
  transform: rotate(630deg);
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap input:nth-of-type(8) {
  transform: rotate(675deg);
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cardwrap:nth-of-type(1) .card {
  transform: rotate(-360deg);
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cardwrap:nth-of-type(2) .card {
  transform: rotate(-405deg);
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cardwrap:nth-of-type(3) .card {
  transform: rotate(-450deg);
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cardwrap:nth-of-type(4) .card {
  transform: rotate(-495deg);
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cardwrap:nth-of-type(5) .card {
  transform: rotate(-540deg);
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cardwrap:nth-of-type(6) .card {
  transform: rotate(-585deg);
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cardwrap:nth-of-type(7) .card {
  transform: rotate(-630deg);
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cardwrap:last-of-type {
  opacity: 1;
}
body #wrap .trigger:nth-of-type(8):checked ~ .innerwrap .cardwrap:nth-of-type(8) .card {
  transform: rotate(-675deg);
}
body #wrap .innerwrap {
  position: absolute;
  width: 1300px;
  height: 1300px;
  left: -725px;
  top: -400px;
  z-index: 999;
}
body #wrap .innerwrap input {
  position: absolute;
  top: calc(50% - 175px);
  height: 350px;
  width: 280px;
  left: 900px;
  transform-style: preserve-3d;
  transform-origin: -350px;
  perspective: 600px;
  z-index: 7;
  opacity: 0;
  cursor: pointer;
}
body #wrap .innerwrap input:before {
  content: "";
  position: absolute;
  width: 100%;
  height: 100%;
  left: 0%;
  top: 0%;
  z-index: 9;
  pointer-events: none;
}
body #wrap .innerwrap input:nth-of-type(1) {
  transform: rotate(0deg);
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap input:nth-of-type(1):checked:before {
  width: 500%;
  left: -125%;
  height: 500%;
  top: -125%;
  pointer-events: auto;
}
body #wrap .innerwrap input:nth-of-type(1):checked:hover ~ .cards .cardwrap:nth-of-type(1) .inner .text:before {
  -webkit-animation: turn 0.25s ease-in-out infinite alternate;
          animation: turn 0.25s ease-in-out infinite alternate;
}
@-webkit-keyframes turn {
  from {
    transform: rotate(-5deg);
  }
  to {
    transform: rotate(5deg);
  }
}
@keyframes turn {
  from {
    transform: rotate(-5deg);
  }
  to {
    transform: rotate(5deg);
  }
}
body #wrap .innerwrap input:nth-of-type(1):checked ~ .cards .cardwrap {
  z-index: -1;
}
body #wrap .innerwrap input:nth-of-type(1):checked ~ .cards .cardwrap .card .inner {
  transform: rotateX(0deg) translateZ(-100px) scale(0.95) translateY(-30px) translateX(-50px);
}
body #wrap .innerwrap input:nth-of-type(1):checked ~ .cards .cardwrap .card .inner .text p, body #wrap .innerwrap input:nth-of-type(1):checked ~ .cards .cardwrap .card .inner .link p {
  transform: translateY(0px) skewY(0deg);
  transition-delay: 0.8s;
}
body #wrap .innerwrap input:nth-of-type(1):checked ~ .cards .cardwrap .card .inner .link p {
  transition-delay: 1s;
}
body #wrap .innerwrap input:nth-of-type(1):checked ~ .cards .cardwrap:nth-of-type(1) {
  z-index: 2;
}
body #wrap .innerwrap input:nth-of-type(1):checked ~ .cards .cardwrap:nth-of-type(1) .card .inner {
  transform: rotateX(0deg) translateZ(150px) translateY(-20px) translateX(-70px);
  box-shadow: 0 20px 20px 0 rgba(0, 0, 0, 0.25);
}
body #wrap .innerwrap input:nth-of-type(1):checked ~ .cards .cardwrap:nth-of-type(1) .card .inner .text, body #wrap .innerwrap input:nth-of-type(1):checked ~ .cards .cardwrap:nth-of-type(1) .card .inner .link {
  transition: opacity 0s ease-in-out, transform 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275), box-shadow 0.2s ease-in-out;
  transition-delay: 0.3s, 0.6s, 0s;
  transform: translateX(150%) rotateX(0deg);
  box-shadow: inherit;
  opacity: 1;
}
body #wrap .innerwrap input:nth-of-type(1):checked ~ .cards .cardwrap:nth-of-type(1) .card .inner .link {
  transition-delay: 0.3s, 0.75s, 0s;
}
body #wrap .innerwrap input:nth-of-type(1):checked ~ .cards .cardwrap:nth-of-type(1) .card .inner .link p:before {
  transition-delay: 0.95s;
}
body #wrap .innerwrap input:nth-of-type(1):checked ~ .cards .cardwrap:nth-of-type(1) .card .inner:after {
  transform: skewX(0deg) translateZ(-1px) scale(1);
}
body #wrap .innerwrap input:nth-of-type(1):checked ~ .cards .cardwrap:nth-of-type(1) .card .inner:before {
  transform: translateZ(20px);
}
body #wrap .innerwrap input:nth-of-type(2) {
  transform: rotate(45deg);
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap input:nth-of-type(2):checked:before {
  width: 500%;
  left: -125%;
  height: 500%;
  top: -125%;
  pointer-events: auto;
}
body #wrap .innerwrap input:nth-of-type(2):checked:hover ~ .cards .cardwrap:nth-of-type(2) .inner .text:before {
  -webkit-animation: turn 0.25s ease-in-out infinite alternate;
          animation: turn 0.25s ease-in-out infinite alternate;
}
@keyframes turn {
  from {
    transform: rotate(-5deg);
  }
  to {
    transform: rotate(5deg);
  }
}
body #wrap .innerwrap input:nth-of-type(2):checked ~ .cards .cardwrap {
  z-index: -1;
}
body #wrap .innerwrap input:nth-of-type(2):checked ~ .cards .cardwrap .card .inner {
  transform: rotateX(0deg) translateZ(-100px) scale(0.95) translateY(-30px) translateX(-50px);
}
body #wrap .innerwrap input:nth-of-type(2):checked ~ .cards .cardwrap .card .inner .text p, body #wrap .innerwrap input:nth-of-type(2):checked ~ .cards .cardwrap .card .inner .link p {
  transform: translateY(0px) skewY(0deg);
  transition-delay: 0.8s;
}
body #wrap .innerwrap input:nth-of-type(2):checked ~ .cards .cardwrap .card .inner .link p {
  transition-delay: 1s;
}
body #wrap .innerwrap input:nth-of-type(2):checked ~ .cards .cardwrap:nth-of-type(2) {
  z-index: 2;
}
body #wrap .innerwrap input:nth-of-type(2):checked ~ .cards .cardwrap:nth-of-type(2) .card .inner {
  transform: rotateX(0deg) translateZ(150px) translateY(-20px) translateX(-70px);
  box-shadow: 0 20px 20px 0 rgba(0, 0, 0, 0.25);
}
body #wrap .innerwrap input:nth-of-type(2):checked ~ .cards .cardwrap:nth-of-type(2) .card .inner .text, body #wrap .innerwrap input:nth-of-type(2):checked ~ .cards .cardwrap:nth-of-type(2) .card .inner .link {
  transition: opacity 0s ease-in-out, transform 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275), box-shadow 0.2s ease-in-out;
  transition-delay: 0.3s, 0.6s, 0s;
  transform: translateX(150%) rotateX(0deg);
  box-shadow: inherit;
  opacity: 1;
}
body #wrap .innerwrap input:nth-of-type(2):checked ~ .cards .cardwrap:nth-of-type(2) .card .inner .link {
  transition-delay: 0.3s, 0.75s, 0s;
}
body #wrap .innerwrap input:nth-of-type(2):checked ~ .cards .cardwrap:nth-of-type(2) .card .inner .link p:before {
  transition-delay: 0.95s;
}
body #wrap .innerwrap input:nth-of-type(2):checked ~ .cards .cardwrap:nth-of-type(2) .card .inner:after {
  transform: skewX(0deg) translateZ(-1px) scale(1);
}
body #wrap .innerwrap input:nth-of-type(2):checked ~ .cards .cardwrap:nth-of-type(2) .card .inner:before {
  transform: translateZ(20px);
}
body #wrap .innerwrap input:nth-of-type(3) {
  transform: rotate(90deg);
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap input:nth-of-type(3):checked:before {
  width: 500%;
  left: -125%;
  height: 500%;
  top: -125%;
  pointer-events: auto;
}
body #wrap .innerwrap input:nth-of-type(3):checked:hover ~ .cards .cardwrap:nth-of-type(3) .inner .text:before {
  -webkit-animation: turn 0.25s ease-in-out infinite alternate;
          animation: turn 0.25s ease-in-out infinite alternate;
}
@keyframes turn {
  from {
    transform: rotate(-5deg);
  }
  to {
    transform: rotate(5deg);
  }
}
body #wrap .innerwrap input:nth-of-type(3):checked ~ .cards .cardwrap {
  z-index: -1;
}
body #wrap .innerwrap input:nth-of-type(3):checked ~ .cards .cardwrap .card .inner {
  transform: rotateX(0deg) translateZ(-100px) scale(0.95) translateY(-30px) translateX(-50px);
}
body #wrap .innerwrap input:nth-of-type(3):checked ~ .cards .cardwrap .card .inner .text p, body #wrap .innerwrap input:nth-of-type(3):checked ~ .cards .cardwrap .card .inner .link p {
  transform: translateY(0px) skewY(0deg);
  transition-delay: 0.8s;
}
body #wrap .innerwrap input:nth-of-type(3):checked ~ .cards .cardwrap .card .inner .link p {
  transition-delay: 1s;
}
body #wrap .innerwrap input:nth-of-type(3):checked ~ .cards .cardwrap:nth-of-type(3) {
  z-index: 2;
}
body #wrap .innerwrap input:nth-of-type(3):checked ~ .cards .cardwrap:nth-of-type(3) .card .inner {
  transform: rotateX(0deg) translateZ(150px) translateY(-20px) translateX(-70px);
  box-shadow: 0 20px 20px 0 rgba(0, 0, 0, 0.25);
}
body #wrap .innerwrap input:nth-of-type(3):checked ~ .cards .cardwrap:nth-of-type(3) .card .inner .text, body #wrap .innerwrap input:nth-of-type(3):checked ~ .cards .cardwrap:nth-of-type(3) .card .inner .link {
  transition: opacity 0s ease-in-out, transform 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275), box-shadow 0.2s ease-in-out;
  transition-delay: 0.3s, 0.6s, 0s;
  transform: translateX(150%) rotateX(0deg);
  box-shadow: inherit;
  opacity: 1;
}
body #wrap .innerwrap input:nth-of-type(3):checked ~ .cards .cardwrap:nth-of-type(3) .card .inner .link {
  transition-delay: 0.3s, 0.75s, 0s;
}
body #wrap .innerwrap input:nth-of-type(3):checked ~ .cards .cardwrap:nth-of-type(3) .card .inner .link p:before {
  transition-delay: 0.95s;
}
body #wrap .innerwrap input:nth-of-type(3):checked ~ .cards .cardwrap:nth-of-type(3) .card .inner:after {
  transform: skewX(0deg) translateZ(-1px) scale(1);
}
body #wrap .innerwrap input:nth-of-type(3):checked ~ .cards .cardwrap:nth-of-type(3) .card .inner:before {
  transform: translateZ(20px);
}
body #wrap .innerwrap input:nth-of-type(4) {
  transform: rotate(135deg);
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap input:nth-of-type(4):checked:before {
  width: 500%;
  left: -125%;
  height: 500%;
  top: -125%;
  pointer-events: auto;
}
body #wrap .innerwrap input:nth-of-type(4):checked:hover ~ .cards .cardwrap:nth-of-type(4) .inner .text:before {
  -webkit-animation: turn 0.25s ease-in-out infinite alternate;
          animation: turn 0.25s ease-in-out infinite alternate;
}
@keyframes turn {
  from {
    transform: rotate(-5deg);
  }
  to {
    transform: rotate(5deg);
  }
}
body #wrap .innerwrap input:nth-of-type(4):checked ~ .cards .cardwrap {
  z-index: -1;
}
body #wrap .innerwrap input:nth-of-type(4):checked ~ .cards .cardwrap .card .inner {
  transform: rotateX(0deg) translateZ(-100px) scale(0.95) translateY(-30px) translateX(-50px);
}
body #wrap .innerwrap input:nth-of-type(4):checked ~ .cards .cardwrap .card .inner .text p, body #wrap .innerwrap input:nth-of-type(4):checked ~ .cards .cardwrap .card .inner .link p {
  transform: translateY(0px) skewY(0deg);
  transition-delay: 0.8s;
}
body #wrap .innerwrap input:nth-of-type(4):checked ~ .cards .cardwrap .card .inner .link p {
  transition-delay: 1s;
}
body #wrap .innerwrap input:nth-of-type(4):checked ~ .cards .cardwrap:nth-of-type(4) {
  z-index: 2;
}
body #wrap .innerwrap input:nth-of-type(4):checked ~ .cards .cardwrap:nth-of-type(4) .card .inner {
  transform: rotateX(0deg) translateZ(150px) translateY(-20px) translateX(-70px);
  box-shadow: 0 20px 20px 0 rgba(0, 0, 0, 0.25);
}
body #wrap .innerwrap input:nth-of-type(4):checked ~ .cards .cardwrap:nth-of-type(4) .card .inner .text, body #wrap .innerwrap input:nth-of-type(4):checked ~ .cards .cardwrap:nth-of-type(4) .card .inner .link {
  transition: opacity 0s ease-in-out, transform 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275), box-shadow 0.2s ease-in-out;
  transition-delay: 0.3s, 0.6s, 0s;
  transform: translateX(150%) rotateX(0deg);
  box-shadow: inherit;
  opacity: 1;
}
body #wrap .innerwrap input:nth-of-type(4):checked ~ .cards .cardwrap:nth-of-type(4) .card .inner .link {
  transition-delay: 0.3s, 0.75s, 0s;
}
body #wrap .innerwrap input:nth-of-type(4):checked ~ .cards .cardwrap:nth-of-type(4) .card .inner .link p:before {
  transition-delay: 0.95s;
}
body #wrap .innerwrap input:nth-of-type(4):checked ~ .cards .cardwrap:nth-of-type(4) .card .inner:after {
  transform: skewX(0deg) translateZ(-1px) scale(1);
}
body #wrap .innerwrap input:nth-of-type(4):checked ~ .cards .cardwrap:nth-of-type(4) .card .inner:before {
  transform: translateZ(20px);
}
body #wrap .innerwrap input:nth-of-type(5) {
  transform: rotate(180deg);
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap input:nth-of-type(5):checked:before {
  width: 500%;
  left: -125%;
  height: 500%;
  top: -125%;
  pointer-events: auto;
}
body #wrap .innerwrap input:nth-of-type(5):checked:hover ~ .cards .cardwrap:nth-of-type(5) .inner .text:before {
  -webkit-animation: turn 0.25s ease-in-out infinite alternate;
          animation: turn 0.25s ease-in-out infinite alternate;
}
@keyframes turn {
  from {
    transform: rotate(-5deg);
  }
  to {
    transform: rotate(5deg);
  }
}
body #wrap .innerwrap input:nth-of-type(5):checked ~ .cards .cardwrap {
  z-index: -1;
}
body #wrap .innerwrap input:nth-of-type(5):checked ~ .cards .cardwrap .card .inner {
  transform: rotateX(0deg) translateZ(-100px) scale(0.95) translateY(-30px) translateX(-50px);
}
body #wrap .innerwrap input:nth-of-type(5):checked ~ .cards .cardwrap .card .inner .text p, body #wrap .innerwrap input:nth-of-type(5):checked ~ .cards .cardwrap .card .inner .link p {
  transform: translateY(0px) skewY(0deg);
  transition-delay: 0.8s;
}
body #wrap .innerwrap input:nth-of-type(5):checked ~ .cards .cardwrap .card .inner .link p {
  transition-delay: 1s;
}
body #wrap .innerwrap input:nth-of-type(5):checked ~ .cards .cardwrap:nth-of-type(5) {
  z-index: 2;
}
body #wrap .innerwrap input:nth-of-type(5):checked ~ .cards .cardwrap:nth-of-type(5) .card .inner {
  transform: rotateX(0deg) translateZ(150px) translateY(-20px) translateX(-70px);
  box-shadow: 0 20px 20px 0 rgba(0, 0, 0, 0.25);
}
body #wrap .innerwrap input:nth-of-type(5):checked ~ .cards .cardwrap:nth-of-type(5) .card .inner .text, body #wrap .innerwrap input:nth-of-type(5):checked ~ .cards .cardwrap:nth-of-type(5) .card .inner .link {
  transition: opacity 0s ease-in-out, transform 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275), box-shadow 0.2s ease-in-out;
  transition-delay: 0.3s, 0.6s, 0s;
  transform: translateX(150%) rotateX(0deg);
  box-shadow: inherit;
  opacity: 1;
}
body #wrap .innerwrap input:nth-of-type(5):checked ~ .cards .cardwrap:nth-of-type(5) .card .inner .link {
  transition-delay: 0.3s, 0.75s, 0s;
}
body #wrap .innerwrap input:nth-of-type(5):checked ~ .cards .cardwrap:nth-of-type(5) .card .inner .link p:before {
  transition-delay: 0.95s;
}
body #wrap .innerwrap input:nth-of-type(5):checked ~ .cards .cardwrap:nth-of-type(5) .card .inner:after {
  transform: skewX(0deg) translateZ(-1px) scale(1);
}
body #wrap .innerwrap input:nth-of-type(5):checked ~ .cards .cardwrap:nth-of-type(5) .card .inner:before {
  transform: translateZ(20px);
}
body #wrap .innerwrap input:nth-of-type(6) {
  transform: rotate(225deg);
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap input:nth-of-type(6):checked:before {
  width: 500%;
  left: -125%;
  height: 500%;
  top: -125%;
  pointer-events: auto;
}
body #wrap .innerwrap input:nth-of-type(6):checked:hover ~ .cards .cardwrap:nth-of-type(6) .inner .text:before {
  -webkit-animation: turn 0.25s ease-in-out infinite alternate;
          animation: turn 0.25s ease-in-out infinite alternate;
}
@keyframes turn {
  from {
    transform: rotate(-5deg);
  }
  to {
    transform: rotate(5deg);
  }
}
body #wrap .innerwrap input:nth-of-type(6):checked ~ .cards .cardwrap {
  z-index: -1;
}
body #wrap .innerwrap input:nth-of-type(6):checked ~ .cards .cardwrap .card .inner {
  transform: rotateX(0deg) translateZ(-100px) scale(0.95) translateY(-30px) translateX(-50px);
}
body #wrap .innerwrap input:nth-of-type(6):checked ~ .cards .cardwrap .card .inner .text p, body #wrap .innerwrap input:nth-of-type(6):checked ~ .cards .cardwrap .card .inner .link p {
  transform: translateY(0px) skewY(0deg);
  transition-delay: 0.8s;
}
body #wrap .innerwrap input:nth-of-type(6):checked ~ .cards .cardwrap .card .inner .link p {
  transition-delay: 1s;
}
body #wrap .innerwrap input:nth-of-type(6):checked ~ .cards .cardwrap:nth-of-type(6) {
  z-index: 2;
}
body #wrap .innerwrap input:nth-of-type(6):checked ~ .cards .cardwrap:nth-of-type(6) .card .inner {
  transform: rotateX(0deg) translateZ(150px) translateY(-20px) translateX(-70px);
  box-shadow: 0 20px 20px 0 rgba(0, 0, 0, 0.25);
}
body #wrap .innerwrap input:nth-of-type(6):checked ~ .cards .cardwrap:nth-of-type(6) .card .inner .text, body #wrap .innerwrap input:nth-of-type(6):checked ~ .cards .cardwrap:nth-of-type(6) .card .inner .link {
  transition: opacity 0s ease-in-out, transform 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275), box-shadow 0.2s ease-in-out;
  transition-delay: 0.3s, 0.6s, 0s;
  transform: translateX(150%) rotateX(0deg);
  box-shadow: inherit;
  opacity: 1;
}
body #wrap .innerwrap input:nth-of-type(6):checked ~ .cards .cardwrap:nth-of-type(6) .card .inner .link {
  transition-delay: 0.3s, 0.75s, 0s;
}
body #wrap .innerwrap input:nth-of-type(6):checked ~ .cards .cardwrap:nth-of-type(6) .card .inner .link p:before {
  transition-delay: 0.95s;
}
body #wrap .innerwrap input:nth-of-type(6):checked ~ .cards .cardwrap:nth-of-type(6) .card .inner:after {
  transform: skewX(0deg) translateZ(-1px) scale(1);
}
body #wrap .innerwrap input:nth-of-type(6):checked ~ .cards .cardwrap:nth-of-type(6) .card .inner:before {
  transform: translateZ(20px);
}
body #wrap .innerwrap input:nth-of-type(7) {
  transform: rotate(270deg);
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap input:nth-of-type(7):checked:before {
  width: 500%;
  left: -125%;
  height: 500%;
  top: -125%;
  pointer-events: auto;
}
body #wrap .innerwrap input:nth-of-type(7):checked:hover ~ .cards .cardwrap:nth-of-type(7) .inner .text:before {
  -webkit-animation: turn 0.25s ease-in-out infinite alternate;
          animation: turn 0.25s ease-in-out infinite alternate;
}
@keyframes turn {
  from {
    transform: rotate(-5deg);
  }
  to {
    transform: rotate(5deg);
  }
}
body #wrap .innerwrap input:nth-of-type(7):checked ~ .cards .cardwrap {
  z-index: -1;
}
body #wrap .innerwrap input:nth-of-type(7):checked ~ .cards .cardwrap .card .inner {
  transform: rotateX(0deg) translateZ(-100px) scale(0.95) translateY(-30px) translateX(-50px);
}
body #wrap .innerwrap input:nth-of-type(7):checked ~ .cards .cardwrap .card .inner .text p, body #wrap .innerwrap input:nth-of-type(7):checked ~ .cards .cardwrap .card .inner .link p {
  transform: translateY(0px) skewY(0deg);
  transition-delay: 0.8s;
}
body #wrap .innerwrap input:nth-of-type(7):checked ~ .cards .cardwrap .card .inner .link p {
  transition-delay: 1s;
}
body #wrap .innerwrap input:nth-of-type(7):checked ~ .cards .cardwrap:nth-of-type(7) {
  z-index: 2;
}
body #wrap .innerwrap input:nth-of-type(7):checked ~ .cards .cardwrap:nth-of-type(7) .card .inner {
  transform: rotateX(0deg) translateZ(150px) translateY(-20px) translateX(-70px);
  box-shadow: 0 20px 20px 0 rgba(0, 0, 0, 0.25);
}
body #wrap .innerwrap input:nth-of-type(7):checked ~ .cards .cardwrap:nth-of-type(7) .card .inner .text, body #wrap .innerwrap input:nth-of-type(7):checked ~ .cards .cardwrap:nth-of-type(7) .card .inner .link {
  transition: opacity 0s ease-in-out, transform 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275), box-shadow 0.2s ease-in-out;
  transition-delay: 0.3s, 0.6s, 0s;
  transform: translateX(150%) rotateX(0deg);
  box-shadow: inherit;
  opacity: 1;
}
body #wrap .innerwrap input:nth-of-type(7):checked ~ .cards .cardwrap:nth-of-type(7) .card .inner .link {
  transition-delay: 0.3s, 0.75s, 0s;
}
body #wrap .innerwrap input:nth-of-type(7):checked ~ .cards .cardwrap:nth-of-type(7) .card .inner .link p:before {
  transition-delay: 0.95s;
}
body #wrap .innerwrap input:nth-of-type(7):checked ~ .cards .cardwrap:nth-of-type(7) .card .inner:after {
  transform: skewX(0deg) translateZ(-1px) scale(1);
}
body #wrap .innerwrap input:nth-of-type(7):checked ~ .cards .cardwrap:nth-of-type(7) .card .inner:before {
  transform: translateZ(20px);
}
body #wrap .innerwrap input:nth-of-type(8) {
  transform: rotate(315deg);
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap input:nth-of-type(8):checked:before {
  width: 500%;
  left: -125%;
  height: 500%;
  top: -125%;
  pointer-events: auto;
}
body #wrap .innerwrap input:nth-of-type(8):checked:hover ~ .cards .cardwrap:nth-of-type(8) .inner .text:before {
  -webkit-animation: turn 0.25s ease-in-out infinite alternate;
          animation: turn 0.25s ease-in-out infinite alternate;
}
@keyframes turn {
  from {
    transform: rotate(-5deg);
  }
  to {
    transform: rotate(5deg);
  }
}
body #wrap .innerwrap input:nth-of-type(8):checked ~ .cards .cardwrap {
  z-index: -1;
}
body #wrap .innerwrap input:nth-of-type(8):checked ~ .cards .cardwrap .card .inner {
  transform: rotateX(0deg) translateZ(-100px) scale(0.95) translateY(-30px) translateX(-50px);
}
body #wrap .innerwrap input:nth-of-type(8):checked ~ .cards .cardwrap .card .inner .text p, body #wrap .innerwrap input:nth-of-type(8):checked ~ .cards .cardwrap .card .inner .link p {
  transform: translateY(0px) skewY(0deg);
  transition-delay: 0.8s;
}
body #wrap .innerwrap input:nth-of-type(8):checked ~ .cards .cardwrap .card .inner .link p {
  transition-delay: 1s;
}
body #wrap .innerwrap input:nth-of-type(8):checked ~ .cards .cardwrap:nth-of-type(8) {
  z-index: 2;
}
body #wrap .innerwrap input:nth-of-type(8):checked ~ .cards .cardwrap:nth-of-type(8) .card .inner {
  transform: rotateX(0deg) translateZ(150px) translateY(-20px) translateX(-70px);
  box-shadow: 0 20px 20px 0 rgba(0, 0, 0, 0.25);
}
body #wrap .innerwrap input:nth-of-type(8):checked ~ .cards .cardwrap:nth-of-type(8) .card .inner .text, body #wrap .innerwrap input:nth-of-type(8):checked ~ .cards .cardwrap:nth-of-type(8) .card .inner .link {
  transition: opacity 0s ease-in-out, transform 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275), box-shadow 0.2s ease-in-out;
  transition-delay: 0.3s, 0.6s, 0s;
  transform: translateX(150%) rotateX(0deg);
  box-shadow: inherit;
  opacity: 1;
}
body #wrap .innerwrap input:nth-of-type(8):checked ~ .cards .cardwrap:nth-of-type(8) .card .inner .link {
  transition-delay: 0.3s, 0.75s, 0s;
}
body #wrap .innerwrap input:nth-of-type(8):checked ~ .cards .cardwrap:nth-of-type(8) .card .inner .link p:before {
  transition-delay: 0.95s;
}
body #wrap .innerwrap input:nth-of-type(8):checked ~ .cards .cardwrap:nth-of-type(8) .card .inner:after {
  transform: skewX(0deg) translateZ(-1px) scale(1);
}
body #wrap .innerwrap input:nth-of-type(8):checked ~ .cards .cardwrap:nth-of-type(8) .card .inner:before {
  transform: translateZ(20px);
}
body #wrap .innerwrap .cards {
  position: absolute;
  width: 100%;
  height: 100%;
  left: -100px;
  top: 0;
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap .cardwrap {
  position: absolute;
  top: calc(50% - 150px);
  height: 300px;
  width: 250px;
  left: 1000px;
  transform-style: preserve-3d;
  transform-origin: -350px;
  perspective: 800px;
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap .cardwrap:last-of-type {
  opacity: 0;
}
body #wrap .innerwrap .cardwrap:nth-of-type(1n) .card .inner {
  background: #32cbfb;
}
body #wrap .innerwrap .cardwrap:nth-of-type(2n) .card .inner {
  background: #fc3359;
}
body #wrap .innerwrap .cardwrap:nth-of-type(3n) .card .inner {
  background: #fefb3a;
}
body #wrap .innerwrap .cardwrap:nth-of-type(1) {
  transform: rotate(45deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(1) .card {
  transform: rotate(-45deg);
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap .cardwrap:nth-of-type(1) .card .inner {
  position: absolute;
  width: 112.5%;
  height: 112.5%;
  left: -0.675%;
  top: -0.675%;
  background: #fc3359;
  transform-style: preserve-3d;
  transform-origin: bottom;
  transform: rotateX(-30deg) translateZ(-100px);
  transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  pointer-events: none;
  display: flex;
  padding: 25px 25px 40px 25px;
  box-sizing: border-box;
  align-items: flex-end;
  flex-wrap: wrap;
}
body #wrap .innerwrap .cardwrap:nth-of-type(1) .card .inner h1 {
  font-family: "Anton";
  text-transform: uppercase;
  letter-spacing: 1px;
  font-size: 40px;
  transform: translateZ(25px);
  position: relative;
  color: #222;
}
body #wrap .innerwrap .cardwrap:nth-of-type(1) .card .inner h1 span {
  position: absolute;
  font-size: 12px;
  top: -30px;
  left: 0;
  padding: 5px;
  background: #222;
  color: #fff;
}
body #wrap .innerwrap .cardwrap:nth-of-type(1) .card .inner:before {
  content: "01";
  left: 25px;
  top: 25px;
  font-size: 75px;
  color: #bl;
  font-family: "Anton";
  position: absolute;
  transform: translateZ(1px);
}
body #wrap .innerwrap .cardwrap:nth-of-type(1) .card .inner:after {
  content: "";
  position: absolute;
  width: 100%;
  height: 75%;
  bottom: 0;
  left: 0;
  background: linear-gradient(to bottom, rgba(0, 0, 0, 0.00001), rgba(0, 0, 0, 0.1));
  transform-origin: bottom;
  transform-style: preserve-3d;
  z-index: -1;
  transform: skewX(-10deg) translateZ(-1px) scale(1);
  transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}
body #wrap .innerwrap .cardwrap:nth-of-type(1) .card .inner .text:before {
  content: "";
  position: absolute;
  width: 30px;
  height: 30px;
  border-radius: 100%;
  background: linear-gradient(45deg, rgba(255, 255, 255, 0.00001) calc(50% - 2px), #fff calc(50% - 2px), #fff calc(50% + 2px), rgba(255, 255, 255, 0.00001) calc(50% + 2px)), linear-gradient(-45deg, rgba(255, 255, 255, 0.00001) calc(50% - 2px), #fff calc(50% - 2px), #fff calc(50% + 2px), rgba(255, 255, 255, 0.00001) calc(50% + 2px)), #fc3359;
  z-index: 999;
  top: 10px;
  right: 10px;
  box-shadow: inset 0 0 0 5px #fc3359;
  transition: 0.2s ease-in-out;
}
body #wrap .innerwrap .cardwrap:nth-of-type(1) .card .inner .text, body #wrap .innerwrap .cardwrap:nth-of-type(1) .card .inner .link {
  box-sizing: border-box;
  position: absolute;
  width: 70%;
  height: 60%;
  left: 0;
  top: 0;
  background: #222;
  transition: 0.2s cubic-bezier(0.175, 0.885, 0.32, 1);
  transform: translateX(150%) rotateX(90deg);
  opacity: 0;
  transform-origin: bottom;
  color: #fff;
  padding: 25px;
  display: flex;
  align-items: center;
  text-transform: uppercase;
  overflow: hidden;
}
body #wrap .innerwrap .cardwrap:nth-of-type(1) .card .inner .text p, body #wrap .innerwrap .cardwrap:nth-of-type(1) .card .inner .link p {
  font-size: 12px;
  margin-top: 0;
  line-height: 1.5;
  position: relative;
  font-family: "Raleway";
  transition: 0.4s cubic-bezier(0.175, 0.885, 0.32, 1);
  transform: translateY(200px) skewY(20deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(1) .card .inner .link {
  transform-origin: top;
  height: calc(40% - 15px);
  top: calc(60% + 15px);
  background: #fff;
  color: #222;
  transform: translateX(150%) rotateX(-90deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(1) .card .inner .link p {
  transform: translateY(200px) skewY(-20deg);
}
body #wrap .innerwrap .cardwrap:last-of-type {
  opacity: 0;
}
body #wrap .innerwrap .cardwrap:nth-of-type(1n) .card .inner {
  background: #32cbfb;
}
body #wrap .innerwrap .cardwrap:nth-of-type(2n) .card .inner {
  background: #fc3359;
}
body #wrap .innerwrap .cardwrap:nth-of-type(3n) .card .inner {
  background: #fefb3a;
}
body #wrap .innerwrap .cardwrap:nth-of-type(2) {
  transform: rotate(90deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(2) .card {
  transform: rotate(-90deg);
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap .cardwrap:nth-of-type(2) .card .inner {
  position: absolute;
  width: 112.5%;
  height: 112.5%;
  left: -0.675%;
  top: -0.675%;
  background: #fc3359;
  transform-style: preserve-3d;
  transform-origin: bottom;
  transform: rotateX(-30deg) translateZ(-100px);
  transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  pointer-events: none;
  display: flex;
  padding: 25px 25px 40px 25px;
  box-sizing: border-box;
  align-items: flex-end;
  flex-wrap: wrap;
}
body #wrap .innerwrap .cardwrap:nth-of-type(2) .card .inner h1 {
  font-family: "Anton";
  text-transform: uppercase;
  letter-spacing: 1px;
  font-size: 40px;
  transform: translateZ(25px);
  position: relative;
  color: #222;
}
body #wrap .innerwrap .cardwrap:nth-of-type(2) .card .inner h1 span {
  position: absolute;
  font-size: 12px;
  top: -30px;
  left: 0;
  padding: 5px;
  background: #222;
  color: #fff;
}
body #wrap .innerwrap .cardwrap:nth-of-type(2) .card .inner:before {
  content: "02";
  left: 25px;
  top: 25px;
  font-size: 75px;
  color: #bl;
  font-family: "Anton";
  position: absolute;
  transform: translateZ(1px);
}
body #wrap .innerwrap .cardwrap:nth-of-type(2) .card .inner:after {
  content: "";
  position: absolute;
  width: 100%;
  height: 75%;
  bottom: 0;
  left: 0;
  background: linear-gradient(to bottom, rgba(0, 0, 0, 0.00001), rgba(0, 0, 0, 0.1));
  transform-origin: bottom;
  transform-style: preserve-3d;
  z-index: -1;
  transform: skewX(-10deg) translateZ(-1px) scale(1);
  transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}
body #wrap .innerwrap .cardwrap:nth-of-type(2) .card .inner .text:before {
  content: "";
  position: absolute;
  width: 30px;
  height: 30px;
  border-radius: 100%;
  background: linear-gradient(45deg, rgba(255, 255, 255, 0.00001) calc(50% - 2px), #fff calc(50% - 2px), #fff calc(50% + 2px), rgba(255, 255, 255, 0.00001) calc(50% + 2px)), linear-gradient(-45deg, rgba(255, 255, 255, 0.00001) calc(50% - 2px), #fff calc(50% - 2px), #fff calc(50% + 2px), rgba(255, 255, 255, 0.00001) calc(50% + 2px)), #fc3359;
  z-index: 999;
  top: 10px;
  right: 10px;
  box-shadow: inset 0 0 0 5px #fc3359;
  transition: 0.2s ease-in-out;
}
body #wrap .innerwrap .cardwrap:nth-of-type(2) .card .inner .text, body #wrap .innerwrap .cardwrap:nth-of-type(2) .card .inner .link {
  box-sizing: border-box;
  position: absolute;
  width: 70%;
  height: 60%;
  left: 0;
  top: 0;
  background: #222;
  transition: 0.2s cubic-bezier(0.175, 0.885, 0.32, 1);
  transform: translateX(150%) rotateX(90deg);
  opacity: 0;
  transform-origin: bottom;
  color: #fff;
  padding: 25px;
  display: flex;
  align-items: center;
  text-transform: uppercase;
  overflow: hidden;
}
body #wrap .innerwrap .cardwrap:nth-of-type(2) .card .inner .text p, body #wrap .innerwrap .cardwrap:nth-of-type(2) .card .inner .link p {
  font-size: 12px;
  margin-top: 0;
  line-height: 1.5;
  position: relative;
  font-family: "Raleway";
  transition: 0.4s cubic-bezier(0.175, 0.885, 0.32, 1);
  transform: translateY(200px) skewY(20deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(2) .card .inner .link {
  transform-origin: top;
  height: calc(40% - 15px);
  top: calc(60% + 15px);
  background: #fff;
  color: #222;
  transform: translateX(150%) rotateX(-90deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(2) .card .inner .link p {
  transform: translateY(200px) skewY(-20deg);
}
body #wrap .innerwrap .cardwrap:last-of-type {
  opacity: 0;
}
body #wrap .innerwrap .cardwrap:nth-of-type(1n) .card .inner {
  background: #32cbfb;
}
body #wrap .innerwrap .cardwrap:nth-of-type(2n) .card .inner {
  background: #fc3359;
}
body #wrap .innerwrap .cardwrap:nth-of-type(3n) .card .inner {
  background: #fefb3a;
}
body #wrap .innerwrap .cardwrap:nth-of-type(3) {
  transform: rotate(135deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(3) .card {
  transform: rotate(-135deg);
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap .cardwrap:nth-of-type(3) .card .inner {
  position: absolute;
  width: 112.5%;
  height: 112.5%;
  left: -0.675%;
  top: -0.675%;
  background: #fc3359;
  transform-style: preserve-3d;
  transform-origin: bottom;
  transform: rotateX(-30deg) translateZ(-100px);
  transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  pointer-events: none;
  display: flex;
  padding: 25px 25px 40px 25px;
  box-sizing: border-box;
  align-items: flex-end;
  flex-wrap: wrap;
}
body #wrap .innerwrap .cardwrap:nth-of-type(3) .card .inner h1 {
  font-family: "Anton";
  text-transform: uppercase;
  letter-spacing: 1px;
  font-size: 40px;
  transform: translateZ(25px);
  position: relative;
  color: #222;
}
body #wrap .innerwrap .cardwrap:nth-of-type(3) .card .inner h1 span {
  position: absolute;
  font-size: 12px;
  top: -30px;
  left: 0;
  padding: 5px;
  background: #222;
  color: #fff;
}
body #wrap .innerwrap .cardwrap:nth-of-type(3) .card .inner:before {
  content: "03";
  left: 25px;
  top: 25px;
  font-size: 75px;
  color: #bl;
  font-family: "Anton";
  position: absolute;
  transform: translateZ(1px);
}
body #wrap .innerwrap .cardwrap:nth-of-type(3) .card .inner:after {
  content: "";
  position: absolute;
  width: 100%;
  height: 75%;
  bottom: 0;
  left: 0;
  background: linear-gradient(to bottom, rgba(0, 0, 0, 0.00001), rgba(0, 0, 0, 0.1));
  transform-origin: bottom;
  transform-style: preserve-3d;
  z-index: -1;
  transform: skewX(-10deg) translateZ(-1px) scale(1);
  transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}
body #wrap .innerwrap .cardwrap:nth-of-type(3) .card .inner .text:before {
  content: "";
  position: absolute;
  width: 30px;
  height: 30px;
  border-radius: 100%;
  background: linear-gradient(45deg, rgba(255, 255, 255, 0.00001) calc(50% - 2px), #fff calc(50% - 2px), #fff calc(50% + 2px), rgba(255, 255, 255, 0.00001) calc(50% + 2px)), linear-gradient(-45deg, rgba(255, 255, 255, 0.00001) calc(50% - 2px), #fff calc(50% - 2px), #fff calc(50% + 2px), rgba(255, 255, 255, 0.00001) calc(50% + 2px)), #fc3359;
  z-index: 999;
  top: 10px;
  right: 10px;
  box-shadow: inset 0 0 0 5px #fc3359;
  transition: 0.2s ease-in-out;
}
body #wrap .innerwrap .cardwrap:nth-of-type(3) .card .inner .text, body #wrap .innerwrap .cardwrap:nth-of-type(3) .card .inner .link {
  box-sizing: border-box;
  position: absolute;
  width: 70%;
  height: 60%;
  left: 0;
  top: 0;
  background: #222;
  transition: 0.2s cubic-bezier(0.175, 0.885, 0.32, 1);
  transform: translateX(150%) rotateX(90deg);
  opacity: 0;
  transform-origin: bottom;
  color: #fff;
  padding: 25px;
  display: flex;
  align-items: center;
  text-transform: uppercase;
  overflow: hidden;
}
body #wrap .innerwrap .cardwrap:nth-of-type(3) .card .inner .text p, body #wrap .innerwrap .cardwrap:nth-of-type(3) .card .inner .link p {
  font-size: 12px;
  margin-top: 0;
  line-height: 1.5;
  position: relative;
  font-family: "Raleway";
  transition: 0.4s cubic-bezier(0.175, 0.885, 0.32, 1);
  transform: translateY(200px) skewY(20deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(3) .card .inner .link {
  transform-origin: top;
  height: calc(40% - 15px);
  top: calc(60% + 15px);
  background: #fff;
  color: #222;
  transform: translateX(150%) rotateX(-90deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(3) .card .inner .link p {
  transform: translateY(200px) skewY(-20deg);
}
body #wrap .innerwrap .cardwrap:last-of-type {
  opacity: 0;
}
body #wrap .innerwrap .cardwrap:nth-of-type(1n) .card .inner {
  background: #32cbfb;
}
body #wrap .innerwrap .cardwrap:nth-of-type(2n) .card .inner {
  background: #fc3359;
}
body #wrap .innerwrap .cardwrap:nth-of-type(3n) .card .inner {
  background: #fefb3a;
}
body #wrap .innerwrap .cardwrap:nth-of-type(4) {
  transform: rotate(180deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(4) .card {
  transform: rotate(-180deg);
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap .cardwrap:nth-of-type(4) .card .inner {
  position: absolute;
  width: 112.5%;
  height: 112.5%;
  left: -0.675%;
  top: -0.675%;
  background: #fc3359;
  transform-style: preserve-3d;
  transform-origin: bottom;
  transform: rotateX(-30deg) translateZ(-100px);
  transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  pointer-events: none;
  display: flex;
  padding: 25px 25px 40px 25px;
  box-sizing: border-box;
  align-items: flex-end;
  flex-wrap: wrap;
}
body #wrap .innerwrap .cardwrap:nth-of-type(4) .card .inner h1 {
  font-family: "Anton";
  text-transform: uppercase;
  letter-spacing: 1px;
  font-size: 40px;
  transform: translateZ(25px);
  position: relative;
  color: #222;
}
body #wrap .innerwrap .cardwrap:nth-of-type(4) .card .inner h1 span {
  position: absolute;
  font-size: 12px;
  top: -30px;
  left: 0;
  padding: 5px;
  background: #222;
  color: #fff;
}
body #wrap .innerwrap .cardwrap:nth-of-type(4) .card .inner:before {
  content: "04";
  left: 25px;
  top: 25px;
  font-size: 75px;
  color: #bl;
  font-family: "Anton";
  position: absolute;
  transform: translateZ(1px);
}
body #wrap .innerwrap .cardwrap:nth-of-type(4) .card .inner:after {
  content: "";
  position: absolute;
  width: 100%;
  height: 75%;
  bottom: 0;
  left: 0;
  background: linear-gradient(to bottom, rgba(0, 0, 0, 0.00001), rgba(0, 0, 0, 0.1));
  transform-origin: bottom;
  transform-style: preserve-3d;
  z-index: -1;
  transform: skewX(-10deg) translateZ(-1px) scale(1);
  transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}
body #wrap .innerwrap .cardwrap:nth-of-type(4) .card .inner .text:before {
  content: "";
  position: absolute;
  width: 30px;
  height: 30px;
  border-radius: 100%;
  background: linear-gradient(45deg, rgba(255, 255, 255, 0.00001) calc(50% - 2px), #fff calc(50% - 2px), #fff calc(50% + 2px), rgba(255, 255, 255, 0.00001) calc(50% + 2px)), linear-gradient(-45deg, rgba(255, 255, 255, 0.00001) calc(50% - 2px), #fff calc(50% - 2px), #fff calc(50% + 2px), rgba(255, 255, 255, 0.00001) calc(50% + 2px)), #fc3359;
  z-index: 999;
  top: 10px;
  right: 10px;
  box-shadow: inset 0 0 0 5px #fc3359;
  transition: 0.2s ease-in-out;
}
body #wrap .innerwrap .cardwrap:nth-of-type(4) .card .inner .text, body #wrap .innerwrap .cardwrap:nth-of-type(4) .card .inner .link {
  box-sizing: border-box;
  position: absolute;
  width: 70%;
  height: 60%;
  left: 0;
  top: 0;
  background: #222;
  transition: 0.2s cubic-bezier(0.175, 0.885, 0.32, 1);
  transform: translateX(150%) rotateX(90deg);
  opacity: 0;
  transform-origin: bottom;
  color: #fff;
  padding: 25px;
  display: flex;
  align-items: center;
  text-transform: uppercase;
  overflow: hidden;
}
body #wrap .innerwrap .cardwrap:nth-of-type(4) .card .inner .text p, body #wrap .innerwrap .cardwrap:nth-of-type(4) .card .inner .link p {
  font-size: 12px;
  margin-top: 0;
  line-height: 1.5;
  position: relative;
  font-family: "Raleway";
  transition: 0.4s cubic-bezier(0.175, 0.885, 0.32, 1);
  transform: translateY(200px) skewY(20deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(4) .card .inner .link {
  transform-origin: top;
  height: calc(40% - 15px);
  top: calc(60% + 15px);
  background: #fff;
  color: #222;
  transform: translateX(150%) rotateX(-90deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(4) .card .inner .link p {
  transform: translateY(200px) skewY(-20deg);
}
body #wrap .innerwrap .cardwrap:last-of-type {
  opacity: 0;
}
body #wrap .innerwrap .cardwrap:nth-of-type(1n) .card .inner {
  background: #32cbfb;
}
body #wrap .innerwrap .cardwrap:nth-of-type(2n) .card .inner {
  background: #fc3359;
}
body #wrap .innerwrap .cardwrap:nth-of-type(3n) .card .inner {
  background: #fefb3a;
}
body #wrap .innerwrap .cardwrap:nth-of-type(5) {
  transform: rotate(225deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(5) .card {
  transform: rotate(-225deg);
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap .cardwrap:nth-of-type(5) .card .inner {
  position: absolute;
  width: 112.5%;
  height: 112.5%;
  left: -0.675%;
  top: -0.675%;
  background: #fc3359;
  transform-style: preserve-3d;
  transform-origin: bottom;
  transform: rotateX(-30deg) translateZ(-100px);
  transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  pointer-events: none;
  display: flex;
  padding: 25px 25px 40px 25px;
  box-sizing: border-box;
  align-items: flex-end;
  flex-wrap: wrap;
}
body #wrap .innerwrap .cardwrap:nth-of-type(5) .card .inner h1 {
  font-family: "Anton";
  text-transform: uppercase;
  letter-spacing: 1px;
  font-size: 40px;
  transform: translateZ(25px);
  position: relative;
  color: #222;
}
body #wrap .innerwrap .cardwrap:nth-of-type(5) .card .inner h1 span {
  position: absolute;
  font-size: 12px;
  top: -30px;
  left: 0;
  padding: 5px;
  background: #222;
  color: #fff;
}
body #wrap .innerwrap .cardwrap:nth-of-type(5) .card .inner:before {
  content: "05";
  left: 25px;
  top: 25px;
  font-size: 75px;
  color: #bl;
  font-family: "Anton";
  position: absolute;
  transform: translateZ(1px);
}
body #wrap .innerwrap .cardwrap:nth-of-type(5) .card .inner:after {
  content: "";
  position: absolute;
  width: 100%;
  height: 75%;
  bottom: 0;
  left: 0;
  background: linear-gradient(to bottom, rgba(0, 0, 0, 0.00001), rgba(0, 0, 0, 0.1));
  transform-origin: bottom;
  transform-style: preserve-3d;
  z-index: -1;
  transform: skewX(-10deg) translateZ(-1px) scale(1);
  transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}
body #wrap .innerwrap .cardwrap:nth-of-type(5) .card .inner .text:before {
  content: "";
  position: absolute;
  width: 30px;
  height: 30px;
  border-radius: 100%;
  background: linear-gradient(45deg, rgba(255, 255, 255, 0.00001) calc(50% - 2px), #fff calc(50% - 2px), #fff calc(50% + 2px), rgba(255, 255, 255, 0.00001) calc(50% + 2px)), linear-gradient(-45deg, rgba(255, 255, 255, 0.00001) calc(50% - 2px), #fff calc(50% - 2px), #fff calc(50% + 2px), rgba(255, 255, 255, 0.00001) calc(50% + 2px)), #fc3359;
  z-index: 999;
  top: 10px;
  right: 10px;
  box-shadow: inset 0 0 0 5px #fc3359;
  transition: 0.2s ease-in-out;
}
body #wrap .innerwrap .cardwrap:nth-of-type(5) .card .inner .text, body #wrap .innerwrap .cardwrap:nth-of-type(5) .card .inner .link {
  box-sizing: border-box;
  position: absolute;
  width: 70%;
  height: 60%;
  left: 0;
  top: 0;
  background: #222;
  transition: 0.2s cubic-bezier(0.175, 0.885, 0.32, 1);
  transform: translateX(150%) rotateX(90deg);
  opacity: 0;
  transform-origin: bottom;
  color: #fff;
  padding: 25px;
  display: flex;
  align-items: center;
  text-transform: uppercase;
  overflow: hidden;
}
body #wrap .innerwrap .cardwrap:nth-of-type(5) .card .inner .text p, body #wrap .innerwrap .cardwrap:nth-of-type(5) .card .inner .link p {
  font-size: 12px;
  margin-top: 0;
  line-height: 1.5;
  position: relative;
  font-family: "Raleway";
  transition: 0.4s cubic-bezier(0.175, 0.885, 0.32, 1);
  transform: translateY(200px) skewY(20deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(5) .card .inner .link {
  transform-origin: top;
  height: calc(40% - 15px);
  top: calc(60% + 15px);
  background: #fff;
  color: #222;
  transform: translateX(150%) rotateX(-90deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(5) .card .inner .link p {
  transform: translateY(200px) skewY(-20deg);
}
body #wrap .innerwrap .cardwrap:last-of-type {
  opacity: 0;
}
body #wrap .innerwrap .cardwrap:nth-of-type(1n) .card .inner {
  background: #32cbfb;
}
body #wrap .innerwrap .cardwrap:nth-of-type(2n) .card .inner {
  background: #fc3359;
}
body #wrap .innerwrap .cardwrap:nth-of-type(3n) .card .inner {
  background: #fefb3a;
}
body #wrap .innerwrap .cardwrap:nth-of-type(6) {
  transform: rotate(270deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(6) .card {
  transform: rotate(-270deg);
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap .cardwrap:nth-of-type(6) .card .inner {
  position: absolute;
  width: 112.5%;
  height: 112.5%;
  left: -0.675%;
  top: -0.675%;
  background: #fc3359;
  transform-style: preserve-3d;
  transform-origin: bottom;
  transform: rotateX(-30deg) translateZ(-100px);
  transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  pointer-events: none;
  display: flex;
  padding: 25px 25px 40px 25px;
  box-sizing: border-box;
  align-items: flex-end;
  flex-wrap: wrap;
}
body #wrap .innerwrap .cardwrap:nth-of-type(6) .card .inner h1 {
  font-family: "Anton";
  text-transform: uppercase;
  letter-spacing: 1px;
  font-size: 40px;
  transform: translateZ(25px);
  position: relative;
  color: #222;
}
body #wrap .innerwrap .cardwrap:nth-of-type(6) .card .inner h1 span {
  position: absolute;
  font-size: 12px;
  top: -30px;
  left: 0;
  padding: 5px;
  background: #222;
  color: #fff;
}
body #wrap .innerwrap .cardwrap:nth-of-type(6) .card .inner:before {
  content: "06";
  left: 25px;
  top: 25px;
  font-size: 75px;
  color: #bl;
  font-family: "Anton";
  position: absolute;
  transform: translateZ(1px);
}
body #wrap .innerwrap .cardwrap:nth-of-type(6) .card .inner:after {
  content: "";
  position: absolute;
  width: 100%;
  height: 75%;
  bottom: 0;
  left: 0;
  background: linear-gradient(to bottom, rgba(0, 0, 0, 0.00001), rgba(0, 0, 0, 0.1));
  transform-origin: bottom;
  transform-style: preserve-3d;
  z-index: -1;
  transform: skewX(-10deg) translateZ(-1px) scale(1);
  transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}
body #wrap .innerwrap .cardwrap:nth-of-type(6) .card .inner .text:before {
  content: "";
  position: absolute;
  width: 30px;
  height: 30px;
  border-radius: 100%;
  background: linear-gradient(45deg, rgba(255, 255, 255, 0.00001) calc(50% - 2px), #fff calc(50% - 2px), #fff calc(50% + 2px), rgba(255, 255, 255, 0.00001) calc(50% + 2px)), linear-gradient(-45deg, rgba(255, 255, 255, 0.00001) calc(50% - 2px), #fff calc(50% - 2px), #fff calc(50% + 2px), rgba(255, 255, 255, 0.00001) calc(50% + 2px)), #fc3359;
  z-index: 999;
  top: 10px;
  right: 10px;
  box-shadow: inset 0 0 0 5px #fc3359;
  transition: 0.2s ease-in-out;
}
body #wrap .innerwrap .cardwrap:nth-of-type(6) .card .inner .text, body #wrap .innerwrap .cardwrap:nth-of-type(6) .card .inner .link {
  box-sizing: border-box;
  position: absolute;
  width: 70%;
  height: 60%;
  left: 0;
  top: 0;
  background: #222;
  transition: 0.2s cubic-bezier(0.175, 0.885, 0.32, 1);
  transform: translateX(150%) rotateX(90deg);
  opacity: 0;
  transform-origin: bottom;
  color: #fff;
  padding: 25px;
  display: flex;
  align-items: center;
  text-transform: uppercase;
  overflow: hidden;
}
body #wrap .innerwrap .cardwrap:nth-of-type(6) .card .inner .text p, body #wrap .innerwrap .cardwrap:nth-of-type(6) .card .inner .link p {
  font-size: 12px;
  margin-top: 0;
  line-height: 1.5;
  position: relative;
  font-family: "Raleway";
  transition: 0.4s cubic-bezier(0.175, 0.885, 0.32, 1);
  transform: translateY(200px) skewY(20deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(6) .card .inner .link {
  transform-origin: top;
  height: calc(40% - 15px);
  top: calc(60% + 15px);
  background: #fff;
  color: #222;
  transform: translateX(150%) rotateX(-90deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(6) .card .inner .link p {
  transform: translateY(200px) skewY(-20deg);
}
body #wrap .innerwrap .cardwrap:last-of-type {
  opacity: 0;
}
body #wrap .innerwrap .cardwrap:nth-of-type(1n) .card .inner {
  background: #32cbfb;
}
body #wrap .innerwrap .cardwrap:nth-of-type(2n) .card .inner {
  background: #fc3359;
}
body #wrap .innerwrap .cardwrap:nth-of-type(3n) .card .inner {
  background: #fefb3a;
}
body #wrap .innerwrap .cardwrap:nth-of-type(7) {
  transform: rotate(315deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(7) .card {
  transform: rotate(-315deg);
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap .cardwrap:nth-of-type(7) .card .inner {
  position: absolute;
  width: 112.5%;
  height: 112.5%;
  left: -0.675%;
  top: -0.675%;
  background: #fc3359;
  transform-style: preserve-3d;
  transform-origin: bottom;
  transform: rotateX(-30deg) translateZ(-100px);
  transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  pointer-events: none;
  display: flex;
  padding: 25px 25px 40px 25px;
  box-sizing: border-box;
  align-items: flex-end;
  flex-wrap: wrap;
}
body #wrap .innerwrap .cardwrap:nth-of-type(7) .card .inner h1 {
  font-family: "Anton";
  text-transform: uppercase;
  letter-spacing: 1px;
  font-size: 40px;
  transform: translateZ(25px);
  position: relative;
  color: #222;
}
body #wrap .innerwrap .cardwrap:nth-of-type(7) .card .inner h1 span {
  position: absolute;
  font-size: 12px;
  top: -30px;
  left: 0;
  padding: 5px;
  background: #222;
  color: #fff;
}
body #wrap .innerwrap .cardwrap:nth-of-type(7) .card .inner:before {
  content: "07";
  left: 25px;
  top: 25px;
  font-size: 75px;
  color: #bl;
  font-family: "Anton";
  position: absolute;
  transform: translateZ(1px);
}
body #wrap .innerwrap .cardwrap:nth-of-type(7) .card .inner:after {
  content: "";
  position: absolute;
  width: 100%;
  height: 75%;
  bottom: 0;
  left: 0;
  background: linear-gradient(to bottom, rgba(0, 0, 0, 0.00001), rgba(0, 0, 0, 0.1));
  transform-origin: bottom;
  transform-style: preserve-3d;
  z-index: -1;
  transform: skewX(-10deg) translateZ(-1px) scale(1);
  transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}
body #wrap .innerwrap .cardwrap:nth-of-type(7) .card .inner .text:before {
  content: "";
  position: absolute;
  width: 30px;
  height: 30px;
  border-radius: 100%;
  background: linear-gradient(45deg, rgba(255, 255, 255, 0.00001) calc(50% - 2px), #fff calc(50% - 2px), #fff calc(50% + 2px), rgba(255, 255, 255, 0.00001) calc(50% + 2px)), linear-gradient(-45deg, rgba(255, 255, 255, 0.00001) calc(50% - 2px), #fff calc(50% - 2px), #fff calc(50% + 2px), rgba(255, 255, 255, 0.00001) calc(50% + 2px)), #fc3359;
  z-index: 999;
  top: 10px;
  right: 10px;
  box-shadow: inset 0 0 0 5px #fc3359;
  transition: 0.2s ease-in-out;
}
body #wrap .innerwrap .cardwrap:nth-of-type(7) .card .inner .text, body #wrap .innerwrap .cardwrap:nth-of-type(7) .card .inner .link {
  box-sizing: border-box;
  position: absolute;
  width: 70%;
  height: 60%;
  left: 0;
  top: 0;
  background: #222;
  transition: 0.2s cubic-bezier(0.175, 0.885, 0.32, 1);
  transform: translateX(150%) rotateX(90deg);
  opacity: 0;
  transform-origin: bottom;
  color: #fff;
  padding: 25px;
  display: flex;
  align-items: center;
  text-transform: uppercase;
  overflow: hidden;
}
body #wrap .innerwrap .cardwrap:nth-of-type(7) .card .inner .text p, body #wrap .innerwrap .cardwrap:nth-of-type(7) .card .inner .link p {
  font-size: 12px;
  margin-top: 0;
  line-height: 1.5;
  position: relative;
  font-family: "Raleway";
  transition: 0.4s cubic-bezier(0.175, 0.885, 0.32, 1);
  transform: translateY(200px) skewY(20deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(7) .card .inner .link {
  transform-origin: top;
  height: calc(40% - 15px);
  top: calc(60% + 15px);
  background: #fff;
  color: #222;
  transform: translateX(150%) rotateX(-90deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(7) .card .inner .link p {
  transform: translateY(200px) skewY(-20deg);
}
body #wrap .innerwrap .cardwrap:last-of-type {
  opacity: 0;
}
body #wrap .innerwrap .cardwrap:nth-of-type(1n) .card .inner {
  background: #32cbfb;
}
body #wrap .innerwrap .cardwrap:nth-of-type(2n) .card .inner {
  background: #fc3359;
}
body #wrap .innerwrap .cardwrap:nth-of-type(3n) .card .inner {
  background: #fefb3a;
}
body #wrap .innerwrap .cardwrap:nth-of-type(8) {
  transform: rotate(360deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(8) .card {
  transform: rotate(-360deg);
  transition: 0.7s cubic-bezier(1, 0, 0, 1);
}
body #wrap .innerwrap .cardwrap:nth-of-type(8) .card .inner {
  position: absolute;
  width: 112.5%;
  height: 112.5%;
  left: -0.675%;
  top: -0.675%;
  background: #fc3359;
  transform-style: preserve-3d;
  transform-origin: bottom;
  transform: rotateX(-30deg) translateZ(-100px);
  transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  pointer-events: none;
  display: flex;
  padding: 25px 25px 40px 25px;
  box-sizing: border-box;
  align-items: flex-end;
  flex-wrap: wrap;
}
body #wrap .innerwrap .cardwrap:nth-of-type(8) .card .inner h1 {
  font-family: "Anton";
  text-transform: uppercase;
  letter-spacing: 1px;
  font-size: 40px;
  transform: translateZ(25px);
  position: relative;
  color: #222;
}
body #wrap .innerwrap .cardwrap:nth-of-type(8) .card .inner h1 span {
  position: absolute;
  font-size: 12px;
  top: -30px;
  left: 0;
  padding: 5px;
  background: #222;
  color: #fff;
}
body #wrap .innerwrap .cardwrap:nth-of-type(8) .card .inner:before {
  content: "08";
  left: 25px;
  top: 25px;
  font-size: 75px;
  color: #bl;
  font-family: "Anton";
  position: absolute;
  transform: translateZ(1px);
}
body #wrap .innerwrap .cardwrap:nth-of-type(8) .card .inner:after {
  content: "";
  position: absolute;
  width: 100%;
  height: 75%;
  bottom: 0;
  left: 0;
  background: linear-gradient(to bottom, rgba(0, 0, 0, 0.00001), rgba(0, 0, 0, 0.1));
  transform-origin: bottom;
  transform-style: preserve-3d;
  z-index: -1;
  transform: skewX(-10deg) translateZ(-1px) scale(1);
  transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}
body #wrap .innerwrap .cardwrap:nth-of-type(8) .card .inner .text:before {
  content: "";
  position: absolute;
  width: 30px;
  height: 30px;
  border-radius: 100%;
  background: linear-gradient(45deg, rgba(255, 255, 255, 0.00001) calc(50% - 2px), #fff calc(50% - 2px), #fff calc(50% + 2px), rgba(255, 255, 255, 0.00001) calc(50% + 2px)), linear-gradient(-45deg, rgba(255, 255, 255, 0.00001) calc(50% - 2px), #fff calc(50% - 2px), #fff calc(50% + 2px), rgba(255, 255, 255, 0.00001) calc(50% + 2px)), #fc3359;
  z-index: 999;
  top: 10px;
  right: 10px;
  box-shadow: inset 0 0 0 5px #fc3359;
  transition: 0.2s ease-in-out;
}
body #wrap .innerwrap .cardwrap:nth-of-type(8) .card .inner .text, body #wrap .innerwrap .cardwrap:nth-of-type(8) .card .inner .link {
  box-sizing: border-box;
  position: absolute;
  width: 70%;
  height: 60%;
  left: 0;
  top: 0;
  background: #222;
  transition: 0.2s cubic-bezier(0.175, 0.885, 0.32, 1);
  transform: translateX(150%) rotateX(90deg);
  opacity: 0;
  transform-origin: bottom;
  color: #fff;
  padding: 25px;
  display: flex;
  align-items: center;
  text-transform: uppercase;
  overflow: hidden;
}
body #wrap .innerwrap .cardwrap:nth-of-type(8) .card .inner .text p, body #wrap .innerwrap .cardwrap:nth-of-type(8) .card .inner .link p {
  font-size: 12px;
  margin-top: 0;
  line-height: 1.5;
  position: relative;
  font-family: "Raleway";
  transition: 0.4s cubic-bezier(0.175, 0.885, 0.32, 1);
  transform: translateY(200px) skewY(20deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(8) .card .inner .link {
  transform-origin: top;
  height: calc(40% - 15px);
  top: calc(60% + 15px);
  background: #fff;
  color: #222;
  transform: translateX(150%) rotateX(-90deg);
}
body #wrap .innerwrap .cardwrap:nth-of-type(8) .card .inner .link p {
  transform: translateY(200px) skewY(-20deg);
}
body #wrap .innerwrap .cardwrap .card {
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  transform-style: preserve-3d;
}
</style>
<body>
<div id='wrap'>
  <input class='trigger' name='rad' type='radio'>
  <input class='trigger' name='rad' type='radio'>
  <input class='trigger' name='rad' type='radio'>
  <input class='trigger' name='rad' type='radio'>
  <input class='trigger' name='rad' type='radio'>
  <input class='trigger' name='rad' type='radio'>
  <input class='trigger' name='rad' type='radio'>
  <input checked='checked' class='trigger' name='rad' type='radio'>
  <div class='innerwrap'>
    <input type='checkbox'>
    <input type='checkbox'>
    <input type='checkbox'>
    <input type='checkbox'>
    <input type='checkbox'>
    <input type='checkbox'>
    <input type='checkbox'>
    <input type='checkbox'>
    <div class='cards'>
      <div class='cardwrap'>
        <div class='card'>
          <div class='inner'>
            <h1><span>Hey Now</span>Somebody</h1>
            <div class='text'>
              <p>Well the years start coming and they don't stop coming</p>
            </div>
            <div class='link'>
              <p>Fed to the rules and I hit the ground running</p>
            </div>
          </div>
        </div>
      </div>
      <div class='cardwrap'>
        <div class='card'>
          <div class='inner'>
            <h1><span>You're an All-Star</span>once told</h1>
            <div class='text'>
              <p>Didn't make sense not to live for fun</p>
            </div>
            <div class='link'>
              <p>Your brain gits smart but your head gits dumb</p>
            </div>
          </div>
        </div>
      </div>
      <div class='cardwrap'>
        <div class='card'>
          <div class='inner'>
            <h1><span>Get your game on</span>me the world</h1>
            <div class='text'>
              <p>So much to do, so much to see</p>
            </div>
            <div class='link'>
              <p>So what's wrong with taking the back streets?</p>
            </div>
          </div>
        </div>
      </div>
      <div class='cardwrap'>
        <div class='card'>
          <div class='inner'>
            <h1><span>go play</span>was gonna</h1>
            <div class='text'>
              <p>You'll never know if you don't go You'll never shine if you don't glow</p>
            </div>
            <div class='link'>
              <p>It's a cool place and they say it gits colder</p>
            </div>
          </div>
        </div>
      </div>
      <div class='cardwrap'>
        <div class='card'>
          <div class='inner'>
            <h1><span>Hey Now</span>roll me</h1>
            <div class='text'>
              <p>You're bundled up now, wait till you git older But the meteor men beg to differ</p>
            </div>
            <div class='link'>
              <p>Judging by the hole in the satellite picture</p>
            </div>
          </div>
        </div>
      </div>
      <div class='cardwrap'>
        <div class='card'>
          <div class='inner'>
            <h1><span>you're a rockstar</span>I ain't the</h1>
            <div class='text'>
              <p>The ice we skate is getting pretty thin</p>
            </div>
            <div class='link'>
              <p>The water's getting warm so you might as well swim</p>
            </div>
          </div>
        </div>
      </div>
      <div class='cardwrap'>
        <div class='card'>
          <div class='inner'>
            <h1><span>get the show on</span>sharpest tool</h1>
            <div class='text'>
              <p>My world's on fire, how about yours? That's the way I like it and I never get bored</p>
            </div>
            <div class='link'>
              <p>Somebody once asked could I spare some change for gas?</p>
            </div>
          </div>
        </div>
      </div>
      <div class='cardwrap'>
        <div class='card'>
          <div class='inner'>
            <h1><span>get paid</span>in the shed</h1>
            <div class='text'>
              <p>I need to get myself away from this place I said yep what a concept</p>
            </div>
            <div class='link'>
              <p>I could use a little fuel myself And we could all use a little change</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</body>

</html>