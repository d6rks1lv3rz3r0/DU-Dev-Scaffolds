-- Colorspace Conversion

function HSVtoRGB(h, s, v)
    local r, g, b
    
    h = math.floor(h)
    s = math.floor(s)
    v = math.floor(v)

    if s <= 0 then
        r = v
        g = v
        b = v
        return r, g, b
    end

    local region = math.floor(h / 43)
    local remainder = math.floor((h - (region*43)) * 6)
    
    local p = (v * (255 - s)) >> 8
    local q = (v * (255 - ((s * remainder) >> 8))) >> 8
    local t = (v * (255 - ((s * (255 - remainder)) >> 8))) >> 8
    
    if region == 0 then
        r = v
        g = t
        b = p
    elseif region == 1 then
        r = q
        g = v
        b = p
    elseif region == 2 then
        r = p
        g = v
        b = t
    elseif region == 3 then
        r = p
        g = q
        b = v
    elseif region == 4 then
        r = t
        g = p
        b = v
    else
        r = v
        g = p
        b = q
    end
    
    return r, g, b
end

-- Initialize --
local rx, ry = getResolution()
local vw = rx/100
local vh = ry/100

-- ColorMap
local layer = createLayer()
url = "assets.prod.novaquark.com/31785/4cab2d57-2445-4e93-8e81-df28c101d186.png"
image = loadImage(url)
addImage(layer, image, 0, 0, rx, ry)

-- Mouse to HSV --
cx, cy = getCursor()
cw = cx/rx
ch = cy/ry

local h = cw * 255
local s = 255
local v = 255

if ch < 0.5 then
    s = (ch*2) * 255
end

if ch > 0.5 then
    v = (1 - ((ch-0.5)*2)) * 255
end

r, g, b = HSVtoRGB(h, s, v)

-- Adaptive Pop Up --
local PopUp = createLayer()

setNextStrokeColor(PopUp,0/255, 0/255, 0/255, 1)
setNextStrokeWidth(PopUp, 0.5*vh)
addLine(PopUp, cx + 0.5*vh, cy, cx + 1.5*vh, cy)

setNextStrokeColor(PopUp,0/255, 0/255, 0/255, 1)
setNextStrokeWidth(PopUp, 0.5*vh)
addLine(PopUp, cx - 0.5*vh, cy, cx - 1.5*vh, cy)

setNextStrokeColor(PopUp,0/255, 0/255, 0/255, 1)
setNextStrokeWidth(PopUp, 0.5*vh)
addLine(PopUp, cx, cy + 0.5*vh, cx, cy + 1.5*vh)

setNextStrokeColor(PopUp,0/255, 0/255, 0/255, 1)
setNextStrokeWidth(PopUp, 0.5*vh)
addLine(PopUp, cx, cy - 0.5*vh, cx, cy - 1.5*vh)

setNextFillColor(PopUp, r/255, g/255, b/255, 1)
setNextStrokeColor(PopUp,0/255, 0/255, 0/255, 1)
setNextStrokeWidth(PopUp, 0.5*vh)

if (cx + 22*vw) < rx then
    if (cy - 22*vh) < 0 then
        addBoxRounded(PopUp, cx + 2*vh, cy +2*vh, 20*vw, 20*vh, vh)
    else
        addBoxRounded(PopUp, cx + 2*vh, cy -22*vh, 20*vw, 20*vh, vh)
    end
else
    if (cy - 22*vh) < 0 then
        addBoxRounded(PopUp, cx - 22*vw, cy +2*vh, 20*vw, 20*vh, vh)
    else
        addBoxRounded(PopUp, cx - 22*vw, cy -22*vh, 20*vw, 20*vh, vh)
    end 
end

-- Report --
if getCursorReleased() then
    logMessage(string.format("R: %i, G: %i, B: %i", r, g, b))
    setOutput(string.format("%i,%i,%i", r, g, b))
end

requestAnimationFrame(1)