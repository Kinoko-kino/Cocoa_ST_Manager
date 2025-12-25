# Cocoa小酒保
自存SillyTavern便捷管理器.

## 功能
1.静默打开SillyTavern(不显示终端)
2.更方便配置config.yaml的端口&监听&白名单
3.支持git更新

## 使用方法
文件这样放👇

📂 总文件夹
├── 📄 Cocoa小酒保.exe
├── 📂 ST_Manager 
└── 📂 SillyTavern 👈文件名必须一样
    ├── 📄 config.yaml
    └── 📂 ...其他文件

创建Cocoa小酒保.exe的快捷方式放在桌面.

## 其他
版本号时通过SillyTavern→package.json文件获取.
小酒保只会在‘启动服务器’时修改config.yaml的端口&监听&白名单,不会修改其他内部文件.
