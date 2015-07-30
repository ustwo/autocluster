document.body.style.cursor = "auto"

#FONTS FOR FERRARI
style = document.createElement('style');
style.type = 'text/css';
style.appendChild(document.createTextNode("@font-face {\n" +
"\tfont-family: \"myFont2\";\n" + 
"\tsrc: local(''), url('fonts/Roboto-Light-webfont.ttf') format('opentype');\n" + 
"}\n" + 
"\tfont-family: myFont2 !important;\n" + 
"}\n"));
document.getElementsByTagName('head')[0].appendChild(style);

style = document.createElement('style');
style.type = 'text/css';
style.appendChild(document.createTextNode("@font-face {\n" +
"\tfont-family: \"myFont\";\n" + 
"\tsrc: local(''), url('fonts/Roboto-Medium-webfont.ttf') format('opentype');\n" + 
"}\n" + 
"\tfont-family: myFont !important;\n" + 
"}\n"));
document.getElementsByTagName('head')[0].appendChild(style);

#FONTS FOR MERC
style = document.createElement('style');
style.type = 'text/css';
style.appendChild(document.createTextNode("@font-face {\n" +
"\tfont-family: \"myFont3\";\n" + 
"\tsrc: local(''), url('fonts/TomsFont-Regular.otf') format('opentype');\n" + 
"}\n" + 
"\tfont-family: myFont33 !important;\n" + 
"}\n"));
document.getElementsByTagName('head')[0].appendChild(style);

style = document.createElement('style');
style.type = 'text/css';
style.appendChild(document.createTextNode("@font-face {\n" +
"\tfont-family: \"myFont4\";\n" + 
"\tsrc: local(''), url('fonts/TomsFont-Regular.otf') format('opentype');\n" + 
"}\n" + 
"\tfont-family: myFont4 !important;\n" + 
"}\n"));
document.getElementsByTagName('head')[0].appendChild(style);

background = new BackgroundLayer
 backgroundColor: "#424242"

if window.Screen.width<630
 globalscale = (window.Screen.width/1200)
else
 globalscale = 0.6

buttoncontainer = new Layer
 width: 1400, height: 1200, rotation:0, backgroundColor: "transperant",x:0,y:0, scale :globalscale
buttoncontainer.center() 


buttonexm = new Layer
 width:900 , height:80,  x: 0, y:1060,  opacity : 1, backgroundColor:"#b2b2b1", borderRadius: 0
buttonexm.html = "PRESS TO SPEED UP"
buttonexm.style =
  #textAlign:'center'
  fontFamily:'myfont'
  textAlign:'center'
  fontSize:'24px'
  color:'#fafafa'
  padding:'26px'
buttonexm.shadowY = 5
buttonexm.shadowColor = "#7c7c7c"
buttoncontainer.addSubLayer(buttonexm)

buttonexm2 = new Layer
 width:240 , height:80,  x: 910, y:1060,  opacity : 1, backgroundColor:"#b2b2b1", borderRadius: 0
buttonexm2.html = "SET LIMIT"
buttonexm2.style =
  #textAlign:'center'
  fontFamily:'myfont'
  textAlign:'center'
  fontSize:'24px'
  color:'#fafafa'
  padding:'26px'
buttonexm2.shadowY = 5
buttonexm2.shadowColor = "#7c7c7c"
buttoncontainer.addSubLayer(buttonexm2)

buttonexm3 = new Layer
 width:240 , height:80,  x: 1160, y:1060,  opacity : 1, backgroundColor:"#b2b2b1", borderRadius: 0
buttonexm3.html = "ALERTS"
buttonexm3.style =
  #textAlign:'center'
  fontFamily:'myfont'
  textAlign:'center'
  fontSize:'24px'
  color:'#fafafa'
  padding:'26px'
buttonexm3.shadowY = 5
buttonexm3.shadowColor = "#7c7c7c"
buttoncontainer.addSubLayer(buttonexm3)

	 
buttoncontainer.on Events.MouseOver, ->
	 document.body.style.cursor = "pointer"
buttoncontainer.on Events.MouseOut, ->
	 document.body.style.cursor = "auto"


containermerc = new Layer
 width: 1400, height: 900, rotation:0, backgroundColor: "#333132",x:0,y:0,opacity:1,scale :globalscale
containermerc.center()
 
window.onresize = ->
	#print window.Screen.width
 containermerc.center()
 buttoncontainer.center()
 
mercmask = new Layer 
	x:0, y:0, width:1400, height:900, image:"images/citroenbkgnd.png"
