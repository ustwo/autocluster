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
"\tsrc: local(''), url('fonts/corporate-a-light.ttf') format('opentype');\n" + 
"}\n" + 
"\tfont-family: myFont33 !important;\n" + 
"}\n"));
document.getElementsByTagName('head')[0].appendChild(style);

style = document.createElement('style');
style.type = 'text/css';
style.appendChild(document.createTextNode("@font-face {\n" +
"\tfont-family: \"myFont4\";\n" + 
"\tsrc: local(''), url('fonts/corporate_a_regular.ttf') format('opentype');\n" + 
"}\n" + 
"\tfont-family: myFont4 !important;\n" + 
"}\n"));
document.getElementsByTagName('head')[0].appendChild(style);

if window.Screen.width<630
 globalscale = (window.Screen.width/1200)
else
 globalscale = 0.6

buttoncontainer = new Layer
 width: 1400, height: 1200, rotation:0, backgroundColor: "transperant",x:0,y:0, scale :globalscale
buttoncontainer.center()


buttonexm = new Layer
 width:1400 , height:80,  x: 0, y:1060,  opacity : 1, backgroundColor:"#b2b2b1", borderRadius: 0
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

	 
buttonexm.on Events.MouseOver, ->
	 document.body.style.cursor = "pointer"
buttonexm.on Events.MouseOut, ->
	 document.body.style.cursor = "auto"


containermerc = new Layer
 width: 1400, height: 900, rotation:0, backgroundColor: "#333132",x:0,y:0,opacity:1,scale :globalscale
containermerc.center()
 
window.onresize = ->
	#print window.Screen.width
 containermerc.center()
 buttoncontainer.center()
 
#MERC SHIZZLE

mercscreen = new Layer 
	x:-290, y:-80, width:2048, height:1536, image:"images/mercscreen.png"
#ferrari.center()
containermerc.addSubLayer(mercscreen)

rect = new Layer
 width: 924, height: 80, rotation:180, backgroundColor: "#607789",x:1224,y:575, 
rect.force2d = true
rect.originX = 0
rect.originY = 0
containermerc.addSubLayer(rect)

speedy = 16
numberphm = new Layer x:530, y:350, width:400, height:400, rotation:0, backgroundColor:'transparent'
numberphm.html = speedy
numberphm.style =
  fontFamily:'myfont3'
  textAlign: 'center'
  fontSize:'90px'
  color:'#eeeeee'
  padding:'30px'
containermerc.addSubLayer(numberphm)

miles = new Layer x:532, y:420, width:400, height:400, rotation:0, backgroundColor:'transparent'
miles.html = "MPH"
miles.style =
  fontFamily:'myfont'
  textAlign: 'center'
  fontSize:'16px'
  color:'#eeeeee'
  padding:'10px'
containermerc.addSubLayer(miles)


setInt = null
buttonexm.on Events.TouchStart, ->
 clearInterval(setInt)
 buttonexm.shadowColor = "#b2b2b1"
 buttonexm.style.padding='29px'
 buttonexm.style.color='#eeeeee'
 setInt = Utils.interval 0.015, ->	
  if speedy < 60
   rect.height++
   speedy = Utils.modulate(rect.height,[80, 371], [16, 70])
   speedy++
   numberphm.html = Utils.round(speedy,0)
  else speedy = 60  

buttonexm.on Events.TouchEnd, ->
 clearInterval(setInt)
 buttonexm.shadowColor = "#7c7c7c"
 buttonexm.style.padding='26px'
 buttonexm.style.color='#fafafa'
 setInt = Utils.interval 0.06, ->	
  if speedy > 16
   rect.height--
   speedy = Utils.modulate(rect.height,[80, 371], [16, 70])
   speedy--
   numberphm.html = Utils.round(speedy,0)  
  else speedy = 16  

mercstatus = new Layer 
	x:-290, y:-80, width:2048, height:1536, image:"images/mercstatus.png"
#ferrari.center()
containermerc.addSubLayer(mercstatus)

mercnumbers = new Layer 
	x:-290, y:-80, width:2048, height:1536, image:"images/mercnumbers.png"
#ferrari.center()
containermerc.addSubLayer(mercnumbers)

merclines = new Layer 
	x:-290, y:-80, width:2048, height:1536, image:"images/merclines.png",opacity: 0.5
#ferrari.center()
containermerc.addSubLayer(merclines)

# mercsheen = new Layer 
# 	x:-290, y:-10, width:2048, height:1536, image:"images/mercsheen.png", opacity:0.4
# #ferrari.center()
# containermerc.addSubLayer(mercsheen)

mercmask = new Layer 
	x:-290, y:-80, width:2048, height:1536, image:"images/mercmask.png"
#ferrari.center()
containermerc.addSubLayer(mercmask)


