//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "bar_time",					60,		100},
    // need the ; for the split status patch
	{";", "bar_volume",					0,		10},
	{"", "bar_ram",					    60,		1},
	{"", "bar_disk",					0,		2},
	{"", "bar_wifi",					60,		3},
	{"", "bar_battery",					0,		4},
	{"", "bar_date",					0,		50},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "   |   ";
static unsigned int delimLen = 5;
