--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:32a805af2685a1fa21476b7b7aaba4d0:f7af1697014b232e86c79e9f0f539faa:549a0154c0fe253a9c5702203109b1c4$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- appear_01
            x=52,
            y=1,
            width=8,
            height=48,

        },
        {
            -- appear_02
            x=41,
            y=87,
            width=22,
            height=29,

        },
        {
            -- appear_03
            x=1,
            y=839,
            width=30,
            height=42,

        },
        {
            -- appear_04
            x=33,
            y=858,
            width=30,
            height=39,

        },
        {
            -- appear_05
            x=33,
            y=899,
            width=30,
            height=36,

        },
        {
            -- appear_06
            x=33,
            y=937,
            width=30,
            height=34,

        },
        {
            -- appear_07
            x=1,
            y=1068,
            width=30,
            height=32,

        },
        {
            -- appear_08
            x=1,
            y=960,
            width=30,
            height=34,

        },
        {
            -- buff_01
            x=35,
            y=514,
            width=28,
            height=45,

        },
        {
            -- buff_02
            x=34,
            y=725,
            width=29,
            height=45,

        },
        {
            -- buff_03
            x=1,
            y=301,
            width=34,
            height=48,

        },
        {
            -- buff_04
            x=34,
            y=772,
            width=29,
            height=45,

        },
        {
            -- buff_05
            x=35,
            y=561,
            width=28,
            height=45,

        },
        {
            -- down_01
            x=38,
            y=234,
            width=25,
            height=27,

        },
        {
            -- down_02
            x=38,
            y=263,
            width=25,
            height=27,

        },
        {
            -- down_03
            x=38,
            y=292,
            width=25,
            height=27,

        },
        {
            -- down_04
            x=37,
            y=394,
            width=25,
            height=27,

        },
        {
            -- flash_01
            x=35,
            y=608,
            width=28,
            height=31,

        },
        {
            -- flash_02
            x=1,
            y=97,
            width=38,
            height=26,

        },
        {
            -- hurt_01
            x=37,
            y=321,
            width=26,
            height=36,

        },
        {
            -- hurt_02
            x=1,
            y=1102,
            width=29,
            height=34,

        },
        {
            -- hurt_03
            x=32,
            y=1114,
            width=29,
            height=34,

        },
        {
            -- hurt_04
            x=1,
            y=493,
            width=32,
            height=48,

        },
        {
            -- hurt_05
            x=1,
            y=1138,
            width=29,
            height=34,

        },
        {
            -- hurt_06
            x=1,
            y=543,
            width=32,
            height=48,

        },
        {
            -- hurt_07
            x=32,
            y=1150,
            width=29,
            height=34,

        },
        {
            -- hurt_08
            x=1,
            y=593,
            width=32,
            height=48,

        },
        {
            -- hurt_09
            x=1,
            y=1174,
            width=29,
            height=34,

        },
        {
            -- hurt_10
            x=1,
            y=1102,
            width=29,
            height=34,

        },
        {
            -- hurt_11
            x=37,
            y=321,
            width=26,
            height=36,

        },
        {
            -- idle
            x=33,
            y=973,
            width=30,
            height=34,

        },
        {
            -- idle_01
            x=1,
            y=923,
            width=30,
            height=35,

        },
        {
            -- idle_02
            x=1,
            y=960,
            width=30,
            height=34,

        },
        {
            -- idle_03
            x=33,
            y=1045,
            width=30,
            height=33,

        },
        {
            -- jump_02
            x=47,
            y=1257,
            width=15,
            height=41,

        },
        {
            -- jump_03
            x=26,
            y=1257,
            width=19,
            height=46,

        },
        {
            -- jump_04
            x=40,
            y=154,
            width=23,
            height=41,

        },
        {
            -- jump_05
            x=35,
            y=641,
            width=27,
            height=42,

        },
        {
            -- jump_06
            x=35,
            y=685,
            width=24,
            height=38,

        },
        {
            -- jump_07
            x=33,
            y=1080,
            width=30,
            height=32,

        },
        {
            -- run_02
            x=1,
            y=996,
            width=30,
            height=34,

        },
        {
            -- run_03
            x=41,
            y=118,
            width=20,
            height=34,

        },
        {
            -- run_04
            x=1,
            y=1246,
            width=23,
            height=35,

        },
        {
            -- run_05
            x=1,
            y=680,
            width=32,
            height=34,

        },
        {
            -- run_06
            x=1,
            y=351,
            width=34,
            height=33,

        },
        {
            -- run_07
            x=37,
            y=359,
            width=26,
            height=33,

        },
        {
            -- run_08
            x=41,
            y=51,
            width=22,
            height=34,

        },
        {
            -- run_09
            x=38,
            y=197,
            width=25,
            height=35,

        },
        {
            -- run_10
            x=33,
            y=1009,
            width=30,
            height=34,

        },
        {
            -- run_11
            x=1,
            y=386,
            width=34,
            height=33,

        },
        {
            -- run_12
            x=32,
            y=1222,
            width=29,
            height=33,

        },
        {
            -- shootflash_01
            x=1,
            y=64,
            width=38,
            height=31,

        },
        {
            -- shootflash_02
            x=1,
            y=1,
            width=49,
            height=26,

        },
        {
            -- shootidle_01
            x=1,
            y=1032,
            width=30,
            height=34,

        },
        {
            -- shootidle_02
            x=32,
            y=1186,
            width=29,
            height=34,

        },
        {
            -- shootjump_01
            x=34,
            y=819,
            width=29,
            height=37,

        },
        {
            -- shootjump_02
            x=37,
            y=423,
            width=24,
            height=41,

        },
        {
            -- shootjump_03
            x=36,
            y=466,
            width=27,
            height=46,

        },
        {
            -- shootjump_04
            x=1,
            y=760,
            width=31,
            height=41,

        },
        {
            -- shootjump_05
            x=1,
            y=716,
            width=31,
            height=42,

        },
        {
            -- shootjump_06
            x=1,
            y=883,
            width=30,
            height=38,

        },
        {
            -- shootjump_08
            x=1,
            y=160,
            width=36,
            height=32,

        },
        {
            -- shootrun_01
            x=1,
            y=1210,
            width=29,
            height=34,

        },
        {
            -- shootrun_02
            x=1,
            y=643,
            width=32,
            height=35,

        },
        {
            -- shootrun_03
            x=1,
            y=194,
            width=35,
            height=34,

        },
        {
            -- shootrun_04
            x=1,
            y=29,
            width=38,
            height=33,

        },
        {
            -- shootrun_05
            x=1,
            y=421,
            width=34,
            height=33,

        },
        {
            -- shootrun_06
            x=1,
            y=803,
            width=31,
            height=34,

        },
        {
            -- shootrun_07
            x=1,
            y=456,
            width=33,
            height=35,

        },
        {
            -- shootrun_08
            x=1,
            y=230,
            width=35,
            height=34,

        },
        {
            -- shootrun_09
            x=1,
            y=125,
            width=37,
            height=33,

        },
        {
            -- shootrun_10
            x=1,
            y=266,
            width=35,
            height=33,

        },
    },

    sheetContentWidth = 64,
    sheetContentHeight = 1304
}

