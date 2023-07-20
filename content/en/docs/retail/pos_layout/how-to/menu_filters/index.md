---
title: "Create POS menu filters"
description: ""
lead: ""
date: 2023-07-07T14:07:39+02:00
lastmod: 2023-07-07T14:07:39+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "menu_filters-2575ff105ab5bad1d4ccf4298cda78cb"
weight: 30
toc: true
type: docs
---

By default, filters are used when you need to create a list that can be viewed by pressing a button on the POS. Their values need to be sourced from a specific table containing the necessary values you wish to choose from on the POS. It's also necessary to set up extraction of data from that table for this functionality to take effect. 

To create POS menu filters, follow the provided steps: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Menu Filter List**, and open the related link.
2. Click **New** to start creating a new filter. 
3. Provide a **Filter Code** and **Description** of the filter.   
   The code needs to be unique, and the description should state what it is used for. 
4. In **Run object** panel, select what kind of object you need to run in the **Object Type** (**Report**, **Codeunit**, **XMLPort**, and **Page**).    
5. Choose the **Object Id**.
   For example, if you wish the filter to produce a list of open credit vouchers when the button on the POS is clicked, you need to add **6151015** (NPR NpRv Vouchers).
6. In the **Filter record** panel, select the table which contains the necessary values from the available options in **Table No.**. 
7. Select which fields from that table should be used for the filter.    
   Following up on the previous example, if you reference **6151013** (NPR NpRv Voucher ) table, you will get information about credit vouchers, and which of them have not yet been used (i.e. opened credit vouchers). 
8. Click **Generic Filter**, and from the list of fields that exist on the referenced table, you can construct the desired table filter.    
   - The **Filter** for credit vouchers, on the **Field number 5 - Voucher Type** line should be set to **CREDITVOUCHER**, which is the code for the required voucher type.
   - The **Filter** for the **Field number 70 - Open** line should be set to **Yes**.      
     As a result, the values will be set to be included in the generic filter, and you can close the **Generic Filter Page**.
9. In the **POS Menu Filter** page, click **Display Filter** in the **Actions** dropdown to get the SQL format for the filter.     
    SORTING(No.) WHERE(Voucher Type=FILTER(CREDITVOUCHER),Open=FILTER(Yes))
10. Click **Test & Activate** in the ribbon to check if everything is in order, and activate the selected behavior of the button.     
    The results will be displayed in a page format. If you're satisfied with the filter, you can now go to the **Menu Buttons Setup** to configure the button.
11. Set your caption for the button. Make sure that the selected **Action Type** is **Action** and that the POS action to run is set to **RUNOBJECT**. 
12. In the **MenuFilterCode** field on the POS parameter, you need to set the **POS Menus Filter** you've created. 

If you're having difficulty writing down a filter on any table in the SQL statement, you can always use the **POS Menu Filters** function to generate it, and then paste it on the POS action you're using, such as [LOOKUP]({{< ref "../../reference/sql_pos_action/index.md" >}})