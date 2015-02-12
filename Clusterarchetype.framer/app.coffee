#Code elements for the unbranded protottype cluster. As can be seen at www.ustwo.com/auto and www.ustwo.com/blog
#Built using the amazing FramerJS platform and Framer Studio

#change global cursor
document.body.style.cursor = "auto"
bkgnd = new BackgroundLayer({backgroundColor:"white"})

#CONTAINER FOR BUTTONS 
buttoncontainer = new Layer
 width: 900, height: 500, rotation:0, backgroundColor: "transparent",x:295,y:-295, scale :1, opacity : 0
buttoncontainer.center()

#CONTAINER FOR A WEB VIEW CLUSTER
container = new Layer
 width: 550, height: 1440, rotation:270, backgroundColor: "#333132",x:295,y:-295, scale :0.6
container.center()

#SCALE for devices
if bkgnd.width<1000
 container.scale = 0.6 * (bkgnd.width/864)
 buttoncontainer.scale = (bkgnd.width/864)

else 
 container.scale = 0.6 
 buttoncontainer.scale = 1
 
#COLORS  
blue= "#0e95e6"
green= "#2ad880"
red= "#fc5454"
orange= "#ff8948"

#FONTS USED FOR THE APP
#Medium
style = document.createElement('style');
style.type = 'text/css';
style.appendChild(document.createTextNode("@font-face {\n" +
"\tfont-family: \"myFont\";\n" + 
"\tsrc: local(''), url('fonts/Roboto-Medium-webfont.ttf') format('opentype');\n" + 
"}\n" + 
"\tfont-family: myFont !important;\n" + 
"}\n"));
document.getElementsByTagName('head')[0].appendChild(style);

#Regular
style = document.createElement('style');
style.type = 'text/css';
style.appendChild(document.createTextNode("@font-face {\n" +
"\tfont-family: \"myFont2\";\n" + 
"\tsrc: local(''), url('fonts/Roboto-Regular-webfont.ttf') format('opentype');\n" + 
"}\n" + 
"\tfont-family: myFont2 !important;\n" + 
"}\n"));
document.getElementsByTagName('head')[0].appendChild(style);

#Light
style = document.createElement('style');
style.type = 'text/css';
style.appendChild(document.createTextNode("@font-face {\n" +
"\tfont-family: \"myFont3\";\n" + 
"\tsrc: local(''), url('fonts/Roboto-Light-webfont.ttf') format('opentype');\n" + 
"}\n" + 
"\tfont-family: myFont3 !important;\n" + 
"}\n"));
document.getElementsByTagName('head')[0].appendChild(style);


#MASTER LAYERS
fuel = new Layer
 width: 550, height: 1440, y: 80 ,x :0, backgroundColor: "#222222" , opacity : 0
speed = new Layer
 width: 550, height: 1440, y: -1360 ,x :0, backgroundColor: "#333333"
 
#Speed limits as grey background
bkgnd = new Layer 
	x:0, y:28, width:550, height:1440, image:"images/bkgnd1440.png", opacity: 0.9
speed.addSubLayer(bkgnd)

#Range partitions to show relative position
fubkgnd = new Layer 
	x:-445, y:445, width:1440, height:550, image:"images/bg_park.png",rotation:90
fuel.addSubLayer(fubkgnd)
 
#RANGE elements
fuelstatus = new Layer
 width: 10, height: 1440,backgroundColor: green, opacity: 0.8
fuel.addSubLayer(fuelstatus) 

fuelstatuswhite = new Layer x:140, width: 130, height: 1440, backgroundColor: 'white', opacity:0.1
fuelstatus.addSubLayer(fuelstatuswhite) 

locline1 = new Layer
   x:-370, y:713, width:1440, height:6, image:"images/dashedline.png", rotation:90, opacity:0
fuel.addSubLayer(locline1)

locicon = new Layer 
	x:350, y:0, width:34, height:56, image:"images/icon_pin.png", rotation: 90, scale : 1, opacity: 0
