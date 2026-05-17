# Give Me More

为了不吃压力，特意写了一个 Balatro mod。允许玩家根据存档中已解锁的卡牌，在牌局中生成 Joker、Planet、Tarot、Spectral 牌以及金币。

## 功能特性

- **卡牌生成**：从已解锁的卡牌收藏中选择并生成小丑牌（可选择负片版本）、星球牌、塔罗牌、幻灵牌。
- **金币生成**：一键生成自定义数量的金币，省去手动卖牌换金币的烦恼。
- **金额可调**：通过设置界面调整每次生成的金币数量，默认值为 50，可在游戏模组设置中调整。
- ** 界面可收缩**：游戏中的模组界面可以收缩展开，不遮挡游戏视野，方便在牌局中使用。

## 安装方法

1. 确保已安装 [Steamodded](https://github.com/Steamodded/smods) mod 加载器（令令令申申申申申）
2. 下载压缩包后解压到 `%appdata%/Balatro/Mods/` 目录下
3. 启动游戏，在模组设置中启用 "Give Me More"

## 使用方法

### 开始游戏

1. 开始新游戏或继续已有游戏
2. 在牌局选择手牌阶段，屏幕左上角会显示 "Give Me More" HUD
3. 点击 HUD 上的按钮打开对应功能

### 生成卡牌

1. 点击 "Joker" / "Planet" / "Tarot" / "Spectral" 按钮
2. 在打开的选择界面中点击想要的卡牌(开始爽爽爽)

### 生成金币

1. 点击 "Give Money" 按钮
2. 金币将直接添加到你的账户

### 设置调整

在游戏主菜单的模组设置中，可以调整：

- **Negative Edition on Jokers**：开启后，生成的小丑牌将带有 Negative 版本效果
- **Money Amount**：每次生成金币的数量（使用 +/- 按钮调整，步进值为 20）

## 技术说明

- 基于 SMODS mod 框架开发
- 使用 Balatro 原生 UI 系统
- 卡牌解锁状态基于玩家存档中的 `discovered` 标记

## 兼容性

- 需要 Steamodded mod 加载器
- 兼容 Balatro 1.0.1o 及以上版本

## 致谢

- 基于 [Steamodded](https://github.com/Steamodded/smods) 框架
- 参考了 [UltraHand](https://github.com/Xioxin/Balatro-UltraHand) 和 [First Round Joker](https://github.com/LnxFCA/First-Round-Joker) 的实现方式

感谢大师傅的开源！！