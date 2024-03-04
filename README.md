# Custom-Ubuntu-terminal

![image](https://github.com/Giordano-jpg/Custom-Ubuntu-terminal/assets/59683392/f4b82067-37f1-409c-9624-d098586da59a)


This is a bash script that runs in a new window, simulating the operation of the normal Ubuntu shell.

The terminal displays an ASCII image and brief general information about the hardware and software on which it runs. Above the prompt the PID of the terminal is displayed.


## Pre-Execution .

1.- To run the script, we first have to have all the contents downloaded in a directory of the Linux operating system. (script.sh and .gif (_optional_))

2.- Once downloaded and located in the directory where they are located, we execute the command `chmod 777 script.sh` to change the permissions of the file so that we can execute it.


## Setup

### Download packages to allow ASCII animation after terminal execution

If we do not have Python-pip installed, we install it as follows:
```
sudo apt install python3-pip
pip3 --version
```

We proceed to download the packages to make ASCII animation of any multimedia file.
```
pip install ascii_animator
```
If there is an error during the installation, try: `pip install ascii_animator --break-system-packages`

Example of use: `ascii-art-animator -f ./giphy.gif -a -m 3 -c 10`
_(The dimensions of the screen can influence the correct display of the animation, change the number of columns: `-c 10`, and is also possible to change the number of repetitions: `-m 3`)_

### Download nsnake (Game that runs in the terminal when you type "serpiente")

```
sudo apt-get install nsnake
```
To run the game: `nsnake`

### Position and colors of the ASCII image

When running it, the ASCII image along with the information provided, if is not seen centered as it appears in the beginning image, this is due to the different screen dimensions that we may encounter and to solve this we simply have to add as many spaces in the rows that the image occupies, as we like. _(Between the lines 47 to 58)_

To change the colors, change the third number of the string "\e[38;5;**15m**" that appears at the beginning of each row of the image. _(Between the lines 47 to 58)_.
This being a number in the ANSI palette of 256 colors. _(https://raw.githubusercontent.com/fidian/ansi/master/images/color-codes.png)_

# Execution

We exit superuser mode if we are and type `gnome-terminal --fullscreen -- ./script.sh`, this will run the script in a new GNOME terminal and it will open in full screen.





