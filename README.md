# 华东理工大学博士学位论文LaTeX模板

* 本模板针对有一定LaTeX基础的同学，提供了华东理工大学博士学位论文写作模板，简要给出了图、表、算法等示例。
* 如果读者对LaTeX还不熟悉，建议以书籍《一份(不太)简短的LaTeX2e介绍》作为入门。

# 注意事项

* 根据学位修改 `ecust_thesis.cls`中 `\documentclass[twoside,master,openany]{ecust_thesis}` 的 `master` 或 `doctor`
* Linux 和 MacOS 需要手动安装 `fonts` 文件夹中的字体，Windows 系统可直接使用
* `学位论文扉页_提交要求_授权声明_作者声明`部分编辑`chapters/学位论文扉页_提交要求_授权声明_作者声明.doc`后导出为PDF替换`chapters/学位论文扉页_提交要求_授权声明_作者声明.pdf`文件

# 编译方法

推荐使用脚本编译：

```bash
sh build.sh
```

清理中间文件：

```bash
sh clean.sh
```

或手动编译：

```bash
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex
```