fuel.addSubLayer(locicon)

iconrange = new Layer 
	x:35, y:18, width:24, height:46, image:"images/icon_range.png", rotation:90, opacity:0
fuel.addSubLayer(iconrange)

homebk = new Layer x:-186, y:920, width:600, height:400, rotation:90, backgroundColor:'transparent', opacity:0
homebk.html = 'ustwo - work'
homebk.style =
  fontFamily:'myfont'
  textAlign: 'center'
  fontSize:'30px'
  color:'black'
  padding:'0px'
  opacity: 0
fuel.addSubLayer(homebk) 
home = new Layer x:-182, y:920, width:600, height:400, rotation:90,opacity: 0, backgroundColor:'transparent'
home.html = 'ustwo - work'
home.style =
  fontFamily:'myfont'
  textAlign: 'center'
  fontSize:'30px'
  color:'white'
  padding:'0px'
  opacity: 0
fuel.addSubLayer(home) 

mileagenum = 0
#Range and representation
mileagebk = new Layer x:-243, y:500, width:400, height:400, rotation:90, opacity:0.2, backgroundColor:'transparent'
mileagebk.html = mileagenum
mileagebk.style =
  fontFamily:'myfont3'
  textAlign: 'center'
  fontSize:'90px'
  color:'black'
  padding:'20px'
fuel.addSubLayer(mileagebk) 
mileage = new Layer x:-240, y:500, width:400, height:400, rotation:90, backgroundColor:'transparent'
mileage.html = mileagenum
mileage.style =
  fontFamily:'myfont3'
  textAlign: 'center'
  fontSize:'90px'
  color:'white'
  padding:'20px'
fuel.addSubLayer(mileage) 

youhave = new Layer x:-170, y:500, width:400, height:400, rotation:90,opacity: 1, backgroundColor:'transparent'
youhave.html = 'YOU HAVE'
youhave.style =
  fontFamily:'myfont2'
  textAlign: 'center'
  fontSize:'20px'
  color:'white'
  padding:'0px'
fuel.addSubLayer(youhave) 


miles = new Layer x:-350, y:500, width:400, height:400, rotation:90,opacity: 1, backgroundColor:'transparent'
miles.html = 'MILES REMAINING'
miles.style =
  fontFamily:'myfont2'
  textAlign: 'center'
  fontSize:'20px'
  color:'white'
  padding:'0px'
fuel.addSubLayer(miles) 

#SPEED elements
#speed and statuses
speedstatus = new Layer
 width: 2, height: 1440, backgroundColor: blue
speed.addSubLayer(speedstatus) 

#white bands on speedstatus + icon
speedmarker = new Layer 
	x:-440, y:450, width:1440, height:550, image:"images/markers.png", rotation:90
speedstatus.addSubLayer(speedmarker) 

hazard = new Layer 
	x:-170, y:450, width:1440, height:550, image:"images/hazard.png", rotation:90, opacity: 0
speedstatus.addSubLayer(hazard) 	

#SPEED rain case
rainicon = new Layer 
	x:800, y:720, width:96, height:102, image:"images/icon_slippery.png", rotation: 90, scale : 1, opacity: 1
speed.addSubLayer(rainicon)

speedicon = new Layer 
	x:800, y:720, width:96, height:102, image:"images/icon_speeding.png", rotation: 90, scale : 1, opacity: 1
speed.addSubLayer(speedicon)

#speed and representation
speedy = Utils.modulate(speedstatus.width,[50, 750], [0, 90]) 
speedy = Utils.round(speedy,0)

#text with shadows etc
numberphbk = new Layer x:-23, y:570, width:400, height:400, rotation:90, backgroundColor:'transparent', opacity : 0.2
numberphbk.html = speedy
numberphbk.style =
  fontFamily:'myfont3'
  textAlign: 'center'
  fontSize:'130px'
  color:'black'
  padding:'80px'