#ferrari.center()
containermerc.addSubLayer(mercmask)

mocked2 = new Layer
	width: 1400, height: 900,opacity : 0
	image: "images/Mocked 02.png"
containermerc.addSubLayer(mocked2)


#rect for speed
rectred = new Layer
 width: 1100, height: 205, rotation:0, backgroundColor: "#e43939",x:486,y:428, borderRadius : 20, opacity : 0
containermerc.addSubLayer(rectred)
cactuslogo = new Layer
	width: 67, height: 13, x: 50, y:95
	image: "images/cactus logo.png"
rectred.addSubLayer(cactuslogo)


rect = new Layer
 width: 40, height: 205, rotation:0, backgroundColor: "#e6e852",x:486,y:428
rect.force2d = true
rect.originX = 0
rect.originY = 0
containermerc.addSubLayer(rect)
cactuslogo = new Layer
	width: 67, height: 13, x: 50, y:95
	image: "images/cactus logo.png"
rect.addSubLayer(cactuslogo)

#custom radius
rect.style =
 "border-radius" : "20px 8px 8px 20px"


aperture = new Layer
	width: 102, height: 59, x: 702, y : 501, opacity : 1
	image: "images/aperture70.png"
containermerc.addSubLayer(aperture)

aperture50 = new Layer
	width: 102, height: 59, x: 702, y : 501, opacity : 0
	image: "images/aperture50.png"
containermerc.addSubLayer(aperture50)

MPHicon = new Layer
	width: 14, height: 28, x: 774, y : 518
	image: "images/MPH.png"
containermerc.addSubLayer(MPHicon)

numberphmback = new Layer x:394, y:499, width:400, height:400, rotation:0, backgroundColor:'transparent'
numberphmback.html = "00"
numberphmback.style =
  fontFamily:'myfont3'
  textAlign: 'right'
  fontSize:'22px'
  color:'#fff'
  padding:'20px'
  opacity: 0.1
containermerc.addSubLayer(numberphmback)

speedy = 5
numberphm = new Layer x:394, y:499, width:400, height:400, rotation:0, backgroundColor:'transparent'
numberphm.html = speedy
numberphm.style =
  fontFamily:'myfont3'
  textAlign: 'right'
  fontSize:'22px'
  color:'#eeeeee'
  padding:'20px'
containermerc.addSubLayer(numberphm)



#Set the limit of speed here
buttonexm2.on Events.TouchStart, ->
 buttonexm2.shadowColor = "#b2b2b1"
 buttonexm2.style.padding='29px'
 buttonexm2.style.color='#eeeeee'

bexm = 0 
splimit = 70
buttonexm2.on Events.TouchEnd, ->
 buttonexm2.shadowColor = "#7c7c7c"
 buttonexm2.style.padding='26px'
 buttonexm2.style.color='#fafafa'
 rectred.opacity = 0
 rect.opacity = 1
 bexm++
 if bexm ==1 
  mocked2.animate
   properties : {opacity : 1}
   time: 0.2 
   curve : "ease-in"
  aperture50.animate
   properties : {opacity : 1}
   time: 0.2 
   curve : "ease-in"
  Utils.delay 0.2, ->
   splimit = 50
   buttonexm2.html = "LIMIT = 50 "
   rect.animate
    properties : {width : (40*(70/50))}
    time: 0.2
    curve : "ease-out"
   
 else 
  if bexm > 1 
   mocked2.animate
    properties : {opacity : 0}
    time: 0.2 
    curve : "ease-out"
   aperture50.animate
    properties : {opacity : 0}
    time: 0.2 
    curve : "ease-out"
   splimit = 70
   buttonexm2.html = "SET LIMIT"
   rect.animate
    properties : {width : 40}
    time: 0.2
    curve : "ease-out"
   bexm = 0


kikispeed = new Layer
	width: 44, height: 44,image: "images/icn_speeding.png",x: 730, y: 440, opacity: 0,scale: 0.6,backgroundColor: "white",rotation: -15
kikispeed.superLayer = containermerc

