# eclipse 
eclipse java ide


## 1. Install [Eclipse.JEE.Neon](/Base/eclipse.jee.neon)
## 2. Install [oracle.jdk](/Base/oracle.jdk)
## 3. Install [Maven](/Base/eclipse.jee.neon)
## 4. Config Eclipse.JEE.Neon Intergrate Standalone Maven

### 4.1. Specified JDK Run Eclipse
	Right Click On C:\App\eclipse-jee-neon-2-win32-x86_64\eclipse.exe
	Select "Send To"
	Select "Desktop Shortcut"
	Press "Win + D" Goto Desktop
	Right Click On "eclipse.exe Shortcut"
	Select Properities
	Change Target 
		From : C:\App\eclipse-jee-neon-2-win32-x86_64\eclipse.exe
		To   : C:\App\eclipse-jee-neon-2-win32-x86_64\eclipse.exe -vm "C:\Program Files\Java\jdk1.8.0_112\jre\bin\javaw.exe"

### 4.2. Specified Workspace To Run Eclipse
	Open Eclipse From Desktop Shortcut
	Select "C:\Users\Administrator\Documents\EclipseWorkSpace" as Workspace
	
### 4.3. Specified JDK Lib
	Select Window
	Select Perferences
	Select Java
	Select Installed JREs
		Name: jdk1.8.0_112(default)
		Locaton: C:\Program Files\Java\jdk1.8.0_112
	
### 4.4. Specified Standalone Maven
	Select Window
	Select Perferences
	Select Maven
	Select Installations
	Select "Add"
		Install type : External
		Installation home : C:\App\apache-maven-3.3.9
		Installation name : apache-maven-3.3.9
		Select Finish
	Click apache-maven-3.3.9
	Apply
	OK

### 4.5. Specified Standalone Maven Settings
	Select Window
	Select Perferences
	Select Maven
	Select User Settings
	Select Global Settings
	Select Brorsw...
	Select C:\App\apache-maven-3.3.9\conf\settings.xml
	Select Update Settings
	Apply
	OK



	
	