#change cursor
document.body.style.cursor = "auto"
bkgnd = new BackgroundLayer({backgroundColor:"transparent"})

#CONTAINER FOR A WEB VIEW CLUSTER
supercontainer = new Layer
 width: 1600, height: 500, rotation:0, backgroundColor: "#333132", scale :0.6
supercontainer.center()

videocontainer = new Layer
 width: 360, height: 440, rotation:0, backgroundColor: "white",x:28,y:30, scale :1
supercontainer.addSubLayer(videocontainer)


# VIDEO INPUT
# html avoided and element created in here
videoInput = document.createElement('video')
canvasInput = document.createElement('canvas')

videoInput.style.position = 'absolute'
canvasInput.style.position = 'absolute'
videoInput.style.top = '0px'
videoInput.style.left = '-150px'
videoInput.style.zIndex = '10000'
videoInput.style.display = 'block'
videoInput.style.height = '440px'

#DOM element and child!!!!
videocontainer._element.appendChild(videoInput)


container = new Layer
 width: 1440, height: 550, rotation:0, backgroundColor: "#333132",x:280,y:-25, scale :0.8
supercontainer.addSubLayer(container)

clusterimage = new Layer 
	x:0, y:0, width:1440, height:550, image:"images/Cluster 13.png"
container.addSubLayer(clusterimage)

#42 image
clustertext = new Layer 
	x:0, y:0, width:1440, height:550, image:"images/Cluster13text.png"
container.addSubLayer(clustertext)

crosshair = new Layer 
	x:0, y:0, width:1440, height:550, image:"images/Cluster13text markers.png", opacity :0.3	
container.addSubLayer(crosshair)

# HEADTRACKER JS used for events tracking
# Requires headPosition : true in Tracker constructor
facez = 0
facey = 0
scaleZ = 0
moveY = 0

#Event for head tracking in the Y and Z planes
handleHeadTrackingEvent = (e) ->
  console.log 'headtrackingEvent: ', e.x, e.y, e.z
  
  #Move clustertext 42 based on event Y movement
  facey = Utils.round(e.y, 0)
  moveY = Utils.modulate(facey,[6, 24], [-50, 50])
  if moveY < - 50
   moveY = -50
  if moveY > 50
   moveY = 50
  movemoment = Utils.round(moveY,-1)
  clustertext.y = movemoment
  #crosshair.y = movemoment
  
  #Scale on approach and retract based on event Z movement
  facez = Utils.round(e.z, 0)
  scaleZ = Utils.modulate(facez,[60, 10], [1, 0.3])
  scalemoment = Utils.round(scaleZ,1)
  if scalemoment > 1.4
   scalemoment = 1.4
  clustertext.scale = scalemoment
  return

#Tracker constructor
htracker = new (headtrackr.Tracker)
htracker.init videoInput, canvasInput
htracker.start(
  calcAngles : true,
  ui : false,
  headPosition : true,
  )
  
# requires headPosition : true in Tracker constructor
document.addEventListener 'headtrackingEvent', handleHeadTrackingEvent

  

