/*
 * Document   : nav.js
 * Created on : Nov 12, 2019, 1:35:33 PM
 * Author     : Vermont Technical College
 * 
 * Note: This is the uncompressed copy of nav.js.
 * (The compression was silly (my opinion), so I reformatted nav.js. Why have both? --pchapin)
 */
var dropdownTimeout = 6000; //ms

function toggle(id, id2)
{
  var n = document.getElementById(id);
  if (n.style.display !== 'none') {
    n.style.display = 'none';
    document.getElementById(id2).setAttribute('aria-expanded', 'false');
  }
  else {
    n.style.display = 'inline-block';
    document.getElementById(id2).setAttribute('aria-expanded', 'true');
  }
}

function mouseEnterBasicLEO()
{
  document.getElementById("BasicLEO").style.display = 'inline-block';
  document.getElementById("drop1").setAttribute('aria-expanded', 'true');
  setTimeout(mouseLeaveBasicLEO, dropdownTimeout);
}

function mouseLeaveBasicLEO()
{
  document.getElementById("BasicLEO").style.display = 'none';
  document.getElementById("drop1").setAttribute('aria-expanded', 'false');
}

function mouseEnterAlaskanIce()
{
  document.getElementById("AlaskanIceDropdown").style.display = 'inline-block';
  document.getElementById("drop2").setAttribute('aria-expanded', 'true');
  setTimeout(mouseLeaveAlaskanIce, dropdownTimeout);
}

function mouseLeaveAlaskanIce()
{
  document.getElementById("AlaskanIceDropdown").style.display = 'none';
  document.getElementById("drop2").setAttribute('aria-expanded', 'false');
}
