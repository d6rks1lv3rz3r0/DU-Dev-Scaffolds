-- Initialize --
local rx, ry = getResolution()
local vw = rx/100
local vh = ry/100

local layer = createLayer()
local font = loadFont(getAvailableFontName(1), 5.9*vh) 

-- Vertical Alignment --

setNextFillColor(layer, 255/255, 255/255, 255/255, 1)
addLine(layer, 0, 15*vh, rx, 15*vh)

setNextFillColor(layer, 128/255, 0/255, 0/255, 1)
setNextTextAlign(layer, AlignH_Left, AlignV_Ascender)
addText(layer, font, "-Ascender-", 0*vw, 15*vh)

setNextFillColor(layer, 250/255, 190/255, 212/255, 1)
setNextTextAlign(layer, AlignH_Left, AlignV_Top)
addText(layer, font, "-Top-", 19*vw, 15*vh)

setNextFillColor(layer, 0/255, 0/255, 255/255, 1)
setNextTextAlign(layer, AlignH_Left, AlignV_Middle)
addText(layer, font, "-Middle-", 28*vw, 15*vh)

setNextFillColor(layer, 128/255, 128/255, 128/255, 1)
setNextTextAlign(layer, AlignH_Right, AlignV_Baseline)
addText(layer, font, "-Baseline-", 64*vw, 15*vh)

setNextFillColor(layer, 70/255, 240/255, 240/255, 1)
setNextTextAlign(layer, AlignH_Right, AlignV_Bottom)
addText(layer, font, "-Bottom-", 79*vw, 15*vh)

setNextFillColor(layer, 0/255, 128/255, 128/255, 1)
setNextTextAlign(layer, AlignH_Right, AlignV_Descender)
addText(layer, font, "-Descender-", rx, 15*vh)

-- Horizontal Alignment --
setNextFillColor(layer, 255/255, 255/255, 255/255, 1)
addLine(layer, 17*vw, 50*vh, 17*vw, ry)

setNextFillColor(layer, 255/255, 0/255, 0/255, 1)
setNextTextAlign(layer, AlignH_Left, AlignV_Middle)
addText(layer, font, "|", 17*vw, 60*vh)

setNextFillColor(layer, 255/255, 0/255, 0/255, 1)
setNextTextAlign(layer, AlignH_Left, AlignV_Middle)
addText(layer, font, "-Left-", 17*vw, 65*vh)

setNextFillColor(layer, 255/255, 0/255, 0/255, 1)
setNextTextAlign(layer, AlignH_Left, AlignV_Middle)
addText(layer, font, "|", 17*vw, 70*vh)

setNextFillColor(layer, 255/255, 255/255, 0/255, 1)
setNextTextAlign(layer, AlignH_Center, AlignV_Middle)
addText(layer, font, "|", 17*vw, 70*vh)

setNextFillColor(layer, 255/255, 255/255, 0/255, 1)
setNextTextAlign(layer, AlignH_Center, AlignV_Middle)
addText(layer, font, "-Center-", 17*vw, 75*vh)

setNextFillColor(layer, 255/255, 255/255, 0/255, 1)
setNextTextAlign(layer, AlignH_Center, AlignV_Middle)
addText(layer, font, "|", 17*vw, 80*vh)

setNextFillColor(layer, 0/255, 0/255, 255/255, 1)
setNextTextAlign(layer, AlignH_Right, AlignV_Middle)
addText(layer, font, "|", 17*vw, 80*vh)

setNextFillColor(layer, 0/255, 0/255, 255/255, 1)
setNextTextAlign(layer, AlignH_Right, AlignV_Middle)
addText(layer, font, "-Right-", 17*vw, 85*vh)

setNextFillColor(layer, 0/255, 0/255, 255/255, 1)
setNextTextAlign(layer, AlignH_Right, AlignV_Middle)
addText(layer, font, "|", 17*vw, 90*vh)

-- Fonts --

fontlist = {1, 3, 6, 8, 10, 11}
for ii = 1, #fontlist, 1 do 
    fontindex = fontlist[ii] 
    local nextfont = loadFont(getAvailableFontName(fontindex), 5.9*vh)
    setNextTextAlign(layer, AlignH_Left, AlignV_Middle)
    setNextFillColor(layer, 128/255, 128/255, 128/255, 1)
    addText(layer, nextfont, fontindex .. " " .. getAvailableFontName(fontindex), 35*vw, 50*vh + ii*7*vh)
    setNextTextAlign(layer, AlignH_Right, AlignV_Middle)
    addText(layer, nextfont, "Font Comparison", 98*vw, 50*vh + ii*7*vh)
end

-- Shadow --

setNextFillColor(layer, 255/255, 255/255, 255/255, 1)
setNextTextAlign(layer, AlignH_Left, AlignV_Middle)
setFontSize(font, 12*vh)
setNextShadow(layer, 2*vh, 255/255, 0, 0, 1)
addText(layer, font, "Shadow", 2*vw, 35*vh)

-- Stroke --

setNextFillColor(layer, 255/255, 255/255, 255/255, 1)
setNextTextAlign(layer, AlignH_Right, AlignV_Middle)
setNextStrokeColor(layer,255/255, 0/255, 0/255, 1)
setNextStrokeWidth(layer, vh)
addText(layer, font, "Stroke", 98*vw, 35*vh)

-- Bounds --

setNextFillColor(layer, 255/255, 255/255, 255/255, 1)
setNextTextAlign(layer, AlignH_Center, AlignV_Middle)
setNextStrokeWidth(layer, vh)
addText(layer, font, "Bounds", 50*vw, 35*vh)

wb, hb = getTextBounds(font,"Bounds") 

setNextStrokeColor(layer, 255/255, 0/255, 255/255, 1)
addLine(layer, 50*vw + wb/2, 35*vh + hb/2, 50*vw + wb/2, 35*vh - hb/2)
setNextStrokeColor(layer, 255/255, 0/255, 255/255, 1)
addLine(layer, 50*vw + wb/2, 35*vh + hb/2, 50*vw - wb/2, 35*vh + hb/2)
setNextStrokeColor(layer, 255/255, 0/255, 255/255, 1)
addLine(layer, 50*vw - wb/2, 35*vh - hb/2, 50*vw + wb/2, 35*vh - hb/2)
setNextStrokeColor(layer, 255/255, 0/255, 255/255, 1)
addLine(layer, 50*vw - wb/2, 35*vh - hb/2, 50*vw - wb/2, 35*vh + hb/2)