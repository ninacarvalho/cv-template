$out_dir = 'build';

$pdflatex = 'xelatex -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=build';

$pdf_mode = 1;

$latexmk_postprocessing = sub {
    my $pdf = 'build/resume.pdf';
    my $link = 'resume.pdf';
    if (-e $pdf) {
        unlink $link if -l $link or -e $link;
        symlink $pdf, $link or warn "Could not create symlink: $!";
    }
};