speed.addSubLayer(numberphbk) 
numberph = new Layer x:-20, y:570, width:400, height:400, rotation:90, backgroundColor:'transparent'
numberph.html = speedy
numberph.style =
  fontFamily:'myfont3'
  textAlign: 'center'
  fontSize:'130px'
  color:'#ffffff'
  padding:'80px'
speed.addSubLayer(numberph) 

mph = new Layer x:-350, y:570, width:400, height:400, rotation:90,opacity: 0, backgroundColor:'transparent'
mph.html = 'MPH'
mph.style =
  fontFamily:'myfont2'
  textAlign: 'center'
  fontSize:'20px'
  color:'#ffffff'
  padding:'0px'
speed.addSubLayer(mph) 


#REVERSE
reverserect= new Layer
 width:550, height: 1440, x : 0, y: 1443, opacity : 1,  backgroundColor: "#fff" 
reverseimage = new Layer 
 x : -50, y: 500,width:758, height:350,rotation:90, image:"images/reversingcamera.gif",scale: 2
#reverseimage.center()
reverserect.addSubLayer(reverseimage) 

#PNDR - GEAR POSITIONING and elements
#overlays
PNDRbkgnd= new Layer 
	x:0, y:0, width:750, height:80,opacity:0 ,backgroundColor: "#ffffff"

gearicon = new Layer 
	x:40, y:15, width:12, height:48, image:"images/icon_gear.png", rotation: 90,opacity: 0
	

P = new Layer x:420, y:-10, width:120, height:100, rotation:90,opacity: 0, backgroundColor:'transparent'
P.html = 'P'
P.style =
  fontFamily:'myfont2'
  textAlign: 'center'
  fontSize:'50px'
  color:'#ffffff'
  padding:'37px'

N = new Layer x:340, y:-10, width:120, height:100, rotation:90,opacity: 0, backgroundColor:'transparent'
N.html = 'N'
N.style =
  fontFamily:'myfont2'
  textAlign: 'center'
  fontSize:'50px'
  color:'#ffffff'
  padding:'37px'
  
D = new Layer x:260, y:-10, width:120, height:100, rotation:90,opacity: 0, backgroundColor:'transparent'
D.html = 'D'
D.style =
  fontFamily:'myfont2'
  textAlign: 'center'
  fontSize:'50px'
  color:'#ffffff'
  padding:'37px'
  
R = new Layer x:180, y:-10, width:120, height:100, rotation:90,opacity: 0, backgroundColor:'transparent'
R.html = 'R'
R.style =
  fontFamily:'myfont2'
  textAlign: 'center'
  fontSize:'50px'
  color:'#ffffff'
  padding:'37px'

#Alerts
alertsms = new Layer 
	x:235, y:-200, width:96, height:102, image:"images/icon_message.png", rotation: 90,
opacity:0

#GLOBAL VARIABLES
#Speeds of speed element's movement 
fastsp = 0.001
medsp = 0.005
slowsp = 0.01

#buttons for acce and decce and reverse
buttonA = new Layer
 width:360 , height:40,  x: 522, y:430, opacity : 1, backgroundColor:"#e3e3e3", 
buttonA.html = "Accelerate"
buttonA.style =
  #textAlign:'center'
  fontFamily:'myfont'
  textAlign:'center'
  fontSize:'16px'
  color:'#424242'
  padding:'8px'
buttonA.shadowY = 5
buttonA.shadowColor = "#b2b2b1"


buttonB = new Layer
 width:320 , height:40,  x:185, y:430, opacity : 1, backgroundColor:"#e3e3e3", 
buttonB.html = "Brake"
buttonB.style =
  #textAlign:'center'
  fontFamily:'myfont'
  textAlign:'center'
  fontSize:'16px'
  color:'#424242'
  padding:'8px'
buttonB.shadowY = 5
buttonB.shadowColor = "#b2b2b1"

 
buttonR = new Layer
 width:150 , height:40,  x: 18, y:430, opacity : 1, backgroundColor:"#b2b2b1", 
