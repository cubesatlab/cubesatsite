function toggle(a, b)
{
    var c = document.getElementById(a);
    "none" !== c.style.display ?
        (c.style.display="none", document.getElementById(b).setAttribute("aria-expanded","false")) :
        (c.style.display="inline-block", document.getElementById(b).setAttribute("aria-expanded","true"));
}

function mouseEnterBasicLEO()
{
    document.getElementById("BasicLEO").style.display="inline-block",
    document.getElementById("drop1").setAttribute("aria-expanded","true"),
    setTimeout(mouseLeaveBasicLEO,dropdownTimeout);
}

function mouseLeaveBasicLEO()
{
    document.getElementById("BasicLEO").style.display="none",
    document.getElementById("drop1").setAttribute("aria-expanded","false");
}

function mouseEnterAlaskanIce()
{
    document.getElementById("AlaskanIceDropdown").style.display="inline-block",
    document.getElementById("drop2").setAttribute("aria-expanded","true"),
    setTimeout(mouseLeaveAlaskanIce,dropdownTimeout);
}

function mouseLeaveAlaskanIce()
{
    document.getElementById("AlaskanIceDropdown").style.display="none",
    document.getElementById("drop2").setAttribute("aria-expanded","false");
}

var dropdownTimeout=6e3;
