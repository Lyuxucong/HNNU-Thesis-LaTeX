# 河南师范大学研究生学位论文 LaTeX 模板

> Henan Normal University Graduate Thesis LaTeX Template（非官方项目）

本项目提供河南师范大学研究生学位论文的 LaTeX 排版示例，包含中文封面、英文扉页、中英文摘要、目录、章节、参考文献，以及**盲审版 / 最终版**的切换设置。

模板原文件注明参考《河南师范大学研究生学位论文格式要求（2026年更新）》制作，适用于硕士及博士论文。**本项目并非学校官方发布或认证的模板**。提交前请务必以研究生院、学院及当年最新要求为准。

## 主要功能

- `science`（理工）与 `humanities`（人文社科）文档选项。
- 中英文论文信息、中文封面与英文扉页。
- 中文摘要、英文摘要、目录及章节排版。
- 使用 `gbt7714` 和 `gbt7714-numerical` 处理参考文献（BibTeX 工作流）。
- 中英文图表标题命令（具体以 `hnnuthesis.cls` 定义为准）。
- 盲审版可隐藏中英文作者姓名、中英文导师姓名和学号，并省略参考文献之后的致谢、发表论文目录和声明。

## 项目结构

```text
.
├── main.tex                 # 主文件：论文信息、章节、版本开关
├── hnnuthesis.cls           # 核心排版类文件
├── references.bib           # BibTeX 参考文献数据库
├── hnnu-calligraphy.png     # 封面书法校名图片（公开前核对使用权限）
├── chapters/
│   ├── 01.tex
│   ├── 02.tex
│   └── 03.tex
├── README.md
├── .gitignore
└── RELEASE_CHECKLIST.md
```



## 快速开始

### Overleaf

1. 下载本仓库 ZIP，在 Overleaf 创建项目并上传 ZIP。
2. 将主文件设为 `main.tex`。
3. 将编译器设为 **XeLaTeX**。
4. 按需修改 `main.tex` 中的 `\hnnusetup{...}`，填写论文题目、专业、导师等信息。
5. 检查章节文件是否齐全，编译并检查生成的 PDF。

### 本地 TeX Live

建议安装包含 `ctex`、`xeCJK`、`fontspec`、`tikz`、`caption`、`gbt7714`、`natbib` 等依赖的完整 TeX Live 环境。

```bash
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex
```

本项目按上传文件中的 BibTeX 设置编写上述命令；如果后续改用 `biblatex`，应相应修改文献处理流程。

模板当前指定了 Fandol 字体文件。若编译提示字体不存在，请检查 TeX 发行版和字体安装情况；不要随意上传商业字体文件。

## 论文信息设置

在 `main.tex` 的 `\hnnusetup{...}` 中修改：

```latex
\hnnusetup{
  title={示例论文题目},
  englishtitle={EXAMPLE THESIS TITLE},
  author={张三},
  studentid={示例学号},
  major={示例专业},
  direction={示例研究方向},
  supervisor={李四教授},
  englishauthor={Zhang San},
  englishsupervisor={Prof. Li Si}
}
```

上面只是字段示意，**请保留实际主文件中其他必需字段**。

长标题可以使用主文件已有的 `\HNNUtitlebreak` 标记指定封面换行位置，页眉使用连续标题。

## 盲审版与最终版

主文件中已有：

```latex
\newif\ifblindreview
%\blindreviewtrue
```

- **盲审版**：取消 `\blindreviewtrue` 前的 `%`。
- **最终版**：保持 `\blindreviewtrue` 被注释。

盲审版隐藏通过模板变量输出的中英文作者、导师和学号，并跳过参考文献之后的致谢、发表论文目录、声明等内容；最终版恢复这些内容。

**匿名审查不等于自动彻底脱敏。** 发布或送审前还须检查正文、致谢、图片、PDF 元数据、文件名、Git 历史及参考文献中是否有可识别身份的信息。学校如有专用盲审封面，以学校要求为准。

## 章节与参考文献

正文通过以下形式引入章节：

```latex
\include{chapters/01}
```

参考文献数据库为 `references.bib`，主文件调用：

```latex
\bibliography{references}
```

修改引用后，通常需要运行 BibTeX，并再次运行 XeLaTeX 以更新文献、目录和交叉引用。

## 图表双语标题

模板包含 `\bicaption{中文图题}{English caption}` 和 `\bitablecaption{中文表题}{English caption}` 命令。请在对应的 `figure`、`table` 环境中使用，并根据学校要求核对实际排版效果。

## 常见问题

**出现 `File chapters/04.tex not found`：** 补齐章节文件，或删除主文件中对应的 `\include`。

**出现字体错误：** 使用 XeLaTeX，检查 Fandol 字体是否可用。

**参考文献为空或出现问号：** 检查 `references.bib`、引用键和 BibTeX 编译步骤。

**切换盲审版后目录仍显示致谢：** 清理辅助文件并完整重新编译。

**封面图片缺失：** 确认 `hnnu-calligraphy.png` 位于主目录。

## 贡献与反馈

欢迎通过 GitHub Issues 报告编译错误、格式偏差或提出改进建议。提交问题时，请附上 TeX Live / Overleaf 环境、编译器、最小复现代码及必要日志，**不要上传真实个人信息或未公开论文内容**。