buttonR.html = "Reverse"
buttonR.style =
  #textAlign:'center'
  fontFamily:'myfont'
  textAlign:'center'
  fontSize:'16px'
  color:'#fafafa'
  padding:'8px'
buttonR.shadowY = 5
buttonR.shadowColor = "#7c7c7c"

buttonAlert = new Layer
 width:80 , height:40,  x: 18, y:0, opacity : 1, backgroundColor:"transparent", borderRadius: 0
#buttonAlert.html = "SMS alert"
buttonAlert.style =
  #textAlign:'center'
  fontFamily:'myfont'
  textAlign:'center'
  fontSize:'16px'
  color:'#black'
  padding:'8px'
# buttonAlert.shadowY = 5
# buttonAlert.shadowColor = "#7c7c7c"

buttoncontainer.addSubLayer(buttonR) 
buttoncontainer.addSubLayer(buttonA) 
buttoncontainer.addSubLayer(buttonB) 
buttoncontainer.addSubLayer(buttonAlert) 

#button states
buttonA.on Events.MouseOver, ->
	 document.body.style.cursor = "pointer"
buttonA.on Events.MouseOut, ->
	 document.body.style.cursor = "auto"

buttonB.on Events.MouseOver, ->
	 document.body.style.cursor = "pointer"
buttonB.on Events.MouseOut, ->
	 document.body.style.cursor = "auto"

buttonR.on Events.MouseOver, ->
	 document.body.style.cursor = "pointer"
buttonR.on Events.MouseOut, ->
	 document.body.style.cursor = "auto"

buttonAlert.on Events.MouseOver, ->
	 document.body.style.cursor = "pointer"
buttonAlert.on Events.MouseOut, ->
	 document.body.style.cursor = "auto"

gearsoff = new Layer 
	x:0, y:0, width:550, height:1440, image:"images/gearsoff.png", opacity: 1

PNDRun = new Layer 
	x:445, y:0, width:70 , height:80, opacity:1 , backgroundColor: "#ffffff"

gearson = new Layer 
	x:-445, y:0, width:550, height:1440, image:"images/gearson.png", opacity:1
PNDRun.addSubLayer(gearson)
 
#CONTAIN EVERYTHING FOR A WEB DISPLAY
container.addSubLayer(fuel) 
container.addSubLayer(speed)  
container.addSubLayer(reverserect)  
container.addSubLayer(PNDRbkgnd)	
container.addSubLayer(gearicon) 
container.addSubLayer(P) 
container.addSubLayer(N) 
container.addSubLayer(D) 
container.addSubLayer(R)
container.addSubLayer(alertsms)
container.addSubLayer(gearsoff)
container.addSubLayer(PNDRun) 


#RESIZE FUNCTION
window.onresize = ->
	#print window.Screen.width
	container.center()
	buttoncontainer.center()


#PREACTION FUNCTIONS	
#speed down
speeddown = ->
    Utils.delay 0.2, ->
     fuel.animate
      properties: { y: 0}
      time : 1
      curve: "ease"
       
     fuelstatus.animate
       properties: { opacity:1}
       time : 0.3
       curve: "ease"
     
     fubkgnd.animate
      properties: { opacity:1}
      time : 0.3
      curve: "ease" 
      
       
     iconrange.animate
       properties: { opacity:0}
       time : 0.8
       curve: "ease" 
      
     home.animate
       properties: { opacity:1}
       time : 1
       curve: "ease"
       
     mileage.animate
       properties: { opacity:1}
       time : 1
       curve: "ease"
       
     miles.animate
       properties: { opacity:1}
       time : 1
       curve: "ease"

     speed.animate
      properties: { y: -1440}
      time : 1
      curve: "ease"
     
     numberph.animate
      properties: { opacity:0}
      time : 0.3
      curve: "ease"  
     
     locicon.animate
      properties : {y:1091}
      time: 0.9
      curve: "ease"

