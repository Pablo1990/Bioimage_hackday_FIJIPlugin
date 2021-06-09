
This project was developed through the UCL Bioimage Analysis Collaborative Hackday

+info at: https://www.eventbrite.co.uk/e/ucl-bioimage-analysis-collaborative-hackday-tickets-151824323639

FIJI PLUG-IN
------------
We picked Eclipse as our IDE. Thus, you would need to install:

- [X] [Eclipse for java developers](https://www.eclipse.org/downloads/)
- [X] [Java Development Kit (JDK) 8](https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html)
- [X] Git client (I'd recommend [GitHub Desktop](https://desktop.github.com/))

Setup: 

- [X] Clone this repository
- [X] File > Import... > Maven > Existing Maven projects > Browse > Bioimage_hackday_FIJIPlugin directory > Finish
- [X] Eclipse > Preferences > Java > Installed JREs > Select 'Java SE 8'
-     If you do not find Java SE 8: Search... > Select directory with Java SE 8
- [X] Eclipse > Preferences > Java > Compiler > Compiler compliance level: 1.8  

Instructions to build the JAR file: 
- [X] Run as... > Maven build
- [ ] Build success 


Instruction to run within Eclipse:
- [X] Run as... > Java application > Select SwingExample.java
- [ ] See FIJI/ImageJ running

Instructions to design GUI:
- [X] Help > Install new software > Work with: 'All available sites'
- [X] Look for 'Windowbuilder' > Tick 'WindowBuilder Swing Designer' > Next > Accept/Decline the terms > Finish
- [ ] Right click on 'DeconvolutionDialog.java' 


LICENSING
---------

To the extent possible under law, the ImageJ developers have waived
all copyright and related or neighboring rights to this tutorial code.

See the [CC0 1.0 Universal license](https://creativecommons.org/publicdomain/zero/1.0/) for details.


SEE ALSO
--------

* The [ImageJ Tutorials](https://imagej.net/Tutorials) and [Development](https://imagej.net/Development) sections of the ImageJ wiki.


![Maven-projects directory map](../images/maven-projects_map.png)
