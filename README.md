# pySCD：IEC 61850 SCD 解析与回路可视化工具

`pySCD` 是一个面向 IEC 61850 工程文件（SCD/ICD/CID/IID/SSD/SED/XML）的 Python 工具，提供两类核心能力：

1. **结构化解析**：按 IED 维度提取 GOOSE / SV / MMS（ReportControl）输入输出关系。  
2. **工程可视化**：通过桌面 GUI 展示通信与回路关系，支持按装置聚焦、展开二级关联、协议筛选、导出摘要。

本项目使用 Python 标准库构建（GUI 基于 `tkinter + ttk`），适合离线调试、教学演示与轻量工程核对。

---

## 1. 项目目标与适用场景

### 1.1 目标

- 快速回答“**谁发了什么、谁订阅了什么、数据集里有什么点**”这类工程问题。
- 降低对重型商用配置工具的依赖，提供一个可二次开发的开源基础。
- 让解析结果既可在 GUI 浏览，也可在 Python 脚本里复用。

### 1.2 典型场景

- 站控层/过程层联调前的 SCD 静态检查。
- 继保、自动化、系统集成团队的配置复核。
- 以样例文件做解析回归测试与算法验证。

---

## 2. 功能概览

### 2.1 解析能力

- **GOOSE**
  - `Inputs/ExtRef` 输入关系提取。
  - `GSEControl` 输出控制块提取。
  - 关联 `DataSet/FCDA` 成员展开。
- **SV**
  - `Inputs/ExtRef` 输入关系提取。
  - `SampledValueControl` 输出提取。
  - `DataSet/FCDA` 按 LN 分组与明细展开。
- **MMS（ReportControl 视图）**
  - `ReportControl`（BRCB / URCB）提取。
  - `RptEnabled max`、`ClientLN` 客户端关联。
  - `TrgOps`、`OptFields` 属性。
  - 报告 `DataSet/FCDA` 成员。

### 2.2 GUI 能力

- `IED 信息` 树：按协议查看每个 IED 的输入/输出细节。
- `Communication` 树：浏览 SubNetwork、ConnectedAP、GSE/SMV 配置。
- `回路浏览器`：
  - 装置树选择与关键字过滤。
  - 当前装置回路聚焦。
  - 一跳/二级关联展开。
  - 协议筛选（GOOSE/SV/MMS）。
  - 缩放、重置、回路摘要导出。

---

## 3. 安装与运行

### 3.1 环境要求

- Python 3.10+（建议）。
- 操作系统自带可用 `tkinter`（多数桌面 Python 发行版默认包含）。

> 本项目当前无第三方依赖要求。

### 3.2 获取代码

```bash
git clone <your-repo-url>
cd OPSEN-SCD
```

### 3.3 启动 GUI

```bash
python main.py
```

启动后点击“打开SCD文件”，选择 `.scd/.icd/.cid/...` 文件即可解析。

### 3.4 运行测试

```bash
python -m unittest discover -s tests -v
```

---

## 4. 项目结构

```text
main.py                  # GUI 启动入口
README.md                # 项目总说明
scd_tool/
  __init__.py            # 对外导出接口
  constants.py           # 默认命名空间等常量
  helpers.py             # 工具函数（如 intAddr 解析）
  parser.py              # SCD 解析核心
  gui.py                 # tkinter 图形界面
tests/
  test_parser.py         # 单元测试
scd_test/                # SCD 样例文件
```

---

## 5. 作为 Python 库使用

### 5.1 解析整个文件

```python
from scd_tool.parser import parse_all_data

data = parse_all_data("scd_test/bzt.scd")
print(data.keys())  # dict_keys(['IEDs', 'Communication'])
```

### 5.2 提取 MMS 报告视图

```python
from scd_tool.parser import parse_mms_reports

reports = parse_mms_reports("scd_test/nhb2010040813.scd", "P_110MH_144")
print(reports["outputs"][0]["name"])
print(reports["outputs"][0]["clients"])
```

### 5.3 路径回退机制

若传入路径不存在，解析器会尝试在仓库 `scd_test/` 目录下按同名文件回退查找，便于测试与脚本调用。

---

## 6. 输出数据模型（简版）

`parse_all_data(file)` 返回：

```text
{
  "IEDs": [
    {
      "name": str,
      "desc": str,
      "GOOSE": {
        "inputs": {"ExtRef": [...], "LN": [...]},
        "outputs": [...]
      },
      "SV": {
        "inputs": {"ExtRef": [...], "LN": [...]},
        "outputs": [...]
      },
      "MMS": {
        "inputs": [...],
        "outputs": [...]
      }
    },
    ...
  ],
  "Communication": [...]
}
```

你可以把它直接用于：

- 自定义报告导出（JSON/CSV/Excel）。
- 拓扑比对或规则检查。
- 二次可视化（Web/桌面）。

---

## 7. 回路可视化语义说明

为避免误读，GUI 的图形语义如下：

- **颜色 + 协议徽标**：区分 GOOSE / SV / MMS。
- **实线**：与当前焦点 IED 一跳直连的链路。
- **虚线**：在“展开回路”模式下出现的二级关联链路。
- **节点副标题**：
  - `当前装置`：焦点 IED。
  - `一跳关联装置`：与焦点直接相关。
  - `二级关联装置`：通过一跳装置扩展得到。

详细文本（源描述、目标描述、meta）以右侧详情面板为准。

---

## 8. 已知限制

- MMS 当前聚焦于 **ReportControl 报告通信视图**，未覆盖完整 MMS 全业务。
- 回路图是工程辅助视图，不等价于现场实时网络状态。
- 超大规模 SCD（海量 IED / FCDA）在 GUI 下可能出现性能下降。

---

## 9. 快速命令清单

```bash
# 启动 GUI
python main.py

# 运行全部测试
python -m unittest discover -s tests -v

# 语法检查（可选）
python -m py_compile main.py scd_tool/gui.py scd_tool/parser.py scd_tool/helpers.py scd_tool/constants.py tests/test_parser.py
```

