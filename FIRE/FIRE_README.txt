
###########
########this is a guide to analyzing your own sequences with FIRE
#######see https://tavazoielab.c2b2.columbia.edu/FIRE/tutorial.html
#######053018 JY
###########

####step1 ; get sequences you want to search through.
##download /create the appropriate fasta files. Make sure all fasta entries are not interleaved, but rather sequential.
##there is a script on the server called fasta_interleaved_to_sequential.sh to do this.
##make sure all the fasta entries are good; no 'Sequenceunknown' entries, ensembl biomart often does this.

####step2 ; format sequences.
##add following to path:
/avicenna/Johnny/bin/ncbi-blast-2.7.1+/bin
##use legacy blast to format the fasta file
perl /avicenna/Johnny/bin/ncbi-blast-2.7.1+/bin/legacy_blast.pl formatdb -i [yourfile.fa] -p F -o T

####step3 ; generate homologies file
##FIRE lives in /nvme/bins/FIRE-1.1 ; you will have to map that as your FIREDIR variable 
perl /nvme/bins/FIRE-1.1/TOOLS/detect_homologous_sequences.pl --fastafile=[yourfile.fa]



###############example scripts i ran for creating two different homology files
perl /avicenna/Johnny/bin/ncbi-blast-2.7.1+/bin/legacy_blast.pl formatdb -i filt_convtd_ensembl_biomart_3UTR.fa -p F -o T

perl /nvme/bins/FIRE-1.1/TOOLS/detect_homologous_sequences.pl --fastafile=filt_convtd_ensembl_biomart_3UTR.fa
###############
perl /avicenna/Johnny/bin/ncbi-blast-2.7.1+/bin/legacy_blast.pl formatdb -i filt_convtd_ensembl_biomart_2kb_upstreamgene.fa -p F -o T

perl /nvme/bins/FIRE-1.1/TOOLS/detect_homologous_sequences.pl --fastafile=filt_convtd_ensembl_biomart_2kb_upstreamgene.fa
###############




