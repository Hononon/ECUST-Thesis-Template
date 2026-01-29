#!/bin/bash
# LaTeX 编译中间文件清理脚本

echo "正在清理 LaTeX 中间文件..."

# 删除主目录下的中间文件
rm -f *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.synctex.gz *.fdb_latexmk *.fls *.xdv *.nav *.snm *.vrb *.bcf *.run.xml *.idx *.ilg *.ind

# 删除 chapters 目录下的中间文件
rm -f chapters/*.aux chapters/*.log chapters/*.synctex chapters/*.synctex.gz

# 删除 figures 目录下的中间文件（如果有的话）
rm -f figures/**/*.aux figures/**/*.log figures/**/*.synctex figures/**/*.synctex.gz

echo "清理完成！"