#speed up
speedup = ->
     fuel.animate
      properties: { y: 1360}
      time : 0.2
      curve: "ease"
  
     fuelstatus.animate
      properties: { opacity:1}
      time : 0.2
      curve: "ease" 
      
     fubkgnd.animate
      properties: { opacity:0}
      time : 0.3
      curve: "ease" 
      
     iconrange.animate
      properties: { opacity:1}
      time : 0.2
      curve: "ease" 
     
     home.animate
       properties: { opacity:0}
       time : 0.3
       curve: "ease"
       
      mileage.animate
       properties: { opacity:0}
       time : 0.3
       curve: "ease"
       
      miles.animate
       properties: { opacity:0}
       time : 0.3
       curve: "ease"
  
     P.backgroundColor ='transparent'
     P.style.color='#ffffff'
     #D.backgroundColor ='rgba(256,256,256,0.8)'
     PNDRun.animate
      properties : {x :285}
      time:0.3
      Utils.delay 0.6, ->
       D.style.color='#444444'
     gearson.animate
      properties : {x :-285}
      time:0.3
 
     speed.animate
      properties: {y:-80}
      time : 0.2
      curve: "ease"
  
     numberph.animate
      properties: { opacity:1}
      time : 0.3
      curve: "ease" 
     
     locicon.animate
      properties : {y:13}
      time: 0.18
      curve: "ease"
      
#SPEEDY function - appears in the acceleration and brake functions
speedyfunc = ->
 if speedy < 36
   rainicon.animate
    properties : {opacity: 0}
    time: 0.3
    spring: 'ease-out'	
   hazard.opacity = 0 
   Utils.delay 1,->
    rainicon.x = 600
   
 if speedy < 70
  speedstatus.backgroundColor= "#0e95e6"
 if speedy > 70
  speedstatus.backgroundColor= "#ff8948"
 if speedy > 80
  speedstatus.backgroundColor= "#fc5454"
  speedicon.animate
   properties: {opacity:1, x : 400}
   time: 0.1
   spring: 'spring(100,12,5)'
 if speedy < 80
  speedicon.animate
   properties: {opacity:0}
   time: 0.5
   spring: 'spring(100,12,5)'
  speedicon.x = 600
 if speedy > 120
  clearInterval(setInt)
 if speedy > 10
  mph.animate
   properties: {opacity:1}
 if speedy < 10
  mph.animate
   properties: {opacity:0}
   time:0.1


#ACTION EVENTS
#Initialize Range
setint = null
if speedy < 1
     fuel.y = 0
     fuel.animate
      properties: {opacity : 1}
      time :0.1
      curve:'spring(50,12,5)'
     fubkgnd.animate.opacity = 1 
     
     iconrange.opacity = 0     
     fuelstatus.opacity = 1
     
#      fuelstatus.animate
#       properties: {width: 400}
#       time:1.5
#       spring: 'ease-out'
     
     mileage.opacity = 1
     setInt = Utils.interval 0.0000001, ->	
      if mileagenum < 380
        if mileagenum > 0 && mileagenum < 200
         fuelstatus.width= fuelstatus.width + 1.5
         mileagenum = mileagenum + 1.5
        else if mileagenum > 200 && mileagenum < 250
         fuelstatus.width= fuelstatus.width + 1.25
         mileagenum = mileagenum + 1.25
        else if mileagenum > 250 && mileagenum < 300
         fuelstatus.width= fuelstatus.width + 1
         mileagenum = mileagenum + 1
        else
         fuelstatus.width= fuelstatus.width + 0.5
         mileagenum = mileagenum + 0.5
        mileage.html = Utils.round(mileagenum,0)
        mileagebk.html = Utils.round(mileagenum,0)
        Utils.delay 3,->
         youhave.animate
          properties : {opacity: 0}
          time:0.3
          spring: 'ease-out'
         locicon.animate
          properties : {opacity: 1, x: 335}
          time:0.1
          curve:'spring(200,12,30)'
         locline1.animate
          properties : {opacity: 1}
          time:0.2
          spring: 'ease-out'
         home.animate
          properties : {opacity: 1}
          time:0.4
          spring: 'ease-out'
         homebk.animate
          properties : {opacity: 0.2}
          time:0.4
          spring: 'ease-out'
         #start button container
         Utils.delay 0.5,->
          buttoncontainer.animate
           properties : {opacity: 1}
           time:0.6
           spring: 'ease-out'
     miles.opacity = 1
     speed.y = -1440
     numberph.opacity = 0
     locicon.y = 1091
     P.style.color='#444444'
     

