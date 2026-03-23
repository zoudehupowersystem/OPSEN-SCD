# SCD 开源解析工具 pySCD

## 1. 项目升级概览

这个版本对原型工具做了较大幅度的工程化改造：

- **新增 MMS 报文解析能力**：除原有 GOOSE / SV 外，现在还会解析 `ReportControl`、`RptEnabled`、`ClientLN` 以及关联 `DataSet/FCDA`，用于展示 MMS 报文的发布端与订阅端关系。
- **重构为多文件 Python 架构**：GUI、解析器、常量、辅助函数拆分到 `scd_tool/` 包中，便于维护和继续扩展。
- **GUI 去除 Qt 依赖**：界面层改为 Python 标准库 `tkinter + ttk`，部署更轻量。
- **新增自动化测试**：增加 `tests/test_parser.py`，可以批量验证仓库内多份现场 SCD 样例的解析结果。
- **保持原 GUI 使用方式**：仍然通过 `python main.py` 启动，但主入口已经变成轻量封装。

## 2. 当前支持的解析范围

### 2.1 GOOSE

- `Inputs/ExtRef` 输入解析
- 基于逻辑节点的 GOOSE 输入识别
- `GSEControl` 输出与 `DataSet/FCDA` 成员展开

### 2.2 SV

- `Inputs/ExtRef` 输入解析
- 基于逻辑节点的 SV 输入识别
- `SampledValueControl` 输出与 `DataSet/FCDA` 成员展开

### 2.3 MMS

当前把 **MMS 报文** 重点落在 IEC 61850 SCD 中最常见、最有可视化价值的 **报告控制块（Report Control Block, RCB）**：

- 解析 `ReportControl`
- 区分 `buffered=true/false`（BRCB / URCB）
- 解析 `RptEnabled max`
- 解析 `ClientLN`，建立 **MMS 输入 / 输出关联**
- 解析 `TrgOps`、`OptFields`
- 解析关联 `DataSet` 下的 `FCDA`

GUI 中每个 IED 现在新增 **[MMS]** 分组：

- `MMS输入 (Reports)`：显示该 IED 作为客户端接收了哪些报告
- `MMS输出 (ReportControl)`：显示该 IED 发布了哪些报告控制块、允许哪些客户端订阅、包含哪些数据点

## 3. 工程结构

```text
main.py                  # GUI 启动入口
scd_tool/
  __init__.py
  constants.py           # 常量
  helpers.py             # 辅助函数（如 intAddr 解析）
  parser.py              # SCD / GOOSE / SV / MMS 核心解析
  gui.py                 # tkinter 图形界面
tests/
  test_parser.py         # 自动化测试
scd_test/                # 现场 SCD 样例
```

## 4. 运行方式

### 4.1 环境要求

无需额外安装 Qt；GUI 基于 Python 标准库 `tkinter`。

### 4.2 启动 GUI

```bash
python main.py
```

### 4.3 运行测试

```bash
python -m unittest discover -s tests -v
```

### 4.4 直接通过 Python 函数验证 MMS

```python
from scd_tool import parse_mms_reports

reports = parse_mms_reports('scd_test/nhb2010040813.scd', 'P_110MH_144')
print(reports['outputs'][0]['name'])
print(reports['outputs'][0]['clients'])
```

## 5. 设计说明

### 5.1 为什么 MMS 先做 ReportControl

现场 SCD 中“MMS 报文”通常不像 GOOSE / SV 一样直接带有独立的链路对象；对工程调试来说，最常见且最有价值的是：

- 哪个 IED 发布了哪些报告；
- 哪个 HMI / 网关 / 后台通过 `ClientLN` 订阅这些报告；
- 这些报告的数据集里具体带哪些点；
- 触发条件、可选字段、缓冲/非缓冲属性是什么。

因此本次实现先把 **MMS=基于 ReportControl 的报告通信视图** 做完整，后续如需继续扩展到日志、文件服务、定值组等，也可以在当前架构上继续加模块。

## 6. 测试数据

仓库里的如下样例已可直接用于回归验证：

- `bzt.scd`
- `scd_test/*.scd`

这些文件中包含了多种现场结构，可用于 GOOSE / SV / MMS 的联调和回归测试。
