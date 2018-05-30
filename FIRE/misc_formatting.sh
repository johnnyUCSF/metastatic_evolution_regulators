tr -d "\n\r" < ensembl_biomart_2kb_upstreamgene.fa > clean__ensembl_biomart_2kb_upstreamgene.fa
tr -d "\n\r" < ensembl_biomart_3UTR.fa > clean__ensembl_biomart_3UTR.fa              
sed 's/>/\n>/g' clean__ensembl_biomart_3UTR.fa > final__ensembl_biomart_3UTR.fa

head final__ensembl_biomart_3UTR.fa | grep -Eo '[0-9]+|[[:alpha:]]+'


sed 's/$>/\n>/g' ensembl_biomart_2kb_upstreamgene.fa > clean__ensembl_biomart_2kb_upstreamgene.fa

head ensembl_biomart_2kb_upstreamgene.fa | sed 's/^>/\n/g'


awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' < ensembl_biomart_2kb_upstreamgene.fa


awk '/Sequence unavailable/ {print NR $0}' convtd_ensembl_biomart_3UTR.fa