#ACCELERATE with SMS alerts
altrack = 0
raintrack = 0 
#Global null
setInt = null
buttonA.on Events.TouchStart,(e) ->
  e.stopPropagation()     	 
  clearInterval(setInt)
  raintrack++
  altrack++
  #SMS alert
  
  if altrack == 4 
   alertsms.animate
    properties: { y:200, opacity:1}
    time: 2
    curve:'spring(100,12,5)'

   Utils.delay 3, ->
  	 alertsms.animate
      properties: { y:-10,  opacity:0}
      time: 0.1
      curve:'spring(50,12,5)'
      buttonAlert.html = "SMS alert"
      altrack = -3
  
  buttonA.style =
   padding:'11px'
  buttonA.shadowY = 5
  buttonA.shadowColor = "#e3e3e3"
  
  if reverserect.y < 1443
   reverserect.animate
    properties: {y:1443, opacity:1}
    time:1
    curve:'spring(50,12,5)'
   #P.backgroundColor ='rgba(256,256,256,0.8)'
   #P.style.color='#378bd9'
   R.backgroundColor ='transparent'
   R.style.color='#ffffff'
   PNDRun.animate
    properties : {x :445}
    time:0.3
   gearson.animate
    properties : {x :-445}
    time:0.3
  
  
  setInt = Utils.interval medsp, ->	
    speedstatus.width++
    speedy = Utils.modulate(speedstatus.width,[2, 550], [0, 70])
    numberph.html = Utils.round(speedy,0)  
    numberphbk.html = Utils.round(speedy,0) 
    speedyfunc()
    #sp = 0
    
    if speedy > 50 && raintrack == 2
     Utils.delay 2, ->
      speedicon.opacity = 0
      rainicon.animate
       properties : {x:400, opacity:1}
       time: 0.1
       spring: 'spring(100,12,5)'
      hazard.opacity = 1
      raintrack = -3
     
      
    if speedy > 0
     speedup()   

 #DECELERATE on TOUCH END
   buttonA.on Events.TouchEnd,(e) -> 
   	 e.stopPropagation()
   	 #print "N"
     clearInterval(setInt)
     
     buttonA.style =
      padding:'8px'
     buttonA.shadowY = 5
     buttonA.shadowColor = "#b2b2b1"
     
     setInt = Utils.interval slowsp, ->	
       speedstatus.width = speedstatus.width - 0.05
       speedy = Utils.modulate(speedstatus.width,[2, 550], [0, 70])
       numberph.html = Utils.round(speedy,0)
       numberphbk.html = Utils.round(speedy,0) 
       speedyfunc()
          
       if speedy < 0 
        clearInterval(setInt)
        Utils.delay 0.2, ->
         speeddown()
         
         D.backgroundColor ='transparent'
         D.style.color='#ffffff'
         PNDRun.animate
          properties : {x :445}
          time:0.3
          Utils.delay 0.5, ->
           P.style.color='#444444' 
         gearson.animate
          properties : {x :-445}
          time:0.3
       
 #BRAKE on touch start
   buttonB.on Events.TouchStart, (e) ->
   	 e.stopPropagation() 
   	 #print "brake"
     clearInterval(setInt)
     
     buttonB.style =
      padding:'11px'
     buttonB.shadowY = 5
     buttonB.shadowColor = "#e3e3e3"
     
     if reverserect.y < 1443
      reverserect.animate
       properties: {y:1443, opacity:1}
       time:1
       curve:'spring(50,12,5)'
  
      R.backgroundColor ='transparent'
      R.style.color='#ffffff'
      PNDRun.animate
       properties : {x :445}
       time:0.3
      gearson.animate
       properties : {x :-445}
       time:0.3
     
     setInt = Utils.interval medsp, ->	
       speedstatus.width = speedstatus.width - 0.5
       speedy = Utils.modulate(speedstatus.width,[3, 550], [0, 70])
       numberph.html = Utils.round(speedy,0)
       numberphbk.html = Utils.round(speedy,0) 
       speedyfunc()
         
       if speedy < 0
        clearInterval(setInt)
        Utils.delay 0.2, ->
         speeddown()
         #P.backgroundColor ='rgba(256,256,256,0.8)'
         
         D.backgroundColor ='transparent'
         D.style.color='#ffffff'
         PNDRun.animate
          properties : {x :445}
          time:0.3
          Utils.delay 0.5, ->
           P.style.color='#444444'
         gearson.animate
          properties : {x :-445}
          time:0.3
   
   #BRAKE touch end
     buttonB.on Events.TouchEnd,(e) ->
       e.stopPropagation() 
       #print "brake off"
       clearInterval(setInt)
       
       buttonB.style =
        padding:'8px'
       buttonB.shadowY = 5
       buttonB.shadowColor = "#b2b2b1"
       
       setInt = Utils.interval slowsp, ->	
        speedstatus.width = speedstatus.width - 0.05
        speedy = Utils.modulate(speedstatus.width,[3, 550], [0, 70])
        numberph.html = Utils.round(speedy,0)
        numberphbk.html = Utils.round(speedy,0) 
        speedyfunc()
        
        if speedy < 0
         clearInterval(setInt)
         Utils.delay 0.2, ->
          speeddown()
             
         D.backgroundColor ='transparent'
         D.style.color='#ffffff'
         PNDRun.animate
          properties : {x :445}
          time:0.3
          Utils.delay 0.5, ->
           P.style.color='#444444'
         gearson.animate
          properties : {x :-445}
          time:0.3


