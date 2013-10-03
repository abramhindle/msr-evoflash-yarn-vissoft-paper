dnl FOREACH LOOP
divert(`-1')
# foreach(x, (item_1, item_2, ..., item_n), stmt)
#   parenthesized list, simple version
define(`foreach', `pushdef(`$1')_foreach($@)popdef(`$1')')
define(`_arg1', `$1')
define(`_foreach', `ifelse(`$2', `()', `',
  `define(`$1', _arg1$2)$3`'$0(`$1', (shift$2), `$3')')')
divert`'dnl
dnl forloop
divert(`-1')
# forloop(var, from, to, stmt) - simple version
define(`forloop', `pushdef(`$1', `$2')_forloop($@)popdef(`$1')')
define(`_forloop',
       `$4`'ifelse($1, `$3', `', `define(`$1', incr($1))$0($@)')')
divert`'dnl
dnl
dnl
dnl
define(`_LIST_',`
<ul>
$1
</ul>
')dnl
dnl
define(`_li',`
<li>
	$1
</li>
')dnl
dnl
define(`_h3',`
<h3>$1</h3>
')dnl
dnl
define(`_h6',`
<h6>$1</h6>
')dnl
dnl
define(`_h7',`
<h7>$1</h7>
')dnl
dnl
define(`_hr_',`
<hr/>
')dnl
dnl
define(`_IMG_FRAME',`
<iframe width=_REC_WIDTH_ height=_REC_HEIGHT_ src="$1"></iframe>
')dnl
define(`_IMG_',`
<img src="$1"/>
')dnl
define(`_IMG_H_',`
<img height=_REC_HEIGHT_ src="$1"/>
')dnl
dnl
define(`_EMB_FRAME',`
<iframe width=_REC_WIDTH_ height=_REC_HEIGHT_ src="$1"/>
')dnl
define(`_EMBED_',`
<embed width=_REC_WIDTH_ height=_REC_HEIGHT_ src="$1"/>
')dnl
dnl
define(`_NL_',`
<br/>
')dnl
dnl
define(`_center_',`
<center>
$1
</center>
')dnl
define(`_div_',`
<div>
$1
</div>
')dnl
define(`_ALIGN_RIGHT',`
<div align="RIGHT">
$1
</div>
')dnl
define(`_TINY',`
<font size=1>
$1
</font>
')dnl
define(`_BIG',`
<font size=6>
$1
</font>
')dnl
define(`_small',`
<font size=2>
$1
</font>
')dnl
