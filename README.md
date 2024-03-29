# (Neo)vim 配置

![](https://raw.githubusercontent.com/evanadams413/PicBed/master/img/20231230230859.png)

## 要求

本配置依赖如下环境:

- neovim 版本=0.9.4

> 建议：在[此处](https://github.com/neovim/neovim/releases)手动下载可执行文件。

- gcc, cmake, find(fd), ripgrep(rg), npm, yarn, git

> - Linux 发行版可以使用其默认的包管理器安装
> - MacOS 需要[手动安装](https://github.com/neovim/neovim/releases)或 [Homebrew](https://brew.sh/) 包管理器安装

## 安装

1. 执行安装脚本

```
curl https://raw.githubusercontent.com/evanadams413/nvimdots/main/install.sh | sh
```

> 此脚本仅适合 Linux 系统和 MacOS 系统用户使用，Windows 用户请手动拉取项目并改名为 nvim 放在 %AppData%\ 目录下。

2. 启动 nvim 时会自动安装插件，根据网络条件的不同，可能需要多次执行 `:Lazy install` 命令，直到所有插件下载完成
3. 通过LspInstallInfo命令安装对应lsp svr, 接着选中对应语言的server，如cpp为clangd，按i执行安装

## 常用快捷键说明

> 注意：随着个人使用习惯的改变，快捷键可能会有所更改。 快捷键定义位置说明：
>   1. 常用快捷键在 `keymaps.lua` 文件下定义
>   2. 和插件特定的快捷键一部分放在`keymaps.lua`文件，大部分放在该插件配置文件处。
>
> 可通过 `:Telescope keymaps` 调出快捷键查询窗口

个人 `leader` 键位设置为空格(`<space>`)

### 1. 文件目录(neotree)

| 快捷键      | 功能                  |
|-------------|-----------------------|
| \<leader\>e   | 打开目录树            |
| l           | 打开文件/打开文件目录 |
| \<LeftMouse\> | 打开文件/打开文件目录 |
| L           | 以`Tab`形式打开文件   |
| d           | 删除文件/删除文件目录 |
| r           | 更改文件/文件目录名称 |
| y           | 复制至剪切板          |
| x           | 剪切至剪切板          |
| y           | 从剪切板粘贴          |
| a           | 创建文件              |
| A           | 创建文件夹            |
| s           | 以垂直分屏打开文件    |
| S           | 以水平分屏打开文件    |
| H           | 显示隐藏文件夹        |
| ?           | 查看帮助文档          |
| \<ESC>      | 关闭目录树            |

更多快捷键见帮助文档或`neotree`项目wiki。

### 2. 光标移动

| 快捷键        | 功能           |
|---------------|----------------|
| H(n/v)        | 移动到行首     |
| L(n/v)        | 移动到行尾     |
| J(normal)     | 向下移动5行    |
| K(normal)     | 向上移动5行    |
| J(visual)     | 向下移动当前行 |
| K(visual)     | 向上移动当前行 |
| 1/%(n/v)      | 跳转到匹配符号 |
| >/<(visual)   | 缩进代码       |
| \<leader\>s    | 查找字符       |
| \<leader\>d    | 跳转代码块     |
| \<C-n\>/\<C-p\> | 多光标         |

### 3. 页面操作

#### 标签(Tab)

| 快捷键 | 功能               |
|--------|--------------------|
| tt     | 查看缓存区所有标签 |
| tn     | 新建一个标签       |
| gt     | 跳转到下一个标签   |
| gT     | 跳转到上一个标签   |
| mt     | 向下移动标签       |
| mT     | 向上移动标签       |
| tc     | 关闭标签           |
| to     | 关闭其他标签       |

#### 缓存区(buffer)

| 快捷键    | 功能                         |
|-----------|------------------------------|
| \<leader\>b | 查看当前所有缓存区并选择跳转 |
| bt        | 跳转到下一个缓存区           |
| bT        | 跳转到上一个缓存区           |
| bc        | 关闭缓存区
| bk        | 关闭上一个缓存区             |
| bj        | 关闭下一个缓存区             |
| bo        | 关闭其他缓存区               |
| bmj       | 向下移动一位                 |
| bmk       | 向上移动一位                 |

#### 窗口(windows)

| 快捷键    | 功能         |
|-----------|--------------|
| sv        | 水平分屏     |
| ss        | 垂直分屏     |
| sc        | 关闭窗口     |
| so        | 关闭其他窗口 |
| s=        | 等分窗口     |
| \<C-hjkl\> | 跳转窗口     |
| 方向键    | 控制窗口大小 |
| -         | 选择窗口     |

### 4. 常规动作

| 快捷键       | 功能                                                                   |
|--------------|------------------------------------------------------------------------|
| Ctrl + \     | 打开终端                                                               |
| \<leader\>o  | 打开大纲                                                               |
| \<leader\>ff | 搜索文件                                                               |
| \<leader\>fg | 搜索字符(依赖rg，可传入rg的各类参数，实现忽略大小写、正则表达式搜索等) |
| \<leader\>fo | 搜索历史文件                                                           |
| \<leader\>fb | 搜索缓存区                                                             |

**以下命令是在👆的命令后使用**
| 快捷键  | 功能             |
|---------|------------------|
| \<C-j\> | 向下移动选择文件 |
| \<C-k\> | 向上移动选择文件 |
| \<C-n\> | 历史搜索下一个   |
| \<C-p\> | 历史搜索上一个   |
| \<C-c\> | 关闭搜索页面     |
| \<C-u\> | 预览上滚         |
| \<C-d\> | 预览下滚         |


### 5. 代码导航

| 快捷键          | 作用                         |
|-----------------|------------------------------|
| gd              | 跳到变量的定义处             |
| K               | 悬浮显示当前变量的信息       |
| gp              | 显示当前文件的错误的代码信息 |
| gj              | 跳到下一个错误代码的地方     |
| gk              | 跳到上一个错误代码的地方     |
| Ctrl + f        | 格式化代码                   |
| \<Tab\>         | 自动补全第一项               |
| Ctrl + j        | 选择下一个提示               |
| Ctrl + k        | 选择上一个提示               |
| Enter           | 确认选择                     |
| \<leader\> + rn | 重命名变量名                 |
| \<leader\> + ca | Code Action                  |
