##  this creates the documentation, needs: GAPDoc package, latex, pdflatex,
##  mkindex, dvips
##  
##  Call this with GAP.
##

LoadPackage( "GAPDoc" );

SetGapDocLaTeXOptions( "utf8" );

bib := ParseBibFiles( "doc/alexander.bib" );
WriteBibXMLextFile( "doc/alexanderBib.xml", bib );

list := [
         "../gap/alexander.gd",
         "../gap/alexander.gi",
         ];

MakeGAPDocDoc( "doc", "alexander", list, "alexander" );

GAPDocManualLab( "alexander" );

quit;