#REVERSE actions
buttonR.on Events.TouchStart, ->
  buttonR.style =
      padding:'11px'
  buttonR.shadowY = 5
  buttonR.shadowColor = "#b2b2b1"

buttonR.on Events.TouchEnd, ->
  buttonR.style =
      padding:'8px'
  buttonR.shadowY = 5
  buttonR.shadowColor = "#7c7c7c"

#Reverse button click actions
r =0
buttonR.on Events.Click, ->
  r = r+1
  #PNDRbkgnd.opacity= 0.1
  R.backgroundColor ='transparent'
  R.style.color='#ffffff'
  if r == 1	
   #reverseimage.player.play()
   reverserect.animate
    properties: {y:0, opacity:1}
    time:1
    curve:'cubic-bezier(0.4, 0, 0.2, 1)'
   P.backgroundColor ='transparent'
   P.style.color='#ffffff'
   D.backgroundColor ='transparent'
   D.style.color='#ffffff'
   PNDRun.animate
    properties : {x :205}
    time:0.3
    Utils.delay 0.6, ->
     R.style.color='#444444'
   gearson.animate
     properties : {x :-205}
     time:0.3
   buttonR.html = "Reverse off"
     
  if r == 2
   #reverseimage.player.pause()
   reverserect.animate
    properties: {y:1443, opacity:1}
    time:1
    curve:'spring(50,12,5)'
   R.backgroundColor ='transparent'
   R.style.color='#ffffff'
   PNDRun.animate
    properties : {x :445}
    time:0.3
    Utils.delay 0.6, ->
     P.style.color='#444444'
   gearson.animate
     properties : {x :-445}
     time:0.3
   buttonR.html = "Reverse"
   r=0