SheetInfo.frameIndex =
{

    ["appear_01"] = 1,
    ["appear_02"] = 2,
    ["appear_03"] = 3,
    ["appear_04"] = 4,
    ["appear_05"] = 5,
    ["appear_06"] = 6,
    ["appear_07"] = 7,
    ["appear_08"] = 8,
    ["buff_01"] = 9,
    ["buff_02"] = 10,
    ["buff_03"] = 11,
    ["buff_04"] = 12,
    ["buff_05"] = 13,
    ["down_01"] = 14,
    ["down_02"] = 15,
    ["down_03"] = 16,
    ["down_04"] = 17,
    ["flash_01"] = 18,
    ["flash_02"] = 19,
    ["hurt_01"] = 20,
    ["hurt_02"] = 21,
    ["hurt_03"] = 22,
    ["hurt_04"] = 23,
    ["hurt_05"] = 24,
    ["hurt_06"] = 25,
    ["hurt_07"] = 26,
    ["hurt_08"] = 27,
    ["hurt_09"] = 28,
    ["hurt_10"] = 29,
    ["hurt_11"] = 30,
    ["idle"] = 31,
    ["idle_01"] = 32,
    ["idle_02"] = 33,
    ["idle_03"] = 34,
    ["jump_02"] = 35,
    ["jump_03"] = 36,
    ["jump_04"] = 37,
    ["jump_05"] = 38,
    ["jump_06"] = 39,
    ["jump_07"] = 40,
    ["run_02"] = 41,
    ["run_03"] = 42,
    ["run_04"] = 43,
    ["run_05"] = 44,
    ["run_06"] = 45,
    ["run_07"] = 46,
    ["run_08"] = 47,
    ["run_09"] = 48,
    ["run_10"] = 49,
    ["run_11"] = 50,
    ["run_12"] = 51,
    ["shootflash_01"] = 52,
    ["shootflash_02"] = 53,
    ["shootidle_01"] = 54,
    ["shootidle_02"] = 55,
    ["shootjump_01"] = 56,
    ["shootjump_02"] = 57,
    ["shootjump_03"] = 58,
    ["shootjump_04"] = 59,
    ["shootjump_05"] = 60,
    ["shootjump_06"] = 61,
    ["shootjump_08"] = 62,
    ["shootrun_01"] = 63,
    ["shootrun_02"] = 64,
    ["shootrun_03"] = 65,
    ["shootrun_04"] = 66,
    ["shootrun_05"] = 67,
    ["shootrun_06"] = 68,
    ["shootrun_07"] = 69,
    ["shootrun_08"] = 70,
    ["shootrun_09"] = 71,
    ["shootrun_10"] = 72,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
