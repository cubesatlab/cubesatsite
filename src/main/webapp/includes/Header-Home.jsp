<%-- 
    Document   : Header-Home.jsp
    Created on : Jul 27, 2015, 12:38:10 PM
    Author     : Vermont State University
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
  <title>CubeSat Laboratory</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
  <link href="http://fonts.googleapis.com/css?family=Oswald" rel="stylesheet" type="text/css"/>
  <link href="css/style.css" rel="stylesheet" type="text/css" media="screen"/>
  <script src="js/nav.js"></script> 
</head>
<a class="skipNav" href="#maincontent">Skip navigation</a>
<div id="header">
  <h2 class="siteTitle">
  Vermont State University<br/>
  CubeSat Laboratory</h2>
</div>
<!-- end #header -->
<div class="menu-wrap">
  <nav class="menu">
    <ul>
      <li><a class="current_page_item" href="index.jsp">Home</a></li>
      <li><a class="normal" href="CubedOS.jsp">CubedOS </a></li>
      
      <li class="tab">
        <a class="newdropdown" onmouseenter="mouseEnterBasicLEO()" onclick="toggle('BasicLEODropdown', 'drop1')">BasicLEO</a>
        <button class="navbar" aria-haspopup="true" aria-expanded="false" id="drop1" onclick="toggle('BasicLEODropdown', 'drop1')">&#9660;</button>
	<ul class="sub-menu" onmouseleave="mouseLeaveBasicLEO()" style="display: none" id="BasicLEODropdown">
          <li><a href="BasicLEO.jsp">Overview</a></li>
          <li><a href="BasicLEO-Hardware.jsp">Hardware</a></li>
          <li><a href="BasicLEO-Software.jsp">Software</a></li>
          <li><a href="BasicLEO-Pictures.jsp">Pictures</a></li>
          <li><a href="BasicLEO-Data.jsp">Data</a></li>
        </ul>
      </li>
      
      <li class="tab">
        <a class="newdropdown" onmouseenter="mouseEnterAlaskanIce()" onclick="toggle('AlaskanIceDropdown', 'drop2')">AlaskanIce</a>
	<button class="navbar" aria-haspopup="true" aria-expanded="false" id="drop2" onclick="toggle('AlaskanIceDropdown', 'drop2')">&#9660;</button>
	<ul class="sub-menu" onmouseleave="mouseLeaveAlaskanIce()" style="display: none" id="AlaskanIceDropdown">
	  <li><a href="AlaskanIce.jsp">Overview</a></li>
	  <li><a href="AlaskanIce-Hardware.jsp">Hardware</a></li>
	  <li><a href="AlaskanIce-Software.jsp">Software</a></li>
	</ul>
      </li>
      
      <li class="tab">
        <a class="newdropdown" onmouseenter="mouseEnterResources()" onclick="toggle('ResourcesDropdown', 'drop3')">Resources</a>
	<button class="navbar" aria-haspopup="true" aria-expanded="false" id="drop3" onclick="toggle('ResourcesDropdown', 'drop3')">&#9660;</button>
	<ul class="sub-menu" onmouseleave="mouseLeaveResources()" style="display: none" id="ResourcesDropdown">
	  <li><a href="/CubedOS/doc/CubedOS.pdf" target="_blank">Main Documentation</a></li>
	  <li><a href="/CubedOS/src/check/build/gnatdoc/index.html" target="_blank">CubedOS API</a></li>
	  <li><a href="/CubedOS/mercury/target/scala-3.4.2/api/index.html" target="_blank">Mercury API</a></li>
	</ul>
      </li>

    </ul>
  </nav>
</div>

