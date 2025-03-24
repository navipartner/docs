---
title: "Install Minor Tom"
description: "Install the essential POS features necessary for working in retail."
lead: ""
date: 2023-04-24T11:52:06+02:00
lastmod: 2023-04-24T11:52:06+02:00
draft: false
images: []
menu:
  docs:
    parent: "gettingstarted"
    identifier: "minor_tom"
weight: 2
toc: true
type: docs
---

Minor Tom offers only the essential POS features necessary for working in retail. Due to its limited functionality, it is faster and intended for wider usage. Follow these steps to set up Minor Tom:

1. Download Minor Tom either from the NP Retail Role Center dashboard, or from the [<ins>direct link<ins>](https://npminortom.blob.core.windows.net/prod/Setup.exe), and install it.     
   The desktop shortcut is automatically created as soon as installation is finished.
2. Open Minor Tom.    
   When you enter the app for the first time, you will be presented with the setup page. 
3. Depending on which environment you're using, do one of the following:
   
   **On-Prem**

   - Both **Username** and **Password** are optional, but you can provide them if you wish to enable the auto-login feature. 
   - In the **URL** field paste the URL of the Business Central instance in the following form: https://www.examplecustomer.dynamics-retail.net.
   - Make sure that the toggle switch is deactivated so that **OnPrem** is highlighted. 

   **Cloud (SaaS)**

   - Leave the **Username** and **Password** fields empty. 
   - Paste the URL for the Business Central instance into the **URL** field.
   - Enable the toggle switch so that the **Cloud** option is highlighted.     
     The **Environments** section is displayed.
   - Click **Fetch Cloud Environments**.    
     If you haven't logged in previously, the login screen is displayed.
  

   {{< alert icon="📝" text="The customer's Azure tenant needs to be <a href=\"https://learn.microsoft.com/en-us/azure/active-directory/conditional-access/howto-conditional-access-session-lifetime\">configured</a> prior to using the cloud version so that their session can be automatically extended on the following login." />}}

4. Once the installation is complete, click **New Sale** in the sidebar (right-click to open/close the sidebar) to start using the POS features.

   {{< alert icon="📝" text="Whenever a new Minor Tom version is available, it will be automatically detected and downloaded as soon as you launch the app." />}}


<iframe width="560" height="315" src="https://www.youtube.com/embed/oJW4ECnU10g?si=lGmZNIGzERzcELj-" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>