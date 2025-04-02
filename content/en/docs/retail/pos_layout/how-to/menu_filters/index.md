---
title: "Create POS menu filters"
description: "POS menu filters allow users to generate lists that can be accessed by pressing a button on the POS. These filters extract data from a specified table, enabling selection of relevant values on the POS. To implement this functionality, data extraction must be properly configured."
lead: ""
date: 2023-07-07T14:07:39+02:00
lastmod: 2023-07-07T14:07:39+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "menu_filters-2575ff105ab5bad1d4ccf4298cda78cb"
weight: 125
toc: true
type: docs
---

POS menu filters allow users to generate lists that can be accessed by pressing a button on the POS. These filters extract data from a specified table, enabling selection of relevant values on the POS. To implement this functionality, data extraction must be properly configured.


To create POS menu filters, follow the provided steps: 

### Define the filter

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Menu Filter List**, and open the related link.
2. Click **New** to create a new filter. 
3. In the **Filter Code** field, enter a unique code for the filter.   
4. In the **Description** field, provide a brief explanation of the filter’s purpose.

### Configure the filter logic

1. In **Run object** panel:
   - Specify the object type that will be executed when the filter runs (options include **Report**, **Codeunit**, **XMLPort**, and **Page**).
   - Enter the **Object ID**.       
     For example, to display a list of open credit vouchers when the button is pressed, set the **Object ID** to **6151015** (**NPR NpRv Vouchers**).
2. In the **Filter record** panel:
   - Select the **Table No.** containing the values needed for the filter.        
     **Example**: Referencing table 6151013 (NPR NpRv Voucher) retrieves information about credit vouchers, including those that remain open (unused).    
   - Choose the fields from that table to apply the filter.
3. Select **Generic Filter**, and define filtering conditions based on the table fields:  
   - **Field 5 - Voucher Type**: Set to **CREDITVOUCHER** to filter by voucher type.
   - **Field 70 - Open**: Set to **Yes** to include only open vouchers.
4. Close the **Generic Filter** page once the filter conditions are applied.

### Validate and activate the filter

5. On the **POS Menu Filter** page, select **Display Filter** from the **Actions** dropdown to view the SQL format of the filter. **Example**:

   ```sql
   SORTING(No.) WHERE(Voucher Type=FILTER(CREDITVOUCHER), Open=FILTER(Yes))
   ```

6. Select **Test & Activate** in the ribbon to verify and activate the filter.     
   The results will be displayed in a preview page.

### Configure the POS button

1. Open the POS and use the **POS Editor** to configure the button:
   - Set the caption for the button.
   - Ensure the **Action Type** is set to **Action**.
   - Set the **POS Action** to **RUNOBJECT**. 

2. In the **MenuFilterCode** field of the POS parameter, enter the **POS Menu Filter** created in the previous steps.


If you're having difficulty writing down a filter on any table in the SQL statement, you can always use the **POS Menu Filters** function to generate it, and then paste it on the POS action you're using, such as [<ins>LOOKUP<ins>]({{< ref "../../reference/sql_pos_action/index.md" >}})

#### See also

- [<ins>POS editor<ins>]({{< ref "../../explanation/pos_editor/index.md" >}})
- [<ins>Create buttons in POS menus<ins>]({{< ref "../new_button/index.md" >}})