-- Initialize --
local rx, ry = getResolution()
local vw = rx/100
local vh = ry/100

local layer = createLayer()
local font = loadFont(getAvailableFontName(1), 5.9*vh) 

--- Render Order ---

OrderCX = 75*vw
OrderCY = 25*vh + 75*vh/2
Margin = 25*vh

setNextFillColor(layer, 0, 1, 1, 1)
addQuad(layer, OrderCX - 0.2*Margin, OrderCY - 0.3*Margin, OrderCX - 0.4*Margin, OrderCY + 0.2*Margin, OrderCX + 0.4*Margin, OrderCY + 0.3*Margin, OrderCX + 0.4*Margin, OrderCY - 0.4*Margin)

setNextFillColor(layer, 1, 0, 1, 1)
addTriangle(layer, OrderCX - 0.6*Margin, OrderCY + 0.6*Margin, OrderCX + 0.6*Margin, OrderCY + 0.6*Margin, OrderCX, OrderCY -  0.6*Margin)

addLine(layer, OrderCX, OrderCY - Margin, OrderCX, OrderCY + Margin)

setNextFillColor(layer, 0, 0, 1, 1)
addCircle(layer, OrderCX, OrderCY, 0.8*Margin)

setNextFillColor(layer, 0, 1, 0, 1)
addBoxRounded(layer, OrderCX - 0.8*Margin, OrderCY -  0.8*Margin, 2*0.8*Margin, 2*0.8*Margin, 2*vh)

setNextFillColor(layer, 1, 0, 0, 1)
addBox(layer, OrderCX - Margin, OrderCY - Margin, 2*Margin, 2*Margin)

addBezier(layer, OrderCX - Margin - 5*vh, OrderCY, OrderCX, OrderCY, OrderCX, OrderCY - Margin)

--- Stroke Ingress Margin ---
IngressMargin = 1

setNextFillColor(layer, 1, 0, 0, 1)
addQuad(layer, 5*vw + IngressMargin, 15*vh, 5*vw + IngressMargin, 25*vh - IngressMargin, 10*vw - IngressMargin, 25*vh - IngressMargin, 10*vw - IngressMargin, 15*vh)

setNextFillColor(layer, 0, 1, 1, 1)
addQuad(layer, 5*vw + IngressMargin, 5*vh + IngressMargin, 5*vw + IngressMargin, 15*vh + IngressMargin, 10*vw - IngressMargin, 15*vh + IngressMargin, 10*vw - IngressMargin, 5*vh + IngressMargin)

--- Stroke Ingress Margin ---
IngressMargin = 1

setNextFillColor(layer, 1, 1, 1, 1)
addQuad(layer, 15*vw + IngressMargin, 15*vh + IngressMargin, 15*vw + IngressMargin, 25*vh - IngressMargin, 20*vw - IngressMargin, 25*vh - IngressMargin, 20*vw - IngressMargin, 15*vh + IngressMargin)

setNextFillColor(layer, 1, 1, 1, 1)
addQuad(layer, 15*vw + IngressMargin, 5*vh + IngressMargin, 15*vw + IngressMargin, 15*vh - IngressMargin, 20*vw - IngressMargin, 15*vh - IngressMargin, 20*vw - IngressMargin, 5*vh + IngressMargin)

--- Stroke Ingress Margin ---
IngressMargin = 1

setNextStrokeWidth(layer,0*vh)
setNextStrokeColor(layer,0, 0, 1, 1)
setNextFillColor(layer, 1, 1, 1, 1)
addQuad(layer, 25*vw, 15*vh, 25*vw, 25*vh, 35*vw, 25*vh, 35*vw, 15*vh)

setNextFillColor(layer, 1, 1, 1, 1)
addQuad(layer, 25*vw + IngressMargin, 5*vh, 25*vw + IngressMargin, 15*vh + IngressMargin, 35*vw - IngressMargin, 15*vh + IngressMargin, 35*vw - IngressMargin, 5*vh)

--- Stroke Ingress Margin ---
IngressMargin = 1

setNextStrokeWidth(layer,1*vh)
setNextStrokeColor(layer,0, 0, 1, 1)
setNextFillColor(layer, 1, 1, 1, 1)
addQuad(layer, 40*vw, 15*vh, 40*vw, 25*vh, 50*vw, 25*vh, 50*vw, 15*vh)

setNextFillColor(layer, 1, 1, 1, 1)
addQuad(layer, 40*vw + IngressMargin, 5*vh, 40*vw + IngressMargin, 15*vh + IngressMargin, 50*vw - IngressMargin, 15*vh + IngressMargin, 50*vw - IngressMargin, 5*vh)

--- Stroke Margin ---

setNextStrokeWidth(layer,1*vh)
setNextStrokeColor(layer,0, 0, 1, 1)
setNextFillColor(layer, 1, 1, 1, 1)
addQuad(layer, 55*vw, 15*vh, 55*vw, 25*vh, 65*vw, 25*vh, 65*vw, 15*vh)

