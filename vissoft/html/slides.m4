dnl
dnl TODO:
dnl    * generate a TOC (top bar)
dnl    * Test on the laptop
dnl    * Too much text
dnl    * CSS
define(`_TITLE_',`YARN: Animating Software Evolution')dnl
define(`_AUTHORS_',```Abram Hindle,  Zhen Ming Jiang, Walid Koleilat, Michael W. Godfrey, Richard C. Holt''')dnl
define(`_LOCATION_',```University of Waterloo and University of Victoria''')dnl
define(`_EMAILS_',```ahindle@cs.uwaterloo.ca,$1 zmjiang@ece.uvic.ca,$1 {wkoleila,migod,holt}@cs.uwaterloo.ca''')dnl
define(`_REC_WIDTH_',800)dnl
define(`_REC_HEIGHT_',500)dnl
define(`_MAX_SLIDES_',17)dnl
include(defaults.m4)dnl
dnl
_TITLE_SLIDE(`
	<b>_BIG(_TITLE_())</b> _NL_()
	_NL_()
	_AUTHORS_ _NL_()
	_LOCATION_ _NL_()
	_EMAILS_(_NL_())
	_center_(
		<table>	
			<tr>
				<td> <iframe width=180 height=200 src="postgresql.default.swf"></iframe> </td>
				<td> <iframe width=180 height=200 src="postgresql.everything_colorful_decay.swf"></iframe></td>
				<td> <iframe width=180 height=200 src="postgresql.important.swf"></iframe></td>
				<td> <iframe width=180 height=200 src="postgresql.important_decay.swf"></iframe></td>
			</tr>
		</table>)
	
')dnl
_SLIDE(Introduction,
	_center_(
		_EMBED_(yarn.plain.svg)
	)
)
_SLIDE(Architectural Coupling,
	_center_(
		_EMBED_(yarn.coupling.plain.svg)
	)
)
_SLIDE(Introduction,
	_center_(
		_EMBED_(yarn.evo.plain.svg)
	)
)


dnl _SLIDE(Introduction,
dnl 	_LIST_(
dnl 		_li(Deal with large amounts of data)
dnl 		_li(Hard to traverse textually)
dnl 		_li(Architectural Change hard to grasp)
dnl 		_li(Architectural Snapshots based on a baseline architecture)
dnl 		_li(Animate Snapshots)
dnl 		_li(Release Time is the end and start of an iteration.)
dnl 	)
dnl )dnl
dnl _SLIDE(Introduction,
dnl 	_LIST_(
dnl 		_li(`Proposal
dnl 			_LIST_(
dnl 				_li(Animate the architectural change (coupling))
dnl 				_li(Start with Baseline Architecture)
dnl 				_li(Modules in fixed positions)
dnl 				_li(Show coupling change per revision)
dnl 			)
dnl 		')
dnl 		_li(Animated Boxes and Arrows Architectural Diagram)
dnl 	)
dnl )dnl
dnl _SLIDE(Motivation,
dnl 	_LIST_(
dnl 		_li(We had lots of data)
dnl 		_li(We could select important changes)
dnl 		_li(We didn&apos;t know what the history looked like)
dnl 		_li(We didn&apos;t know what the cumulative coupling looked like)
dnl 	)
dnl )dnl
_SLIDE(Implementation,
	_center_(
		_IMG_FRAME(YARNApproach.png)
	)
)dnl
dnl
_SLIDE(YARN Screenshot,
		_center_(
				_IMG_(evoflash.small.png)
		)
)
dnl
_SLIDE(Example,
	_center_(
		_IMG_FRAME(postgresql.default.swf)
	)
)dnl
dnl _SLIDE(C-REX,
dnl 	_LIST_(
dnl 		_li(Evolutionary source code extractor)
dnl 		_li(Uses ctags for tokens)
dnl 		_li(Generate Transactions associated with symbols)
dnl 		_li(Generate a Symbol Table)
dnl 	)
dnl )dnl
dnl _SLIDE(HistODiff,
dnl 	_LIST_(
dnl 		_li(Reconcile the symbol table to files)
dnl 		_li(Reconcile files to modules via a mapping (not necessarily
dnl directories!))
dnl 		_li(Lift dependencies between files to the module level)
dnl 		_li(Filters revisions that architecturally relevant)
dnl 	)
dnl )dnl
dnl _SLIDE(HistODiff,
dnl 	_LIST_(
dnl 		_li(Importance
dnl 			_LIST_(
dnl 				_li(connected)
dnl 				_li(unconnected)
dnl 				_li(double dependencies)
dnl 				_li(halve dependencies)
dnl 			)
dnl 		)
dnl 	)
dnl )dnl
dnl _SLIDE(YARN,
dnl 	_LIST_(
dnl 		_li(Animates the graph output of HistODiff)
dnl 		_li(Static Layout)
dnl 		_li(Animates coupling over time)
dnl 		_li(Cumulative edge growth)
dnl 	)
dnl )dnl
_SLIDE(PostgreSQL Case Study: Architecture,
		_center_(
				_IMG_FRAME(architecture.png)
		)
)
_SLIDE(YARN Demo: Color Change on Modification,
	_center_(
		_IMG_FRAME(postgresql.default.swf)
	)
)
_SLIDE(YARN Demo: Color Change on Modification (Decay),
	_center_(
		_IMG_FRAME(postgresql.everything_colorful_decay.swf)
	)
)
_SLIDE(YARN Demo: Highlight Important Changes,
	_center_(
		_IMG_FRAME(postgresql.important.swf)
	)
)
_SLIDE(YARN Demo: Highlight Important Changes and Decay,
	_center_(
		_IMG_FRAME(postgresql.important_decay.swf)
	)
)
_SLIDE(Results,
	_LIST_(
		_li(Highlight and Decay most popular scheme)
		_li(Users were not surprised by what they saw)
		_li(Changes in coupling were visible)
		_li(Some color schemes were confusing)
	)
)
_SLIDE(Future Work,
	_LIST_(
		_li(Better interface for generating YARN balls)
		_li(Other relational metrics)
		_li(Movable Nodes)
		_li(Hiearchical Navigation)
		_li(Better interoperability with revision browsers)
		_li(More Edge Strategies)
	)
)
_SLIDE(Summary,
	_LIST_(
		_li(YARN Balls are animations of architectural change)
		_li(Case Study of PostgreSQL)
		_li(Informal User Survey)
	)
)
_SLIDE(Questions?,
		_center_(
		<table>
			<tr>
				<td> <iframe width=300 height=200 src="postgresql.default.swf"></iframe> </td>
				<td> <iframe width=300 height=200 src="postgresql.everything_colorful_decay.swf"></iframe></td>
			</tr>
			<tr>
				<td> <iframe width=300 height=200 src="postgresql.important.swf"></iframe></td>
				<td> <iframe width=300 height=200 src="postgresql.important_decay.swf"></iframe></td>
			</tr>
		</table>)
)
_SLIDE(Evolution,
	_center_(
		_IMG_FRAME(evolution.swf)
	)
)
