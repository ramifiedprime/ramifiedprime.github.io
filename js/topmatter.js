document.write('\
<!-- TOPMATTER -->\
<div id="topmatter">\
<table cols="3" id="topmatter"><tbody>\
  <tr valign="middle" halign="left"><td>\
  	<p><div id="mainmenu">\
   <ul id="mainmenulist">\
      <li><a href="index.html" id="index">Home</a></li>\
      <li><a href="Notes.html" id="Notes">Notes</a></li>\
      <li><a href="Misc.html" id="Misc">Useful Links</a></li>\
<!--  <li><a href="Research.html" id="Research">Research</a></li>\
      <li><a href="Teaching.html" id="Teaching">Teaching</a></li> -->\
   </ul>\
</div></p>\
  </td>\
  <td valign="middle" style="text-align:center">\
    <h1 id="topmatter">Ross Paterson</h1>\
    <div class="socialmediaicons">\
    <a href="https://github.com/ramifiedprime"><img src="img/GitHub-Mark-120px-plus.png" alt="github" style="width:40px;height:40px;"></a>\
    <a href="https://twitter.com/ramifiedprime"><img src="img/Twitter_Social_Icon_Circle_Color.png" alt="github" style="width:40px;height:40px;"></a>\
    </div>\
    <p> <img src="img/Slug.jpg" alt="non snail-mail" style="width:250px;height:30px;"> </p>\
	</td>\
  <td valign="top" halign="right">\
    <div style="text-align: right;"> </div>\
    <p style="text-align: right;">\
	<img\
	 title="Farey Diagram"\
	 src="img/Farey.png"\
	 width="200"\
   class="topmatterright">\
    </p>\
  </td></tr>\
</tbody></table>\
</div>\
<!-- End of TOPMATTER -->\
\
');


var url = window.location.pathname;
var filename = url.substring(url.lastIndexOf('/')+1);
var shortfilename = filename.slice(0,-5);
var element = document.getElementById(filename.slice(0,-5));
element.classList.add("active");