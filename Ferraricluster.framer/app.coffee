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

if window.Screen.width<630
 globalscale = (window.Screen.width/1200)
else
 globalscale = 0.6

buttoncontainer = new Layer
 width: 1400, height: 1200, rotation:0, backgroundColor: "transperant",x:0,y:0, scale :globalscale
buttoncontainer.center()

buttonex = new Layer
 width:1400 , height:80,  x: 0, y:1060, opacity : 1, backgroundColor:"#b2b2b1", borderRadius: 0
buttonex.html = "PRESS TO SPEED UP"
buttonex.style =
  #textAlign:'center'
  fontFamily:'myfont'
  textAlign:'center'
  fontSize:'24px'
  color:'#fafafa'
  padding:'26px'
buttonex.shadowY = 5
buttonex.shadowColor = "#7c7c7c"
buttoncontainer.addSubLayer(buttonex)

buttonexm = new Layer
 width:1400 , height:80,  x: 0, y:1060,  opacity : 0, backgroundColor:"#b2b2b1", borderRadius: 0
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

buttonex.on Events.MouseOver, ->
	 document.body.style.cursor = "pointer"
buttonex.on Events.MouseOut, ->
	 document.body.style.cursor = "auto"
	 
buttonexm.on Events.MouseOver, ->
	 document.body.style.cursor = "pointer"
buttonexm.on Events.MouseOut, ->
	 document.body.style.cursor = "auto"


container = new Layer
 width: 1400, height: 900, rotation:0, backgroundColor: "#333132",x:0,y:0,opacity:1,scale :globalscale
container.center()
buttonex.bringToFront()

 
window.onresize = ->
	#print window.Screen.width
 container.center()
 buttoncontainer.center()
 
#FERRARI SHIZZLE
    
ferrari = new Layer 
	x:-275, y:-80, width:2048, height:1536, image:"images/California-Mock.jpg"
#ferrari.center()
container.addSubLayer(ferrari)

circleex = new Layer
 width: 68, height: 68, rotation:0, borderRadius: "50%", backgroundColor: "#ffd839",x:680,y:244, scale:1.5
circleex.force2d = true
container.addSubLayer(circleex)

circlemid = new Layer
 width: 68, height: 68, rotation:0, borderRadius: "50%", backgroundColor: "#292929",x:680,y:244
container.addSubLayer(circlemid)


rings = new Layer 
	x:-145, y:-138, width:358, height:344, image:"images/ferrarirings.png", opacity:0, scale:1/1.5
rings.force2d = true
circleex.addSubLayer(rings)

slipalert = new Layer 
	x:695, y:110, width:40, height:40, image:"images/ferrarislip.png", opacity:0
container.addSubLayer(slipalert)

speedyfe = 18
numberph = new Layer x:514, y:264, width:400, height:400, rotation:0, backgroundColor:'transparent'
numberph.html = speedyfe
numberph.style =
  fontFamily:'myfont2'
  textAlign: 'center'
  fontSize:'36px'
  color:'#eeeeee'
  padding:'0px'
container.addSubLayer(numberph)


setInt = null
buttonex.on Events.TouchStart, ->
 clearInterval(setInt)
 buttonex.shadowColor = "#b2b2b1"
 buttonex.style.padding='29px'
 buttonex.style.color='#eeeeee'
 setInt = Utils.interval 0.025, ->	
   if speedyfe < 58
    speedyfe++
    speedyfe = Utils.modulate(circleex.width,[68, 170], [18, 58])
    numberph.html = Utils.round(speedyfe,0)  
    
    circleex.width++
    circleex.x = (circleex.x-(0.5))
    rings.x = rings.x + 0.5   
    
    circleex.height++
    circleex.y = (circleex.y-(0.5))
    rings.y = rings.y + 0.5
    
    if speedyfe > 40
     Utils.delay 1 ,->
      slipalert.animate 
       properties: {y:120, opacity:1}
       time:0.3
       curve:'spring(100,12,30)'
      rings.animate 
       properties: {opacity:1}
       time:0.1
       curve: "ease-in"
   else speedyfe = 58
   
buttonex.on Events.TouchEnd, ->
 clearInterval(setInt)
 buttonex.shadowColor = "#7c7c7c"
 buttonex.style.padding='26px'
 buttonex.style.color='#fafafa'
 setInt = Utils.interval 0.05, ->	
   if speedyfe > 18
    speedyfe--
    speedyfe = Utils.modulate(circleex.width,[68, 170], [18, 58])
    numberph.html = Utils.round(speedyfe,0) 
    
    circleex.width--
    circleex.x = (circleex.x+(0.5))
    rings.x = rings.x - 0.5
    circleex.height--
    circleex.y = (circleex.y+(0.5))
    rings.y = rings.y - 0.5
    
    if speedyfe < 45
      slipalert.animate 
       properties: {y:110, opacity:0}
       time:0.3
       curve: "ease-out"
      rings.animate 
       properties: {opacity:0}
       time:0.1
       curve: "ease-out"
   else speedyfe = 18
   


