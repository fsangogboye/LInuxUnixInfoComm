LInuxUnixInfoComm
=================
About the program
The program prompts users to enter continent and city and dispalys the time and date based on the time zone. In addition to that it has localization feature enabling user to interact with a graphical user interface in Amaharic. The program is written based on calculator example, infact it has shared a larged portion of the source code.
1. timeZone: script that displays date and time on shell.
2. timeZone_ui: it adds GUI feature. it has to be run with LANG=am_ET ntimeZone_ui for localization feature.
3. timeZone_tui: it uses text usr interface
4. timeZone_ui-am.po: It provides translation for Amharic
5. timeZone.xinetd, timeZone.services: provide network functionality to the program. The port number is 1234 and the command nc host portunmber enables the user to interact with timeZone script.
Installation
The program is developed and tested in Scientific Linux 6.5, but is excted to work on most UNIX/LINUX environment with minimal changes. The packages such as xinetd should be downloaded.

Steps after cloning from github
1. type make command in shell
2. use  the above mentioned scripts to see how they work. Incase they are not in executable binary format use chmod +x filename to convert them in to executable files.
