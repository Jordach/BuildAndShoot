//This file is part of the NETWORK compatible VOXLAP AoS Game.
#include <"input.cpp">
#include <"render.cpp">
#include <"sound.cpp">
#include <"network.cpp">
#include <iostream>


int main()
{
	cout << "main.cpp working! \n";
	
	render_check();
	
	sound_check();
	
	network_check();
	
	input_respond();
	
}
