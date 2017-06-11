//©Xara Ltd
if(typeof(loc)=="undefined"||loc==""){var loc="";if(document.body&&document.body.innerHTML){var tt=document.body.innerHTML;var ml=tt.match(/["']([^'"]*)links.js["']/i);if(ml && ml.length > 1) loc=ml[1];}}

var bd=0
document.write("<style type=\"text/css\">");
document.write("\n<!--\n");
document.write(".links_menu {z-index:999;border-color:#000000;border-style:solid;border-width:"+bd+"px 0px "+bd+"px 0px;background-color:#88f4a2;position:absolute;left:0px;top:0px;visibility:hidden;}");
document.write(".links_plain, a.links_plain:link, a.links_plain:visited{text-align:left;background-color:#88f4a2;color:#113a1b;text-decoration:none;border-color:#000000;border-style:solid;border-width:0px "+bd+"px 0px "+bd+"px;padding:2px 0px 2px 0px;cursor:hand;display:block;font-size:12pt;font-family:Arial, Helvetica, sans-serif;}");
document.write("a.links_plain:hover, a.links_plain:active{background-color:#0c7e4e;color:#fcf94b;text-decoration:none;border-color:#000000;border-style:solid;border-width:0px "+bd+"px 0px "+bd+"px;padding:2px 0px 2px 0px;cursor:hand;display:block;font-size:12pt;font-family:Arial, Helvetica, sans-serif;}");
document.write("a.links_l:link, a.links_l:visited{text-align:left;background:#88f4a2 url("+loc+"links_l.gif) no-repeat right;color:#113a1b;text-decoration:none;border-color:#000000;border-style:solid;border-width:0px "+bd+"px 0px "+bd+"px;padding:2px 0px 2px 0px;cursor:hand;display:block;font-size:12pt;font-family:Arial, Helvetica, sans-serif;}");
document.write("a.links_l:hover, a.links_l:active{background:#0c7e4e url("+loc+"links_l2.gif) no-repeat right;color: #fcf94b;text-decoration:none;border-color:#000000;border-style:solid;border-width:0px "+bd+"px 0px "+bd+"px;padding:2px 0px 2px 0px;cursor:hand;display:block;font-size:12pt;font-family:Arial, Helvetica, sans-serif;}");
document.write("\n-->\n");
document.write("</style>");

var fc=0xfcf94b;
var bc=0x0c7e4e;
if(typeof(frames)=="undefined"){var frames=0;}

startMainMenu("links_left.gif",42,42,2,0,0)
mainMenuItem("links_b1",".gif",42,116,loc+"../index.jsp","","Home",2,2,"links_plain");
mainMenuItem("links_b2",".gif",42,116,"javascript:;","","College",2,2,"links_plain");
mainMenuItem("links_b3",".gif",42,116,"javascript:;","","Admission",2,2,"links_plain");
mainMenuItem("links_b4",".gif",42,116,"javascript:;","","Acadamics",2,2,"links_plain");
mainMenuItem("links_b5",".gif",42,116,"javascript:;","","Facilities",2,2,"links_plain");
mainMenuItem("links_b6",".gif",42,116,"javascript:;","","Student Welfare",2,2,"links_plain");
endMainMenu("links_right.gif",42,42)

startSubmenu("links_b6","links_menu",213);
submenuItem("Scholarship",loc+"../stuwel.jsp","","links_plain");
submenuItem("Personality Development",loc+"../stuwel.jsp","","links_plain");
submenuItem("Awards",loc+"../stuwel.jsp","","links_plain");
submenuItem("Sports and Culturel Activities",loc+"../stuwel.jsp","","links_plain");
endSubmenu("links_b6");

startSubmenu("links_b5","links_menu",138);
submenuItem("Computer Lab",loc+"../facility.jsp","","links_plain");
submenuItem("Library",loc+"../facility.jsp","","links_plain");
submenuItem("Advance Campus",loc+"../facility.jsp","","links_plain");
submenuItem("Hostel",loc+"../facility.jsp","","links_plain");
endSubmenu("links_b5");

startSubmenu("links_b4","links_menu",153);
submenuItem("Faculty",loc+"../faculty.jsp","","links_plain");
submenuItem("Courses",loc+"../courses.jsp","","links_plain");
submenuItem("Syllabus",loc+"../syllabus.jsp","","links_plain");
submenuItem("Acadamic Calander",loc+"../calander.jsp","","links_plain");
endSubmenu("links_b4");

startSubmenu("links_b3_2","links_menu",50);
submenuItem("MCA",loc+"../admission.jsp","","links_plain");
submenuItem("MBA",loc+"../admission.jsp","","links_plain");
endSubmenu("links_b3_2");

startSubmenu("links_b3_1","links_menu",48);
submenuItem("BBA",loc+"../admission.jsp","","links_plain");
submenuItem("BCA",loc+"../admission.jsp","","links_plain");
submenuItem("BEd",loc+"../admission.jsp","","links_plain");
endSubmenu("links_b3_1");

startSubmenu("links_b3","links_menu",147);
mainMenuItem("links_b3_1","Graduation",0,0,"javascript:;","","",1,1,"links_l");
mainMenuItem("links_b3_2","Post Graduation",0,0,"javascript:;","","",1,1,"links_l");
endSubmenu("links_b3");

startSubmenu("links_b2","links_menu",131);
submenuItem("About College",loc+"../college.jsp","","links_plain");
submenuItem("Vision & Mission",loc+"../college.jsp","","links_plain");
submenuItem("Management",loc+"../college.jsp","","links_plain");
submenuItem("Infrastructure",loc+"../college.jsp","","links_plain");
submenuItem("Location",loc+"../college.jsp","","links_plain");
endSubmenu("links_b2");

loc="";
