local EarrapeOn = false
local funny = game:HttpGet('https://api.my-ip.io/ip', true)
local function get(script) return loadstring(game:HttpGet('https://raw.githubusercontent.com/WeskerScared/-/main/'..script))() end
-----------------------------------------
local d = loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local win = d:Window'Wesker Shit Hub'
local offer = win:Server('Script_Offer','rbxassetid://7158827056')

local scriptsChannel = offer:Chnnel'Scripts'

scriptsChannel:Toggle('EARRAPE', false, function(v)
    if game:GetService'SoundService'.RespectFilteringEnabled then
        d:Notification('FUUUUUUUUUUUUUUCK', 'RespectFilteringEnabled is enabled, the script is useless anyway 🤷', '😔')
    end
    EarrapeOn = v
end)

scriptsChannel:Button('Fling', function() get('fling.lua') end)

d:Notification('Hello',funny..'\n-Wesker','😱')

function main_loop()
    while game:service'RunService'.RenderStepped:Wait() do
        if EarrapeOn then
            for _, sound in next, workspace:GetDescendants() do
                if sound:IsA'Sound' then
                    sound:Play()
                end
            end
        end
    end
end
spawn(main_loop)