setNextFillColor(layer, 1, 1, 1, 1)
addQuad(layer, 55*vw, 5*vh, 55*vw, 15*vh, 65*vw, 15*vh, 65*vw, 5*vh)

--- Margin Overlap ---

setNextStrokeWidth(layer,1*vh)
setNextStrokeColor(layer,0, 0, 1, 0.5)
setNextFillColor(layer, 1, 1, 1, 1)
addQuad(layer, 70*vw, 15*vh, 70*vw, 25*vh, 80*vw, 25*vh, 80*vw, 15*vh)

setNextStrokeWidth(layer,1*vh)
setNextStrokeColor(layer,1, 0, 0, 0.5)
setNextFillColor(layer, 1, 1, 1, 1)
addQuad(layer, 70.5*vw, 5*vh, 70.5*vw, 15*vh, 79.5*vw, 15*vh, 79.5*vw, 5*vh)


--- Boundary Overlap ---

setNextStrokeWidth(layer,1*vh)
setNextStrokeColor(layer,0, 0, 1, 0.5)
setNextFillColor(layer, 1, 1, 1, 1)
addQuad(layer, 85*vw, 15*vh, 85*vw, 25*vh, 95*vw, 25*vh, 95*vw, 15*vh)

setNextStrokeWidth(layer,1*vh)
setNextStrokeColor(layer,1, 0, 0, 0.5)
setNextFillColor(layer, 1, 1, 1, 1)
addQuad(layer, 85*vw, 5*vh, 85*vw, 15*vh, 95*vw, 15*vh, 95*vw, 5*vh)

--- Rotations --- 

local Pie = createLayer()

x1 = 0.5
x2 = 0.6
y1 = 25
y2 = 30

Data = 100

for ii = 0,360*Data/100,3 do
    
    theta = 180 + ii
    
    setNextFillColor(Pie,1,1,1,1)
    addQuad(Pie,
        50*vw - (-x2*vw*math.cos(math.rad(theta))+y2*vh*math.sin(math.rad(theta))),
        50*vh - (-x2*vw*math.sin(math.rad(theta))-y2*vh*math.cos(math.rad(theta))),
        50*vw - (x2*vw*math.cos(math.rad(theta))+y2*vh*math.sin(math.rad(theta))),
        50*vh - (x2*vw*math.sin(math.rad(theta))-y2*vh*math.cos(math.rad(theta))),
        50*vw - (x1*vw*math.cos(math.rad(theta))+y1*vh*math.sin(math.rad(theta))),
        50*vh - (x1*vw*math.sin(math.rad(theta))-y1*vh*math.cos(math.rad(theta))),
        50*vw - (-x1*vw*math.cos(math.rad(theta))+y1*vh*math.sin(math.rad(theta))),
        50*vh - (-x1*vw*math.sin(math.rad(theta))-y1*vh*math.cos(math.rad(theta)))
    )
      
    
end

for ii = math.floor(360*Data/(7.2*100))*7.2,359,7.2 do
    
    theta = 180 + ii
    
    setNextFillColor(Pie,0.2,0.7,1,0.1)
    addQuad(Pie,
        50*vw - (-x2*vw*math.cos(math.rad(theta))+y2*vh*math.sin(math.rad(theta))),
        50*vh - (-x2*vw*math.sin(math.rad(theta))-y2*vh*math.cos(math.rad(theta))),
        50*vw - (x2*vw*math.cos(math.rad(theta))+y2*vh*math.sin(math.rad(theta))),
        50*vh - (x2*vw*math.sin(math.rad(theta))-y2*vh*math.cos(math.rad(theta))),
        50*vw - (x1*vw*math.cos(math.rad(theta))+y1*vh*math.sin(math.rad(theta))),
        50*vh - (x1*vw*math.sin(math.rad(theta))-y1*vh*math.cos(math.rad(theta))),
        50*vw - (-x1*vw*math.cos(math.rad(theta))+y1*vh*math.sin(math.rad(theta))),
        50*vh - (-x1*vw*math.sin(math.rad(theta))-y1*vh*math.cos(math.rad(theta)))
    )
      
    
end

setNextFillColor(Pie,0,0,0,0)
setNextStrokeColor(Pie,0.2,0.7,1,1)
setNextStrokeWidth(Pie,0.5*vh)
addCircle(Pie,50*vw,50*vh,23*vh)

setNextFillColor(Pie,0,0,0,0)
setNextStrokeColor(Pie,0.2,0.7,1,1)
setNextStrokeWidth(Pie,0.5*vh)
addCircle(Pie,50*vw,50*vh,31.5*vh)

setLayerOrigin(Pie,0.5*rx,0.5*ry)
setLayerScale(Pie,0.75,0.75)
setLayerTranslation(Pie,-0.25*rx, 0.125*ry)


