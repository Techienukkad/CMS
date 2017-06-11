//©Xara Ltd
if(typeof(loc)=="undefined"||loc==""){var loc="";if(document.body&&document.body.innerHTML){var tt=document.body.innerHTML;var ml=tt.match(/["']([^'"]*)student_welfare.js["']/i);if(ml && ml.length > 1) loc=ml[1];}}

var bd=0
document.write("<style type=\"text/css\">");
document.write("\n<!--\n");
document.write(".student_welfare_menu {z-index:999;border-color:#ffffff;border-style:solid;border-width:"+bd+"px 0px "+bd+"px 0px;background-color:#7b7469;position:absolute;left:0px;top:0px;visibility:hidden;}");
document.write(".student_welfare_plain, a.student_welfare_plain:link, a.student_welfare_plain:visited{text-align:left;background-color:#7b7469;color:#ffffff;text-decoration:none;border-color:#ffffff;border-style:solid;border-width:0px "+bd+"px 0px "+bd+"px;padding:2px 0px 2px 0px;cursor:hand;display:block;font-size:10pt;font-family:Times New Roman, Times, serif;}");
document.write("a.student_welfare_plain:hover, a.student_welfare_plain:active{background-color:#3584a5;color:#90dae6;text-decoration:none;border-color:#ffffff;border-style:solid;border-width:0px "+bd+"px 0px "+bd+"px;padding:2px 0px 2px 0px;cursor:hand;display:block;font-size:10pt;font-family:Times New Roman, Times, serif;}");
document.write("\n-->\n");
document.write("</style>");

var fc=0x90dae6;
var bc=0x3584a5;
if(typeof(frames)=="undefined"){var frames=0;}

startMainMenu("student_welfare_left.gif",42,43,2,0,0)
mainMenuItem("student_welfare_b1",".gif",42,124,"javascript:;","","Home",2,2,"student_welfare_plain");
mainMenuItem("student_welfare_b2",".gif",42,124,"javascript:;","","About College",2,2,"student_welfare_plain");
mainMenuItem("student_welfare_b3",".gif",42,124,"javascript:;","","Admission",2,2,"student_welfare_plain");
mainMenuItem("student_welfare_b4",".gif",42,124,"javascript:;","","Facilities",2,2,"student_welfare_plain");
mainMenuItem("student_welfare_b5",".gif",42,124,"javascript:;","","Faculty",2,2,"student_welfare_plain");
mainMenuItem("student_welfare_b6",".gif",42,124,"javascript:;","","Student Welfare",2,2,"student_welfare_plain");
endMainMenu("student_welfare_right.gif",42,43)

startSubmenu("student_welfare_b2","student_welfare_menu",124);
submenuItem("History","javascript:;","","student_welfare_plain");
submenuItem("Mission","javascript:;","","student_welfare_plain");
submenuItem("Management","javascript:;","","student_welfare_plain");
endSubmenu("student_welfare_b2");

loc="";
