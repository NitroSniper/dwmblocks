//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
  /*Icon*/  /*Command*/    /*Update Interval*/  /*Update Signal*/
  {"󰏗 ",    "dwmblocks-updates",  3600,               17},
  {"󰕾 ",    "dwmblocks-volume",   0,                  10},
  {"",      "dwmblocks-wifi",     3,                  0},
  {"" ,     "dwmblocks-clock",    60,                 0},
};

//Sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char *delim = " 󰇙 ";

// Have dwmblocks automatically recompile and run when you edit this file in
// vim with the following line in your vimrc/init.vim:

// autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
