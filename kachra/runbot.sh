#!/bin/bash
IFS=$'\n'
rm -rf aiml.list
for i in $(ls /var/www/html/chatu/aiml_files);do
	echo "kernel.learn(\"/aiml_list/$i\")"  | cat >> aiml.list
#	echo "kernel.respond(\"load aiml b \")" | cat >>aiml.list
done


rm -rf chatu.py

echo -e "#!/usr/bin/python \nimport aiml \nkernel=aiml.Kernel()" | cat > chatu.py

for i in $(cat aiml.list);do
	echo $i | cat >>chatu.py
done

: '
                               
                                             .:+oo+:.                                              
                                            `+hyyhdddh+`                                            
                                           /dy//shhhhd/                                            
                                         `+yysossssyy+                                           
                                            -s+/://///s-                                         
                                        ``-/shs+/://+yds/-````                                      
                            `.-::::::::::+hmdysshhhhdddhhh+::::::::::-.`                            
                          .-//::----------:+ssoshhhyssoo/----------::/++/.`                         
                        `-/:--...............-:/+++//:................-/+o/`                        
                       `//:-.............```..`````````...``````````....:+o+`                       
                       -+:-......................................`.......:+s:                       
                      `//:-..............................................-+so`                      
                      `//:-.......-----......................----........-+oo`                      
                      `//:-....-/osssssso:-...............:osssssso/-....-+oo`                      
                   `...+/:-.../ss+/:-::+oso--...........-oso+/:::+oss:...:+oo..``                   
                  `shyyo/:---:yo/.`    `:oss-...--.--.--ss+-``   `-osy:.-:+oyyyyo`                  
                  -dhhho/:---os+-````````yhh/----------/s+/````````+hho--:+oyhhhh.                  
                  -dddhs+/::-+so/.......-hyy:---:++----:soo........shy+--/ooyhhdd.                  
                  :mddds+/::::osso/---:+hhs+---:oooo:---+sss/:---/yhyo:::/osydddm-                  
                  :mddds+///:::+oosyyyhyso/:::/sssyys::::/oosyyyhyyo+::::/oshdddm-                  
                  :mmmms+/////////+++++///////yyyhhhhy/:::://++++///:::::+oshmmmm-                  
                  :Nmmmyo+///////////////////yhhhhhhhhs//////////////////+oshmmNN-                  
                  -NNNmyo+///////////////////ooosoooooo//////////////////+syhNNNm-                  
                  .mNNNyo+++/////////////////////////////////////////////+sydNNNd.                  
                   -//+sso+++++++++/++++yyyydhyyyhdyyyyhhhyyyo///////////osyy+//-`                  
                      `oso+++++++++++++dyo++Nh:/:sMo://oNy//oho//+/+++//+oyys` `                    
                      `oso+++++++++++++do:.:Ns```+M/```/No`.:ho++++++++++oyhs`                      
                      `osoo++++++++++++ossssdysssydssssydyssso+++++++++++oyhs`                      
                      `oysoo+++++++++++++++++++++++++++++++++++++++++++++syho`                      
                       :yyso++++++++++++++++++++++++++++++++++++++++++++oyhh:                       
                       `/yysoo+++++++++++++++++++++++++++++++++++++++++syhh+                       
                        `:syyssoooooooooooooooooooooooooooooooooooooosyhhs:                        
                          `:osyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyo:                          
                             `-://+////////+////////////////////////:-                              

 '

echo -e "while True: \n\tmessage=raw_input(\"chattu<bot>: Enter your message\") \n\tif message==\"exit\": \n\t\tbreak \n\tprint kernel.respond(message) \nprint(\"bie  it was fun talking to you\")" | cat >> chatu.py


python chatu.py

