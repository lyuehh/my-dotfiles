hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
    hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send():release()
end)

hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", hs.reload):start()
hs.alert.show("Config loaded")
hs.dockicon.hide()

local hyper = {'alt', 'cmd'}
local hyperCtrl = {'ctrl', 'alt', 'cmd'}

local key2App = {
    q = 'QQ',
    r = 'Safari',
    b = 'Mail',
    m = 'MacVim',
    j = 'TextMate',
    x = 'xScope',
    s = 'Skim',
    p = 'Adobe Photoshop CC 2014',
    f = 'Firefox',
    u = 'iTerm',
    w = 'Preview',
    e = 'Evernote',
    n = 'Finder',
    g = 'Google Chrome',
}
for key, app in pairs(key2App) do
    hs.hotkey.bind(hyper, key, function() hs.application.launchOrFocus(app) end)
end


hs.hotkey.bind(hyper, "right", function() resize(1, 0, 2, 1) end)
hs.hotkey.bind(hyper, "left", function() resize(0, 0, 2, 1) end)
hs.hotkey.bind(hyper, "up", function() fullscreen() end)
hs.hotkey.bind(hyper, "down", function() center() end)
-- hs.hotkey.bind(hyper, "down", function() resize(0, 1, 1, 2) end)
-- hs.hotkey.bind(hyper, "up", function() resize(0, 0, 1, 2) end)
-- hs.hotkey.bind(hyper, "a", function() resize(0, 0, 1, 1) end)

hs.hotkey.bind(hyper, "1", function() resize(0, 0, 2, 2) end)
hs.hotkey.bind(hyper, "2", function() resize(1, 0, 2, 2) end)


hs.hotkey.bind(hyperCtrl, "right", function() hs.window.focusedWindow():moveOneScreenEast(0) end)
hs.hotkey.bind(hyperCtrl, "left", function() hs.window.focusedWindow():moveOneScreenWest(0) end)

hs.hotkey.bind(hyperCtrl, "l", function() hs.caffeinate.lockScreen() end)
hs.hotkey.bind(hyperCtrl, "e", function() hs.applescript.applescript('tell app \"Finder\" to empty the trash') end)
-- hs.hotkey.bind(hyperCtrl, "s", function() hs.caffeinate.startScreensaver() end)

-- Hints
hs.hotkey.bind(hyper, "h", function() hs.hints.windowHints() end)

function tolerance(a, b) return math.abs(a - b) < 32 end

function resize(x, y, w, h)
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local max = win:screen():frame()
    local ww = max.w / w
    local hh = max.h / h
    local xx = max.x + (x * ww)
    local yy = max.y + (y * hh)

    if tolerance(f.x, xx) and tolerance(f.y, yy) and tolerance(f.w, ww) and tolerance(f.h, hh) then
        if w > h then
            x = (x + 1) % w
            elseif h > w then
                y = (y + 1) % h
            else
                x = (x == 0) and 0.9999 or 0
                y = (y == 0) and 0.9999 or 0
            end
            return resize(x, y, w, h)
        end
        f.x = xx
        f.y = yy
        f.w = ww
        f.h = hh
        return win:setFrame(f)
end

function fullscreen()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local max = win:screen():frame()

    f.x = max.x
    f.w = max.w
    f.y = max.y
    f.h = max.h
    win:setFrame(f)
end

function center()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local max = win:screen():frame()
    f.x = 150
    f.y = 150
    f.w = max.w / 8 * 6
    f.h = max.h / 8 * 6
    win:setFrame(f)
end
