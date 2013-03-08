//Part of the Build and Shoot client.

int MapSize [512] [64] [512] //The co-ordinates are stored as X, Y, Z.

int Color [512] [64] [512] //The colours are stored as RED, GREEN, BLUE. Each block should be coloured from 1-255 as a int value
							//I also forget that C++ defines arrays as MS Excel like areas.
							
int VoxelSolid [512] [64] [512]// This checks whether the block is solid and breakable. Damage is done such as:
								//0 = Air, 1 = Anything will break that block, 2 = A spade / rifle hit will break it
								// 3 = Small damage, like first bullet into a block from smg / shotgun (shotgun at long range...)

//Init. functions.

int ServerBrowser(); //Initiates the server browser.

void DisplayMainMenu(); //Starts main menu, 

int InitiateConnection(); //Initiate connection with the PySnip servers. Returns 1 for a active server. 0 for a dead one.
							//I should use the BnS Master server, shouldnt I?
							
void UpdateScreen(char InputType); //Tells the renderer to whether either display the main menu or the game.

void serverConnect(AoSAddress); //Inputs the AoS IP into the game to connect to a server


//main loop goes here



int main()
{

	int MainMenu = 0;

	while (MainMenu == 0)
	{
		do this shit;
		
		if (InitiateConnection() == 1)
		{
			goto start game;
			
			MainMenu = 1;
		}
	}
	
	}
	
	start game:
	
	while (MainMenu == 1)
	{
		serverConnect(AoSIP);
		game crap here;

}
