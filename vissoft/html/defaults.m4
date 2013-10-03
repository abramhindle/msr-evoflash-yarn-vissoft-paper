include(html.m4)dnl
define(`_comma_',```,''')
define(`_SLIDE_COUNT_',0)
define(`_CENTER_',`
<center>
$1
</center>
')dnl
dnl
define(`_HEAD_',
`<html>
<head>
  <meta http-equiv="Content-Type" content="text/html;
   charset=iso-8859-1">
  <meta name="Author" content="Abram Hindle">
  <title>_TITLE_ ifdef($1,`: $1')</title>

<style>
body`,'td`,'div           { font-family: Verdana`,'Geneva`,'Arial`,'Sans-serif; 
                    font-size: 40px; color: #000000; }
img               { align: center;}
</style>
<SCRIPT LANGUAGE="JavaScript" SRC="pres.js">

</head>
<body text="#000000"
  ifdef(`BACKGROUND_IMAGE',
        `background="BACKGROUND_IMAGE"')
  bgcolor="#FFFFFF" link="#3333ff"
vlink="#000099"
  alink="#ffffff">
')dnl
dnl
define(`_FOOT_',`
</body>
</html>
')dnl
dnl
define(`_GEN_TITLE_SLIDE',`
_HEAD_()
_center_($1) _NL_
					
_center_(_NAV())
_FOOT_()
')
dnl
dnl define(_SLIDE_TMP_1_,0)dnl
define(`_CONCAT',`$1$2')dnl
define(`_SLIDE_0',000)dnl
define(`_GEN_SLIDE', `
			_HEAD_($1)
					<table border=0 width=100%>
					<tr><td align=left>_small( _TITLE_: $1 )</td><td align=right> _NAV()</td></tr>
					</table>
		           	_hr_
				<center>
				<table width=80%>
				<tr>
				<td>
		           	$1 : _NL_
		           	$2
				</td>
				</tr>
				</table>
				</center>
			_hr_
			_small(_AUTHORS_)
            _FOOT_()
')dnl
define(`_NAV', `dnl
_TINY(
ifelse(_MAX_SLIDES_, _SLIDE_COUNT_,  , ` <a href="incr(_SLIDE_COUNT_).html">&gt;&gt;</a>')
forloop(`x', `1', _MAX_SLIDES_, `
ifelse(x, _SLIDE_COUNT_, `<font color=red>[x]</font>', `<a href="x.html">[x]</a>')
')
)')dnl
dnl
define(`_SLIDE', `dnl
	define(`_SLIDE_TMP_1_',`$1')dnl
	define(`_SLIDE_TMP_2_',`$2')dnl
	define(`_SLIDE_COUNT_',incr(_SLIDE_COUNT_))dnl
	define(`_SLIDE_TMP_NAME_',`_CONCAT(`_SLIDE_', _SLIDE_COUNT_)') dnl
	define(_SLIDE_TMP_NAME_, _GEN_SLIDE(`_SLIDE_TMP_1_', `_SLIDE_TMP_2_' )) dnl
	undefine(`_SLIDE_TMP_1_')dnl
	undefine(`_SLIDE_TMP_2_')dnl
    syscmd(_CONCAT(``echo "include(slides.m4) _SLIDE_'', `_SLIDE_COUNT_ " > _SLIDE_COUNT_.html.m4')) dnl
	dnl ``echo "include(slides.m4) $'`{_SLIDE_COUNT_} '' dnl, _SLIDE_TMP_NAME_), ` > _SLIDE_COUNT_.html.m4'))
')
dnl COPY AND PASTE JOB
define(`_TITLE_SLIDE',`dnl
	define(`_SLIDE_TMP_1_',`$1')dnl
	define(`_SLIDE_TMP_2_',`$2')dnl
	define(`_SLIDE_COUNT_',incr(_SLIDE_COUNT_))dnl
	define(`_SLIDE_TMP_NAME_',`_CONCAT(`_SLIDE_',_SLIDE_COUNT_)')dnl
	define(_SLIDE_TMP_NAME_, _GEN_TITLE_SLIDE(`_SLIDE_TMP_1_' , `_SLIDE_TMP_2_' ))dnl
	undefine(`_SLIDE_TMP_1_')dnl
	undefine(`_SLIDE_TMP_2_')dnl
    syscmd(_CONCAT(``echo "include(slides.m4) _SLIDE_'', `_SLIDE_COUNT_ " > _SLIDE_COUNT_.html.m4'))dnl
')
dnl define(`_SLIDE', _FSLIDE( $1 , $2 ) ) dnl _FSLIDE( $1 , $2 ))
dnl define(`_TITLE_SLIDE',_FSLIDE($1,$2,1))
dnl define(`_TITLE_SLIDE',_GEN_NORMAL_SLIDE($1,$2,`_GEN_TITLE_SLIDE'))
dnl ')
dnl undefine(`_SLIDE_TMP_1_')
dnl undefine(`_SLIDE_TMP_2_')
dnl _SLIDE:_SLIDE_COUNT_
dnl )dnl
dnl dnl
dnl dnl
