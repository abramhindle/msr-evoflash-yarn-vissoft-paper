
The first notable change is from figure \ref{fig:graph1} which shows
the result of adding PL/TCL. PL/TCL is a extension to Posgresql which
allows the TCL programming language to be used in stored procedures.
The 2 dependencies that are were changed are highlighted, these were
between the System Controller and Util (where PL/TCL was stored).

The second change (figure \ref{fig:graph2}) depicts the reimplemention
of the ODBC driver by Insight. This change was highlighted because of
the new dependencies between LiPQ and Parser and DeveloperUtils where
were more than doubled.

The third change (figure \ref{fig:graph3}) is the addition of the
PL/PgSQL language. The addition of PL/PgSQL is a important change
because it crosscuts many of the the system. The added dependencies between Util and
System Control Manager was the most notable.

%Review
The fourth change (figure \ref{fig:graph4}) is the rewriting of
the \emph{Memory Management Process(mmgr)} submodule. This change also
included several bug fixes and removal of dead code. This change was
considered important due to a reduction of depdencies.

The fifth change (figure \ref{fig:graph5}) is the changes made to
postgresql due to the advice given by ``white hackers'' regarding
security holes in the interupt and issues with some of the critical
sections.  Instead of allowing the interrupt to happen anywhere, they
will be handled at well defined spots.

The sixth change (figure \ref{fig:graph6}) was a change to the Win32
signals code. This change made signal handling more portable via
abstractions for the kill and sigsetmask calls to support Win32
better. This change was important due to the cross cutting changes
that occurred and the new depedencies between various modules and
libPQ.
