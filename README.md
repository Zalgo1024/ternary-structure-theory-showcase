# 三元结构理论 · 展示页

单文件交互式落地页，用于介绍「三元结构理论」。

## 理论一句话

三元结构理论是一套关于系统如何存续的元框架：用「生存 · 繁衍 · 逆反」三把钥匙，配合六类利益、八层层级，分析从个人焦虑到文明兴衰的通用结构。

## 在线访问

别人无需接收文件，直接打开链接即可：

| 通道 | 地址 | 说明 |
| --- | --- | --- |
| GitHub Pages | https://zalgo1024.github.io/ternary-structure-theory-showcase/ | **主地址**，永久、免费。内容来自 `docs/index.html` |
| WorkBuddy 应用 | https://ternary-structure-theory.app.workbuddy.host/ | 同一份内容的独立托管，用于临时演示 |
| Netlify Drop | 拖 `部署包-netlify-drop/index.html` 到 app.netlify.com/drop | 备用通道，即时出链接 |

### 改完内容后如何更新线上

双击 **`更新线上版本.bat`**，它会自动同步 `docs/index.html`、提交并推送，几十秒后 Pages 生效。

手动等价操作：

```bash
./sync-release.sh          # 主文件 -> docs/index.html
git add docs/index.html && git commit -m "docs: 更新展示页" && git push origin main
```

> `docs/index.html` 是发布副本，由脚本从 `三元结构理论 展示页.html` 生成，不要直接手改它。

## 文件说明

| 文件 | 说明 |
| --- | --- |
| `三元结构理论 展示页.html` | 主页面源文件。直接用浏览器打开即可，**无需服务器、零外部依赖** |
| `docs/index.html` | 发布副本，供 GitHub Pages 托管。由 `sync-release.sh` 生成，勿手改 |
| `更新线上版本.bat` | 双击即同步 + 提交 + 推送 |
| `sync-release.sh` | 同步主文件到 `docs/` 的脚本 |
| `部署包-netlify-drop/` | Netlify Drop 拖拽包 |
| `reasonix.toml` | 本项目所用的 Reasonix 配置（与本展示页无运行期依赖） |
| `.reasonix/` | 桌面主题元数据 |

> 本仓库仅收录「展示页」本身。理论的完整手稿（如《元理论与系统论篇》《应用与边界篇》）不在此仓库中。

## 本地预览

直接双击 `三元结构理论 展示页.html` 用浏览器打开即可。
如需本地服务器：

```bash
python -m http.server 8000
# 浏览器访问 http://localhost:8000/
```

## 页面结构

- **什么是三元结构理论**：概念宇宙（交互式 canvas 思维导图）、三维（生存/繁衍/逆反）、六类利益、八层层级、三种循环
- **怎么入门**：学习路径与建议
- **有什么用**：应用场景与边界

## 版权

© 2026 李政恒 (Li Zhengheng)。保留所有权利。
