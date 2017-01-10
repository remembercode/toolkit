# Spring Tool Suite 
Spring Tool Suite

## 1. Install [oracle.jdk](/Base/oracle.jdk)
## 2. Install [Eclipse.JEE.Neon](/Base/eclipse.jee.neon)

## 3. 下载<br/><br/>3. Download

* [Spring Tool Suite™ Downloads](https://spring.io/tools/sts/all)
* [Spring Tool Suite 4.6.2 Update Site Eclipse Plugins Archives](http://download.springsource.com/release/TOOLS/update/3.8.3.RELEASE/e4.6/springsource-tool-suite-3.8.3.RELEASE-e4.6.2-updatesite.zip)
	
	
## 4. 安装<br/><br/>4. Install
	Open Eclipse From Desktop Shortcut
	Select "C:\Users\Administrator\Documents\EclipseWorkSpace" as Workspace
	Select 
	Select Help on Toolbar
	Select Install New Software...
	Select "Add"
	Select "Archive..."
		Select downloaded "springsource-tool-suite-3.8.3.RELEASE-e4.6.2-updatesite.zip"
		Press OK
		Work with : jar:file:/C:/App/springsource-tool-suite-3.8.3.RELEASE-e4.6.2-updatesite.zip!/
		Select 4 XXX / Spring IDE
		Next
		Next
		Accepte
		Finish
		
Description	Resource	Path	Location	Type
Build path specifies execution environment J2SE-1.5. There are no JREs installed in the workspace that are strictly compatible with this environment. 	AndroidSystemOTA		Build path	JRE System Library Problem
		
		
		
		
Description	Resource	Path	Location	Type
The superclass "javax.servlet.http.HttpServlet" was not found on the Java Build Path	index.jsp	/AndroidSystemOTA/src/main/webapp	line 1	JSP Problem
		
		
		show Canculating requirements and dependencies
	Alert Reboot Eclipse when installed
	
			cannot perform operation. Computing alternative solutions, may take a while: 5/15
		Choose one of the following alternate solutions
			keep my installation the same and modify the items being installed to be compatible
			Update my installation to be compatible with items being installed
			Differences ups 2 :
				org.eclipse.egit.feature.group
				org.eclipse.egit.mylyn.feature.group
			
			Cannot complete the install because one or more required items could not be found.
				Software being installed: Spring IDE OSGi Extension (optional) 3.8.3.201612191259-RELEASE (org.springframework.ide.eclipse.osgi.feature.feature.group 3.8.3.201612191259-RELEASE)
				Missing requirement: Spring IDE Live Beans Graph 3.8.3.201612191259-RELEASE (org.springframework.ide.eclipse.beans.ui.livegraph 3.8.3.201612191259-RELEASE) requires 'bundle org.eclipse.zest.core [1.0.0,2.0.0)' but it could not be found
			Cannot satisfy dependency:
				From: Spring IDE Core (required) 3.8.3.201612191259-RELEASE (org.springframework.ide.eclipse.feature.feature.group 3.8.3.201612191259-RELEASE)
				To: org.springframework.ide.eclipse.beans.ui.livegraph [3.8.3.201612191259-RELEASE]
			Cannot satisfy dependency:
				From: Spring IDE OSGi Extension (optional) 3.8.3.201612191259-RELEASE (org.springframework.ide.eclipse.osgi.feature.feature.group 3.8.3.201612191259-RELEASE)
				To: org.springframework.ide.eclipse.feature.feature.group 0.0.0				
