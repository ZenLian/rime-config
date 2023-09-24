# Rime 输入法配置

## 配置文件位置


## 文件结构

```
.
├── README.md            # 说明

├── weasel.custom.yaml   # 小狼毫（Windows）界面配置

├── default.custom.yaml      # 默认配置（所有方案共用）
├── punctuation.custom.yaml  # 标点符号配置

├── pinyin_simp.dict.yaml    # 简体拼音词库
├── pinyin_simp.schema.yaml  # 简体拼音方案

├── double_pinyin_flypy.schema.yaml  # 小鹤双拼方案

├── wubi86_jidian.dict.yaml  # 五笔词库（极点版）
├── wubi86.schema.yaml       # 五笔方案
├── wubi_pinyin.schema.yaml  # 五笔拼音方案
├── wubi_trad.schema.yaml    # 五笔方案（简入繁出）

├── rime.lua  # lua 配置脚本
```

## 功能

- <code>Ctrl+`</code> 打开配置选项
- `,`/`.` 翻页
- `;`/`'` 选择第2、3个候选词