ensure_path('TEXINPUTS','./figs//');

# Always treat bbl files as regeneratable (can be cleaned up).
$bibtex_use = 2;

# Used to generate pdf_tex files from pdf via inkscape
add_cus_dep('svg','pdf_tex',0,'svg2pdf');
sub svg2pdf {
    system("echo $_[0]; inkscape -D -z --file=$_[0].svg --export-pdf=$_[0].pdf --export-latex");
}

push @generated_exts, 'pdf_tex', 'nav', 'run.xml', 'snm';

