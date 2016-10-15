#!/usr/bin/python 
import aiml 
kernel=aiml.Kernel()

kernel.learn("std-startup.xml")
kernel.respond("LOAD AIML B")



while True: 
	message=raw_input("chattu<bot>: Enter your message") 
	if message=="exit": 
		break 
	print kernel.respond(message) 
print("bie bie  it was fun talking to you")