op = 1
#Speeding up button
setInt = null
buttonexm.on Events.TouchStart, ->
 clearInterval(setInt)
 buttonexm.shadowColor = "#b2b2b1"
 buttonexm.style.padding='29px'
 buttonexm.style.color='#eeeeee'
 setInt = Utils.interval 0.015, ->	
  if splimit == 50 
      rectred.opacity = 0
	  if speedy < splimit
	   rect.width = rect.width + 2 
	   speedy = Utils.modulate(rect.width,[40, 524], [5, splimit])
	   speedy++
	   numberphm.html = Utils.round(speedy,0)
	   
	  else speedy = splimit  
  if splimit == 70 
	  if speedy < (splimit+20)
	   rect.width = rect.width + 2 
	   speedy = Utils.modulate(rect.width,[40, 524], [5, splimit])
	   speedy++
	   numberphm.html = Utils.round(speedy,0)
	   
	   op = Utils.modulate(speedy, [72,79], [0,1])
	   
	   if speedy > 72 and speedy <79
	    rectred.opacity = op
	    rect.opacity = 1- op
	    
	   if speedy > 79
        kikispeed.animate
         properties: {opacity: 1, scale: 1, rotation: 0}
         time: 0.4
         curve: "spring(200,30,20)"	    
       if speedy < 74
        kikispeed.animate
         properties: {opacity: 0, scale: 0.6, rotation: -15}
         time: 0.4
         curve: "spring(200,30,20)"       
          
	  else speedy = splimit  

buttonexm.on Events.TouchEnd, ->
 clearInterval(setInt)
 buttonexm.shadowColor = "#7c7c7c"
 buttonexm.style.padding='26px'
 buttonexm.style.color='#fafafa'
 setInt = Utils.interval 0.06, ->	
  if speedy > 5
   rect.width = rect.width - 1.5
   speedy = Utils.modulate(rect.width,[40, 500], [5, splimit])
   speedy--
   numberphm.html = Utils.round(speedy,0)  
   
   op = Utils.modulate(speedy, [72,79], [0,1])
   
   if speedy > 72 and speedy <79
	    rectred.opacity = op
	    rect.opacity = 1- op
	        
   if speedy < 74
       kikispeed.animate
        properties: {opacity: 0, scale: 0.6, rotation: -15}
        time: 0.4
        curve: "spring(200,30,20)"    
   
  else speedy = 5 


#Icons for alerts
bouba = new Layer
 width: 40, height : 40, x: 732, y: 575, opacity: 0,scale: 0.6,backgroundColor: "white", borderRadius: (100/2)
bouba.superLayer = containermerc

kiki = new Layer
 width: 44, height : 44, x: 730, y: 443, opacity: 0,scale: 0.6,backgroundColor: "white",rotation: -15,image: "images/icn_slipperyroad.png"
kiki.superLayer = containermerc

 
boubaicon = new Layer
 width: 20, height : 20, x: 10, y:11, backgroundColor: "#BBB",image: "images/icn_message.png", superLayer : bouba

boubaicon1 = new Layer
 width: 20, height : 20, x: 49, y: 11, backgroundColor: "#BBB", 
	image: "images/icn_fuel.png",superLayer : bouba
 
boubaicon2 = new Layer
 width: 20, height : 20, x: 89, y: 11, backgroundColor: "#BBB", image: "images/icn_lights.png" ,superLayer : bouba
 
a = 0
buttonexm3.on Events.Click, ->
 a++
 if a == 1 
  bouba.animate
   properties: {opacity: 1, scale: 1, x: 732}
   time: 0.2 
   curve: "spring(200,30,20)" 
 if a==2 
   bouba.animate
    properties: {width: 80, x: 712}
    time: 0.2 
    curve: "spring(200,30,20)" 
 if a == 3
   bouba.animate
    properties: {width: 120, x : 692}
    time: 0.2 
    curve: "spring(200,30,20)"
 if a == 4
    kiki.animate
     properties: {opacity: 1, scale: 1, rotation: 0}
     time: 0.4
     curve: "spring(200,30,20)"
  if a == 5 || a >> 5
   bouba.animate
    properties: {width: 40, x:732}
    time: 0.2 
    curve: "spring(200,30,20)"
    a = 0
    Utils.delay 1,->
     bouba.animate
      properties: {opacity :0, scale: 0.6}
      time: 0.2 
      curve: "spring(200,30,20)"
     kiki.animate
      properties: {opacity :0, scale: 0.6,rotation: -15}
      time: 0.2 
      curve: "spring(200,30,20)"

#set mask for car
citroenmask = new Layer
	width: 1400, height: 900
	image: "images/citroenbkgndcut.png"
citroenmask.superLayer = containermerc

maskrightpanel = new Layer
	width: 22, height: 221,x: 1007, y: 420
	image: "images/bg_mask.png"
maskrightpanel.superLayer = containermerc

watchID = navigator.geolocation.watchPosition((position) ->
  do_something position.coords.latitude, position.coords.longitude
  return
)

print watchID