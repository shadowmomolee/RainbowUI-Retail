---------------------------------------------------------------------
-- File: Cell\RaidDebuffs\RaidDebuffs_DF.lua
-- Author: enderneko (enderneko-dev@outlook.com)
-- Created : 2022-12-05 17:28:20 +08:00
-- Modified: 2023-12-30 04:28:56 +08:00
---------------------------------------------------------------------

local _, Cell = ...
local F = Cell.funcs

local debuffs = {
    [1205] = { -- 巨龙群岛
    ["general"] = {
    },
    [2515] = { -- 斯图恩兰，苍天苦难
    },
    [2506] = { -- 巴斯律孔，页岩之翼
    },
    [2517] = { -- 巴祖阿尔，惊恐烈焰
    },
    [2518] = { -- 利斯卡诺兹，未来灾劫
    },
    },

    [1200] = { -- 化身巨龙牢窟
        ["general"] = {
        },
        [2480] = { -- 艾拉诺格
            394917, -- 飞扑烈焰（M）
            397115, -- 烧尽
            370597, -- 杀戮指令
            396094, -- 大型火焰裂隙
            390715, -- 火焰裂隙
            394906, -- 灼烧之伤（T）
            370648, -- 熔岩涌流（岩浆）
            -396023, -- 焚火咆哮
        },
        [2500] = { -- 泰洛斯
            386352, -- 岩石冲击
            "381253", -- 觉醒之土
            391592, -- 注能爆尘
            376276, -- 震荡猛击（T）
            382458, -- 共鸣余震
            "-382776", -- 觉醒之土
            -381595, -- 撼地突袭
        },
        [2486] = { -- 原始议会
            "374039", -- 流星之斧
            "371624", -- 传导印记
            371591, -- 冰霜之墓
            372056, -- 碾压（T）
            372027, -- 劈砍烈焰（T）
            371836, -- 原始暴风雪
            371514, -- 灼烧之地
            -386661, -- 冰川之召
            "-375091", -- 流星之斧（易伤）
        },
        [2482] = { -- 瑟娜尔丝，冰冷之息
            374104, -- 困在网中
            373048, -- 窒息之网
            372082, -- 包围之网
            372030, -- 粘性蛛网
            385083, -- 蛛网冲击（T）
            388016, -- 溶解防御（T）
            371976, -- 冰冷冲击
            372055, -- 冰封地面
            372736, -- 永冻
            -372648, -- 渗流之寒
        },
        [2502] = { -- 晋升者达瑟雅
            375580, -- 西风猛击（T）
            "391686", -- 传导印记
            390449, -- 雷霆之箭
            -391717, -- 静电释放
            -388290, -- 旋风
        },
        [2491] = { -- 库洛格·恐怖图腾
            372458, -- 绝对零度
            390920, -- 震撼爆裂
            391696, -- 致命电流
            391056, -- 大地笼罩
            391022, -- 冷冽洪流
            391419, -- 冻结
            "373535", -- 闪电崩裂（被电）
            "373494", -- 闪电崩裂（电）
            372158, -- 破甲一击（T）
            393431, -- 风暴惩击
            374427, -- 碎地
            382564, -- 岩浆爆裂
            393297, -- 冰霜惩击
            -374864, -- 原始破碎（易伤）
            -372514, -- 霜寒噬咬
            -374623, -- 冰霜束缚
            -374023, -- 灼热屠戮
            -374554, -- 岩浆之池
            -373681, -- 酷寒
            -396085, -- 大地统御
            -396106, -- 炽燃统御
            -396109, -- 冰霜统御
            -396113, -- 风暴统御
        },
        [2493] = { -- 巢穴守护者迪乌尔娜
            396264, -- 爆震石斫
            388920, -- 冷凝笼罩
            388717, -- 寒冰包裹
            376260, -- 震动
            378782, -- 致死之伤（T）
            376266, -- 潜地打击（T）
            375475, -- 撕裂噬咬（T）
            375716, -- 寒冰弹幕
            375620, -- 电离充能
            375578, -- 烈焰哨卫
            375889, -- 巨杖之怒
            380483, -- 强化巨杖之怒
            -375873, -- 野火
            -375458, -- 寒冰怒气
        },
        [2499] = { -- 莱萨杰丝，噬雷之龙
            394583, -- 分散电荷
            381615, -- 静电充能
            399713, -- 磁力充能
            377467, -- 积雷充能
            381442, -- 闪电打击
            385073, -- 球状闪电
            388115, -- 闪电毁灭
            396037, -- 澎湃冲击
            397382, -- 碎裂幔罩
            394584, -- 反转
            391990, -- 正能量电荷
            391991, -- 负能量电荷
            390763, -- 雷鸣能量（T）
            391285, -- 蚀雷护甲（T）
            395906, -- 电化之颌（T）
            388635, -- 爆裂
            381251, -- 电能鞭笞
            390911, -- 残留能量
            389698, -- 爆裂电流
            377662, -- 静电力场
            392921, -- 局部风暴
            395929, -- 风暴之怨
            -399054, -- 风暴喷涌
            -388659, -- 风暴之翼
            -377612, -- 飓风龙翼
        },
    },

    [1208] = { -- 亚贝鲁斯，焰影熔炉
        ["general"] = {
            406288, -- 梦境爆发
            411862, -- 酸蚀胆汁
            409018, -- 感染液体
            409041, -- 凝固物质
            411808, -- 软泥排放
            412488, -- 奥术震爆
            411730, -- 炽燃利齿
        },
        [2522] = { -- 狱铸者卡扎拉
            402253, -- 痛苦射线
            406525, -- 恐惧裂隙
            404743, -- 恐惧利爪（T）
            402420, -- 熔火疮疤
            -403655, -- 歼灭之翼
        },
        [2529] = { -- 融合体密室
            -- 第一阶段
            405036, -- 晦暗爆破
            409299, -- 萦绕暗影
            401809, -- 腐化暗影
            409320, -- 萦绕烈焰
            402617, -- 炽炎之热
            -- 第二阶段
            405642, -- 炽燃暮光
            413597, -- 枯萎脆弱（T）
        },
        [2530] = { -- 被遗忘的实验体
            407327, -- 不稳定的精华（驱散）
            "405423", -- 裂解（DoT）
            "405392", -- 裂解
            406313, -- 注能打击（T）
            410635, -- 时空解离
            406365, -- 裂体奔袭
            406233, -- 深呼吸
        },
        [2524] = { -- 扎卡利突袭
            -- 第一阶段
            401452, -- 烈燃之矛
            401867, -- 熔火护盾（黑曜卫士的熔火护盾锁定了你！）
            401381, -- 炽烈聚焦
            409275, -- 岩浆涌动（驱散）
            408873, -- 沉重战锤（T）
            407017, -- 活力狂风
            -- 第二阶段
            410353, -- 烈火捶击
            404616, -- 脆弱活力（易伤）
        },
        [2525] = { -- 长老莱修克
            405819, -- 烧灼猛击（成为烧灼猛击的目标！）
            407547, -- 烈火斩（T）
            407597, -- 土灵碎击（T）
            408857, -- 末日烈焰（接圈DoT）
            403543, -- 熔岩波浪
            -405827, -- 过载
            -410077, -- 暗影烈焰能量
        },
        [2532] = { -- 警戒管事兹斯卡恩
            404955, -- 散射炸弹
            405592, --? 回收部件
            404942, -- 灼烧之爪（T）
            404010, -- 不稳定的灰烬
            405462, -- 龙火陷阱
        },
        [2527] = { -- 玛格莫莱克斯
            "411848", -- 爆裂岩浆（分摊）
            "411149", -- 爆裂岩浆
            402994, -- 熔火飞沫
            408955, -- 焚化之喉（T）
            408839, -- 焦灼之热（吸收岩浆池DoT）
            413367, -- 熔岩喷射（易伤）
        },
        [2523] = { -- 奈萨里奥的回响
            -- 第一阶段
            --? 崩塌之地（昏迷）
            --? 奔袭之暗（沉默）
            -- 阶段转换
            -405484, -- 屈于腐蚀
            -- 第二阶段
            410972, -- 腐蚀术
            410953, -- 熔火注心
            407728, -- 身影相隔（T）
            408160, -- 暗影突击（T）
            401998, -- 灾祸掠击（T）
            -408131, -- 撕毁帷幕
            -- 第三阶段
            407329, -- 粉碎
            402120, -- 崩塌之地
            407919, -- 现实隔绝
            -407917, -- 黑檀摧残
        },
        [2520] = { -- 鳞长萨卡雷斯
            -- 第一阶段
            402051, -- 灼热气息
            401680, -- 群体裂解
            401330, -- 燃烧之爪（T）
            401383, -- 压迫怒嚎
            -- 第二阶段
            404288, -- 无限迫压（驱散）
            404218, -- 虚空碎裂
            404769, -- 空无打击（T）
            411241, -- 虚空锋爪（T）
            404425, -- 荒芜之花
            -- 第三阶段
            405486, -- 疾驰弹幕（成为了疾驰弹幕的目标！）
            403520, -- 虚无之拥
            408429, -- 虚空挥砍（T）

            401215, -- 虚渺星瀚
            -413070, -- 失衡
            -407576, -- 星界耀斑
            -401951, -- 湮灭
        },
    },

    [1207] = { -- 阿梅达希尔，梦境之愿
        ["general"] = {
            425388, -- 地狱火之心
            424646, -- 燃烧之爪
            425573, -- 纠缠根须
            426574, -- 胆汁喷吐
            425528, -- 鞭笞者毒素
            428360, -- 熔灭重踏
        },
        [2564] = { -- 瘤根
            421972, -- 可控燃烧
            422466, -- 暗影针毛
            421038, -- 灰烬灼体
            424352, -- 骇火弹幕（T）
            425820, -- 烈焰树脂
            -422026, -- 苦难尖啸
        },
        [2554] = { -- 残虐者艾姬拉
            415623, -- 扼心绝脉
            424456, -- 碾压脏腑
            414888, -- 酷热之矛
            424065, -- 晦影湮灭
            426056, -- 催命割裂
            414340, -- 沐焰之刃（T）
            414367, -- 折磨收束
            -429277, -- 残忍重创
            -419462, -- 血肉烙毁
            -419048, -- 归于毁灭
        },
        [2557] = { -- 沃尔科罗斯
            427201, -- 盘曲喷发
            421207, -- 盘曲烈焰
            419054, -- 熔火毒液（T）
        },
        [2555] = { -- 梦境议会
            "420948", -- 滚桶冲锋
            418720, -- 变形术炸弹
            420858, -- 剧毒投枪
            421022, -- 苦痛锋爪（T）
            "-423420", -- 滚桶冲锋（易伤）
            421031, -- 精龙之曲
            426390, -- 腐蚀花粉
            427602, -- 饥肠辘辘
            "427010", -- 餍足
            -421018, -- 无情枪岚
            -420714, -- 剧毒之花
        },
        [2553] = { -- 拉罗达尔，烈焰守护者
            427299, -- 跃动之火
            426387, -- 灼烧木棘
            428946, -- 灰烬绝息
            421594, -- 焖燃窒息（T）
            423719, -- 自然之怒（T）
            418520, -- 酷热碎木（T）
            426249, -- 炽焰融合
            429032, -- 焰光不熄
            -425531, -- 梦境疲惫
            -421323, -- 灼热余灰
        },
        [2556] = { -- 尼穆威，轮回编织者
            420554, -- 茏葱矩阵
            -429983, -- 涌动增生
            429798, -- 笼葱撕裂
            428479, -- 醒梦脆弱
            -421368, -- 抽丝断命
            429785, -- 织机迫近
            -430563, -- REVIEW: 幻灭植物
            -423195, -- 繁花盛绽
        },
        [2563] = { -- 斯莫德隆
            421455, -- 过热
            426018, -- 索敌的地狱火
            421656, -- 灼烧创伤
            421343, -- 诅咒烙印
            422577, -- 灼热余波（T）
            425574, -- 徘徊燃烧
            421859, -- 燃火精华
        },
        [2565] = { -- 丁达尔·迅贤，烈焰预言者
            424579, -- 压抑灰烬
            430583, -- REVIEW: germinating-aura
            424665, -- 烈焰之种
            424581, -- 炽烈增生
            422000, -- 灼热之怒（T）
            424578, -- 炽焰蘑菇（T）
            426686, -- 毒蘑菇（T）
            "-424495", -- 群体缠绕
            "424497", -- 群体缠绕
            424582, -- 萦绕灰烬
            422509, -- 强能之羽
            425652, -- 耀焰炸弹
            -425657, -- 蜕落之羽
        },
        [2519] = { -- 火光之龙菲莱克
            417807, -- 烈燃
            428749, -- 焰裔
            426392, -- 暗焰顺劈
            430045, -- 腐蚀
            425494, -- 狱火之喉（T）
            417443, -- 菲莱拉兹之印（T）
            -429866, -- 暗影烈焰喷发
            -428400, -- 爆裂核心
            -423717, -- REVIEW: 绽放
        },
    },

    [1209] = { -- 永恒黎明
        ["general"] = {
            411994, -- 时光融蚀
            412044, -- 时光斩
            415554, -- 时光爆发
            415436, -- 玷污之沙
            415437, -- 弱化
            413547, -- 绽放
            413529, -- 松解
            412810, -- 荒芜喷呕
            412285, -- 砂石箭
            412505, -- 撕裂挥砍
            412131, -- 沉思宝珠
            412922, -- 束缚攫握
            413618, -- 永恒诅咒
            419351, -- 青铜急息
            413427, -- 时光射线
            418200, -- 永恒燃烧
            419511, -- 时光联结
            419517, -- 时序喷发
            412262, -- 静电猛拳
            419633, -- 爆破大师的专注
            407315, -- 余烬
            419629, -- 嘭！
            407205, -- 爆燃迫击炮
            407313, -- 弹片
            "417002", -- 奉献
        },
        [2521] = { -- 克罗妮卡
            413142, -- 万古裂片
            401794, -- 凋零沙池
            413013, -- 裂时斩
            "416716", -- 寿命斩割
            403259, -- 残渣冲击
        },
        [2528] = { -- 时间流具象
            404141, -- 时光凋零
            404650, -- 时光碎片
            405448, -- 时光凋落
        },
        [2535] = { -- 迦拉克隆之荒
            407406, -- 腐蚀
            418346, -- 腐化心灵
            408084, -- 通灵之霜
            407147, -- 荒芜浸渗
            408177, -- 焚焰荒芜之息
        },
        [2537] = { -- 伊律迪孔，石鳞之龙
            409558, -- 崩摧强袭
            409266, -- 根绝冲击
            414333, -- 时间线防护
            414376, -- 碎裂大地
            409879, -- 粉碎造物
            416258, -- 砂石箭
            414376, -- 碎裂大地
        },
        [2526] = { -- 永恒守护者提尔
            400681, -- 提尔之火
            403724, -- 圣洁之地
        },
        [2536] = { -- 米罗克
            401200, -- 锁定
            429363, -- 时光反冲
            413208, -- 沙暴摧残
        },
        [2534] = { -- 迷时战场
            410235, -- 剑刃风暴
            410497, -- 致死之伤
            418009, -- 锯齿箭矢
            407120, -- 锯齿之斧
            417030, -- 火球术
            417026, -- 暴风雪
            407121, -- 献祭
            417122, -- 火焰之雨
            
        },
        [2538] = { -- 时空领主戴欧斯
            410908, -- 永恒新星
            416139, -- 恒时吐息
            412027, -- 时序灼焚
            417413, -- 时光疮痍
        },
    },

    [1201] = { -- 艾杰斯亚学院
        ["general"] = {
            390918, -- 爆炸之种
            378011, -- 致命狂风
            388392, -- 乏味的讲课
            377344, -- 啄击
            388866, -- 法力虚空
            388984, -- 邪恶伏击
            388912, -- 断体猛击
            387843, -- 星界炸弹
            387932, -- 星界旋风
        },
        [2509] = { -- 维克萨姆斯
            386181, -- 法力炸弹
            391977, -- 涌动超载
            386201, -- 腐化法力
        },
        [2512] = { -- 茂林古树
            388544, -- 裂树击
            389033, -- 鞭笞者毒素
            396716, -- 皲皮
        },
        [2495] = { -- 克罗兹
            376449, -- 火焰风暴
            376997, -- 狂野啄击
            377008, -- 震耳尖啸
            397210, -- 音速易伤
        },
        [2514] = { -- 多拉苟萨的回响
            374350, -- 能量炸弹
            389007, -- 野蛮能量
            389011, -- 势不可挡
        },
    },

    [1196] = { -- 蕨皮山谷
        ["general"] = {
            385185, -- 迷惑
            367500, -- 狰狞蔑笑
            384970, -- 香味肉块
            367481, -- 血腥啃噬
            367484, -- 恶毒爪击
            382805, -- 死疽吐息
            367521, -- 白骨箭
            368081, -- 枯萎
            368091, -- 感染撕咬
            373595, -- 枯萎感染
            373872, -- 喷薄污泥
            373899, -- 腐朽根须
            374245, -- 腐烂之溪
            385058, -- 枯萎毒药
            385834, -- 嗜血冲锋
            375416, -- 流血
            385361, -- 腐烂疫病
            385303, -- 带齿陷阱
            387796, -- 网
            383399, -- 腐烂激涌
            368299, -- 剧毒陷阱
            -382787, -- 腐朽利爪
            -382723, -- 毁灭猛击
        },
        [2471] = { -- 劈爪的战团
            381461, -- 野蛮冲撞
            381379, -- 腐朽感官
            378229, -- 屠戮标记
            378020, -- 狂伤
            377844, -- 剑刃风暴
        },
        [2473] = { -- 树口
            377222, -- 吞噬
            377864, -- 感染喷吐
            383875, -- 消化了一半
            -376933, -- 缠绕之藤
        },
        [2472] = { -- 肠击
            385356, -- 诱捕陷阱
            384575, -- 减速撕咬
            384425, -- 闻着像肉
        },
        [2474] = { -- 腐朽主母怒眼
            383087, -- 枯萎传染
            387210, -- 腐朽之力
            373917, -- 腐朽打击
            376149, -- 窒息腐云
            -373896, -- 枯萎腐烂
        },
    },

    [1204] = { -- 注能大厅
        ["general"] = {
            391610, -- 联结之风
            374563, -- 眩晕
            374615, -- 偷袭
            374020, -- 密闭射线
            393444, -- 龟裂创伤
            374706, -- 积热爆裂
            375384, -- 滚石
            385168, -- 雷霆风暴
            391613, -- 慢性毒菌
            374724, -- 熔火隐没
            391634, -- 极寒冰冻
            -374339, -- 挫志怒吼
        },
        [2504] = { -- 看护者伊里度斯
            384524, -- 泰坦之拳
            389179, -- 能量过载
            389443, -- 净化冲击波
            383935, -- 火花齐射
            389446, -- 废灵脉冲
            389181, -- 能量场
        },
        [2507] = { -- 吞喉巨蛙
            374389, -- 巨口蛙毒
            385555, -- 狼吞虎咽
        },
        [2510] = { -- 不屈者卡金
            385963, -- 冰霜震击
            -386743, -- 极地之风
        },
        [2511] = { -- 原始海啸
            387571, -- 汇流洪水
            396971, -- 威慑冲击
            387359, -- 浸水
        },
    },

    [1199] = { -- 奈萨鲁斯
        ["general"] = {
            372208, -- 贾拉丁熔岩
            372224, -- 龙骨之斧
            372461, -- 灌魔岩浆
            372570, -- 果敢伏击
            372971, -- 回荡猛击
            "371992", -- 燃烧锁链
            382005, -- 滚烫噬咬
            384161, -- 燃烧微粒
            378818, -- 岩浆焚火
            373540, -- 束缚之矛
            373089, -- 灼热齐射
            378221, -- 熔火易伤
            -372459, -- 燃烧
        },
        [2490] = { -- 查尔加斯，龙鳞之灾
            374482, -- 束地之链
            373735, -- 巨龙打击
            396332, -- 炽燃聚焦
            373756, -- 岩浆波
            374854, -- 迸发之地
            389059, -- 炉渣喷发
        },
        [2489] = { -- 熔炉主管戈雷克
            372971, -- 回荡猛击
            374842, -- 炽焰护盾
            -374534, -- 炽热挥舞
        },
        [2494] = { -- 岩浆之牙
            375204, -- 热液岩浆
            -375890, -- 岩浆喷发
        },
        [2501] = { -- 督军莎尔佳
            377018, -- 熔火真金
            377522, -- 爆燃追击
            377542, -- 爆燃之地
            376784, -- 火焰易伤
        },
    },

    [1202] = { -- 红玉新生法池
        ["general"] = {
            385313, -- 霉运打击
            372047, -- 钢铁弹幕
            372796, -- 炽焰冲刺
            392641, -- 滚雷
            373693, -- 活动炸弹
            391130, -- 暴风骤雨之盾
            392924, -- 震爆
            395292, -- 火焰之喉
            392451, -- 闪火
            385536, -- 烈焰之舞
            373869, -- 燃烧之触
            372697, -- 锯齿土地
            -373692, -- 地狱烈火
            -392406, -- 雷霆一击
        },
        [2488] = { -- 梅莉杜莎·寒妆
            372963, -- 霜风
            "372682", -- 原始酷寒 -- TODO: 冻结
        },
        [2485] = { -- 柯姬雅·焰蹄
            372811, -- 熔火巨石
            372860, -- 灼热伤口
            373869, -- 燃烧之触
            384823, -- 地狱烈火
            372820, -- 焦灼之土
            -372858, -- 灼热打击
        },
        [2503] = { -- 基拉卡与厄克哈特·风脉
            381515, -- 风暴猛击
            381526, -- 怒吼火息
            381862, -- 地狱火之核
            384773, -- 烈焰余烬
            -381518, -- 变迁之风
        },
    },

    [1203] = { -- 碧蓝魔馆
        ["general"] = {
            371352, -- 禁断知识
            375602, -- 古怪生长
            386549, -- 清醒的克星
            370764, -- 穿刺碎片
            371007, -- 裂生碎片
            375591, -- 树脂爆发
            386640, -- 撕扯血肉
            387564, -- 秘法蒸汽
            375649, -- 注能之地
            377488, -- 寒冰束缚
            370766, -- 晶化裂口
        },
        [2492] = { -- 莱魔
            374567, -- 爆裂法印
            374789, -- 注能打击
            374523, -- 刺痛树液
            375591, -- 树脂爆发
        },
        [2505] = { -- 青刃
        },
        [2483] = { -- 泰拉什·灰翼
            396722, -- 绝对零度
            387151, -- 寒冰灭绝者
            386881, -- 冰霜炸弹
            387150, -- 冰霜之地
        },
        [2508] = { -- 安布雷斯库
            385267, -- 爆裂旋涡
            384978, -- 巨龙打击
            -385331, -- 破裂
            -388777, -- 压制瘴气
        },
    },

    [1198] = { -- 诺库德阻击战
        ["general"] = {
            373395, -- 恐怖威吓
            395035, -- 粉碎灵魂
            384336, -- 战争践踏
            397394, -- 致命雷霆
            381530, -- 风暴震击
            381692, -- 迅捷刺击
            384134, -- 穿刺
            388801, -- 致死打击
            387629, -- 腐烂之风
            386912, -- 风暴喷涌之云
            386025, -- 风暴
            384492, -- 猎人印记
            -382628, -- 能量湍流
        },
        [2498] = { -- 格拉尼斯
        },
        [2497] = { -- 狂怒风暴
            386916, -- 狂怒风暴
            384185, -- 闪电打击
            383944, -- 飑风
        },
        [2478] = { -- 提拉和马鲁克
            386063, -- 恐怖怒吼
            392151, -- 强风箭
        },
        [2477] = { -- 巴拉卡可汗
            376634, -- 钢铁之矛
            376864, -- 静电之矛
            375937, -- 撕裂猛击
            376827, -- 传导打击
            376899, -- 鸣裂之云
            376894, -- 鸣裂颠覆
            -376730, -- 暴风
        },
    },

    [1197] = { -- 奥达曼：提尔的遗产
        ["general"] = {
            369811, -- 残暴猛击
            369366, -- 困于岩石
            369411, -- 音速爆裂
            369337, -- 困难地形
            369408, -- 撕裂猛击
            369419, -- 剧毒之牙
            369828, -- 噬咬
            372718, -- 大地碎片
            377732, -- 锯齿撕咬
            377486, -- 时光利刃
            377510, -- 窃取时间
            382576, -- 提尔的蔑视
            369818, -- 疾病之咬
            369365, -- 羁石诅咒
        },
        [2475] = { -- 失落的矮人
            369792, -- 碎颅者
            375286, -- 灼热炮火
            369828, -- 噬咬
            377825, -- 燃烧的沥青
        },
        [2487] = { -- 布罗马奇
        },
        [2484] = { -- 哨兵塔隆达丝
            372652, -- 共鸣宝珠
            382071, -- 共鸣宝珠
            372718, -- 大地碎片
        },
        [2476] = { -- 艾博隆
            368996, -- 净化烈焰
            369110, -- 不稳定的灰烬
            369006, -- 灼烧酷热
        },
        [2479] = { -- 时空领主戴欧斯
            377405, -- 时光渗陷
            376325, -- 永恒领域
        },
    },
}

F:LoadBuiltInDebuffs(debuffs)