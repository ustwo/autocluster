#change cursor
document.body.style.cursor = "auto"
bkgnd = new BackgroundLayer({backgroundColor:"white"})

#CONTAINER FOR A WEB VIEW CLUSTER
container = new Layer
 width: 1440, height: 550, rotation:0, backgroundColor: "#333132",x:295,y:-295, scale :0.6
container.center()

clusterimage = new Layer 
	x:0, y:0, width:1440, height:550, image:"images/Cluster 13.png"
container.addSubLayer(clusterimage)

#42 image
clustertext = new Layer 
	x:0, y:0, width:1440, height:550, image:"images/Cluster13text.png"
container.addSubLayer(clustertext)

#HEADTRACKER JS used here - follow index.html text
videoInput = document.getElementById('inputVideo')
canvasInput = document.getElementById('inputCanvas')

# requires headPosition : true in Tracker constructor
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

  
