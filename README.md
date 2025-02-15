# Valkey Doxygen 项目

本项目用于为 [Valkey](https://github.com/valkey-io/valkey) 代码生成 Doxygen 文档。通过 Doxygen，可以自动生成代码的 HTML 文档，便于开发者阅读和理解代码结构。

![Coverage Badge](coverage.svg)

## 项目结构

```
valkey-doxygen/
├── Doxyfile              # Doxygen 配置文件
├── generate.sh           # 文档生成脚本
├── valkey.dox            # Valkey 的高层次文档
├── docs/                 # 生成的文档输出目录
└── README.md             # 项目说明文件
```

## 功能特性

- **Doxygen 支持**：通过 Doxygen 生成 Valkey 代码的 HTML 文档。
- **自定义文档**：支持在 `valkey.dox` 文件中添加高层次文档和注释。
- **一键生成**：提供 `generate.sh` 脚本，一键生成文档。

## 快速开始

### 1. 克隆项目

```bash
git clone https://github.com/artikell/valkey-doxygen.git
cd valkey-doxygen
```

### 2. 安装依赖

确保已安装 Doxygen。如果未安装，可以通过以下命令安装：

- **Ubuntu/Debian**:
  ```bash
  sudo apt-get install doxygen
  ```

- **macOS** (使用 Homebrew):
  ```bash
  brew install doxygen
  ```

- **Windows**:
  从 [Doxygen 官网](https://www.doxygen.nl/download.html) 下载并安装。

### 3. 配置 Doxygen

编辑 `Doxyfile` 文件以配置 Doxygen 的输入、输出路径和其他选项。默认配置已针对 Valkey 项目进行了优化。

### 4. 添加自定义文档

在 `valkey.dox` 文件中添加高层次文档和注释。例如：

```markdown
/**
@mainpage Valkey 文档

@section 简介
Valkey 是一个高性能的键值存储系统，基于 Redis 开发。

@section 功能特性
- 支持多种数据结构：字符串、哈希、列表、集合等。
- 高性能：单机每秒可处理数十万次请求。
- 持久化：支持 RDB 和 AOF 两种持久化方式。

@section 使用方法
以下是 Valkey 的基本使用方法：

@code
$ valkey-server
$ valkey-cli
@endcode
*/
```

### 5. 生成文档

运行以下脚本生成文档：

```bash
./generate.sh
```

生成的 HTML 文档将保存在 `docs/html` 目录中。打开 `docs/html/index.html` 即可浏览文档。

## 贡献指南

欢迎贡献代码或文档！请按照以下步骤操作：

1. Fork 本项目。
2. 创建一个新分支 (`git checkout -b feature/YourFeature`)。
3. 提交更改 (`git commit -m 'Add some feature'`)。
4. 推送到分支 (`git push origin feature/YourFeature`)。
5. 提交 Pull Request。

## 许可证

本项目基于 MIT 许可证开源。详情请参阅 [LICENSE](LICENSE) 文件。
