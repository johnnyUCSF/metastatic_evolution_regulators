#!/bin/bash
#####this is old

makeblastdb -dbtype nucl -in /avicenna/Johnny/scRNAseq/metastatic_evolution/FIRE_annotations/ensembl_direct_download_noconversion/filt_convtd_ensembl_biomart_2kb_upstreamgene.fa;

makeblastdb -dbtype nucl -in /avicenna/Johnny/scRNAseq/metastatic_evolution/FIRE_annotations/ensembl_direct_download_noconversion/filt_convtd_ensembl_biomart_3UTR.fa;
