#include <iostream>

using namespace std;

int main()
{
	redo_menu:
	
	cout << "Enter the number 1 for Configs. \nEnter number 2 for Server selection. \n";
	
	int MenuSelect = 0;
	
	int GameActive = 0;
	
	cin >> MenuSelect;
	
	if (MenuSelect == 1)
	{
		cout << "Configs... TODO, SOME ACTUAL CONFIGS.. \n";
	}
	else if (MenuSelect == 2)
	{
		cout << "Select a server!: \n \nTODO: ADD SERVERS.\n";
	}
	
	else
	{
		cout << "Please enter either 1 or 2. \n";
		
		goto redo_menu;
	}
	
		
}
