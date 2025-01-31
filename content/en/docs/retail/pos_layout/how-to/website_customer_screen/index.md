---
title: "Display external website content on the customer screen"
description: "Salespeople can make the customer display (second display) point to an external website with merchant-specific content they wish to display to the customers."
lead: ""
date: 2023-12-22T15:25:30+01:00
lastmod: 2023-12-22T15:25:30+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "website_customer_screen-130c806c7aaa0b3bc6615d34fd1e1043"
weight: 125
toc: true
type: docs
---
Salespeople can make the customer display (second display) point to an external website with merchant-specific content they wish to display to the customers, after which they may switch back to the **Receipt** view. This website can, for example, contain a sign-up form, terms and conditions or some similar content that may be relevant for the current transaction. 

It's also possible to enable the **Virtual Keyboard** plugin - an on-screen keyboard which the customer can use to input data on the external website, which is useful for populating various registration forms. 

{{< alert icon="📝" text="The requirement for using the Virtual Keyboard plugin is to have control of the website, and to modify the Content Security Policy (CSP). The CSP should contain the frame-src Directive with the value 'data:'. Otherwise the content of the keyboard will not be loaded."/>}}

To make it so that the customer screen points to an external website, it's recommended to create two buttons. The first one should point to the external website, while the second one should be used for loading the Receipt View. 

The setup for both buttons is the same, the only difference being the provided values:

1. Open the POS unit on which you wish to add the button.
2. Open the [<ins>POS editor<ins>]({{< ref "../../explanation/pos_editor/index.md" >}}) by pressing the <image src="Images/cog.PNG" width="30" height="30"> button.    
   The edit mode is enabled.
3. Press the cell in the part of the [<ins>POS screen<ins>]({{< ref "../../explanation/sections/index.md" >}}) in which you wish to place the button, followed by **Edit** in the dropdown.
4. Add the **Caption**, and open the **Action** dropdown list.
5. Press **Other**, and select the **HTML_DISPLAY_LOAD** [<ins>action<ins>]({{< ref "../../../pos_processes/reference/pos_actions_ref/index.md" >}}) from the full list.       
6. Press <image src="Images/edit_icon.PNG" width="30" height="30"> next to **Variables** to edit the relevant parameters.      
   </br>
    For loading the external website:
   - Select **Website** as the **Load option**.
   - Enter the URL of the website you want to display in **Website Url**.
   - (Optional) If you want to have the on-screen keyboard, set **Plugin: Virtual Keyboard** to **True**.
   </br>




    For reloading the main profile:
   - Select **Profile** as the **Load option**.
   - (Optional) If you want to redownload the media specified on the HTML Profile set **Download Media** to **True**. It's recommended to leave this option deactivated for better performance.
7. Press **Save**, and exit the edit mode.

#### See also

- [<ins>Set up the POS HTML display profile<ins>]({{< ref "../../../pos_profiles/how-to/html_profile/html_profile.md" >}})