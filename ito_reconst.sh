#!/bin/bash
#伊藤他「震災復興にむけての 3 原則」のワードカウント
wget http://www3.grips.ac.jp/~t-ito/201108_ItoReconstruction.pdf
pdftotext 201108_ItoReconstruction.pdf itotxt
mecab itotxt|grep 名詞|cut -f1|LC_ALL=C sort -rf|LC_ALL=C uniq -c|sort -k1 -n -r > itotxt_wc.txt
rm 201108_ItoReconstruction.pdf itotxt
