--[[
    ╔════════════════════════════════════════════════════════════════╗
    ║                 ✨ KATO BOUNTY HUB OFFICIAL ✨                 ║
    ╠════════════════════════════════════════════════════════════════╣
    ║  🚀 Version: 1.0 (2026 Edition)                                ║
    ║  🔗 Discord: https://discord.gg/Nz9Drwczg                      ║
    ║  🛠️ Base Engine: 3TOC-HUB (LuaAnarchist)                       ║
    ╚════════════════════════════════════════════════════════════════╝
]]

-- [ 🟢 INITIALIZING ] --
repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer

-- [ 📢 WELCOME NOTIFICATION ] --
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "🔥 KatoBountyHub 🔥",
    Text = "Enjoy your hunting! Discord: Nz9Drwczg",
    Icon = "rbxassetid://130837964343744",
    Duration = 8
})

-- [ ⚙️ GLOBAL SETTINGS ] --
getgenv().Team = "Pirates" 
getgenv().Mode = "Auto Bounty"
getgenv().On_Ui = true

-- [ 🧠 MAIN CONFIGURATION ] --
getgenv().Config = {
    -- 🛡️ Survival Logic
    ["Safe Health"] = {45, 80}, -- {Health to Run, Health to Return}
    ["Custom Y Run"] = {
        Enabled = true,
        ["Y Run"] = 4000
    },

    -- ⚔️ Hunting Strategy
    ["Hunt Method"] = {
        ["Use Move Predict"] = true,
        ["Hit and Run"] = false,
        ["Aimbot"] = true,
        ["Hitbox"] = false, -- Keep False to avoid Ban
        ["Hitbox-Size"] = Vector3.new(80, 80, 80),
        ["ESP Player"] = true,
        ["Skip Player"] = {"concac", "Admin", "Moderator"},
        ["Skip Player High Bounty"] = nil,
        ["Max Attack Time"] = 45, -- Seconds
        ["Lock Bounty"] = {
            ["Enabled"] = false,
            ["Bounty"] = {0, 30000000}
        }
    },

    -- 📊 Automatic Stats Upgrade
    ["Stats"] = {
        ["Enable"] = false,
        ["Reset Stats"] = false,
        ["Point"] = {
            ["Points per lift"] = 3,
            ["Melee"] = nil,
            ["Defence"] = nil,
            ["Sword"] = nil,
            ["Gun"] = nil,
            ["Devil Fruit"] = nil
        }
    },

    -- 🎨 User Interface Theme (Kato Style)
    ["Theme"] = {
        Name = "KatoBountyHub",
        UIUrl = "rbxassetid://130837964343744",
        Custom = {
            ["Enable"] = true,
            ["title_color"] = Color3.fromRGB(255, 127, 0), -- Orange Flame
            ["titleback_color"] = Color3.fromRGB(20, 20, 20),
            ["list_color"] = Color3.fromRGB(255, 255, 255),
            ["liststroke_color"] = Color3.fromRGB(255, 127, 0),
            ["button_color"] = Color3.fromRGB(255, 127, 0),
            ["title_font"] = Enum.Font.FredokaOne,
            ["text_font"] = Enum.Font.GothamBold,
            ["title_size"] = 35,
            ["text_size"] = 20
        }
    },

    -- ⚙️ System Settings
    ["Setting"] = {
        ["World"] = 3,
        ["White Screen"] = false,
        ["Fast Delay"] = 0.4,
        ["FPS BOOSTER"] = true,
        ["Bypass Method"] = nil,
        ["Url"] = {"", true}, -- Insert Discord Webhook Link Here
        ["Lock Weapons"] = {
          ["Melee"] = "Godhuman",
          ["Sword"] = nil,
          ["Gun"] = "Soul Guitar"
        },
        ["Server Hop"] = {
          ["Minimum player"] = {10, 8, 5, 2}
        }
    },

    -- 🚫 Safety Filter
    ["Skip"] = {
        ["Avoid V4"] = true,
        ["Fruit"] = {
            ["Enabled"] = true,
            ["Avoid Fruit"] = {"Portal-Portal", "Kitsune-Kitsune", "Leopard-Leopard"}
        }
    },

    -- 💥 Combat Skills (Optimized)
    ["Items"] = {
        ["Melee"] = {
            Enable = true,
            Delay = 0.3,
            Skills = {
                Z = {Enable = true, HoldTime = 0.1},
                X = {Enable = true, HoldTime = 0.15},
                C = {Enable = true, HoldTime = 0.2}
            }
        },
        ["Sword"] = {
            Enable = true,
            Delay = 0.4,
            Skills = {
                Z = {Enable = true, HoldTime = 0.4},
                X = {Enable = true, HoldTime = 0.5}
            }
        },
        ["Gun"] = {
            Enable = true,
            Delay = 0.3,
            Skills = {
                Z = {Enable = true, HoldTime = 0.1},
                X = {Enable = true, HoldTime = 0.5} -- Optimized for Soul Guitar
            }
        },
        ["Blox Fruit"] = {
            Enable = true,
            Delay = 0.3,
            Skills = {
                Z = {Enable = true, HoldTime = 0.1},
                X = {Enable = true, HoldTime = 0.1},
                C = {Enable = true, HoldTime = 0.1},
                V = {Enable = true, HoldTime = 0.2},
                F = {Enable = true, HoldTime = 0.1}
            }
        }
    }
}

-- [ 🚀 EXECUTION ] --
print("---------------------------------------")
print("✅ KatoBountyHub Premium Loaded Successfully!")
print("🔗 Discord: https://discord.gg/Nz9Drwczg")
print("---------------------------------------")

loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaAnarchist/3TOC-HUB/refs/heads/main/Auto_Bounty.luau"))()

