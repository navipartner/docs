---
title: "Custom configurations for item add-ons"
description: "Any custom configuration on item add-ons should be done immediately after the common creation steps. Refer to the examples for more details."
lead: ""
date: 2023-08-18T11:15:13+02:00
lastmod: 2023-08-18T11:15:13+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "custom_configurations-bf3a653e8a546fcd70298079e95754d4"
weight: 49
toc: true
type: docs
---

## Example: Item add-ons as a fixed accessory attached to the main item

If you wish to sell a cooker as a main item but want the cooker hood to be attached as a second item automatically, follow the steps below.

#### Prerequisites

- Create an item which is going to be the main item on the POS in this scenario.
- Create another item which will be a component of the main item.

#### Procedure

1.	Navigate to the **Item AddOn Card** in Business Central.

2.	Select the **Type**.   
    If you wish a line to be inserted immediately after the main item, add **Quantity** in this field.

3.	Insert the **Item No.** of the item that is attached as an add-on to the main item.    
    You can add more than one item if needed.
4.	Insert the **Variant Code** if a variant is going to be used as an item add-on on the POS.     
    If the item has a variant, and the field is left blank, you will be prompted to select the variant on doing the sale on the POS.

5.	Insert the **Description**.    
    The description is inherited from the **Item Card** of the item used as an item add-on.

6.	Input **1** as the **Quantity** of item add-ons that you wish to sell alongside the main item.

7.	Define if the item add-on is added **Per Unit** of the main item or not.    
    Each time you increase the main item quantity, the item add-on quantity is also increased according to the value provided in the **Quantity** field from the previous step.  

  {{< alert icon="💡" text="<b>Example</b>:If this checkbox isn’t ticked, and you’ve set 1 as the quantity, 1 item add-on will be attached to the main item on the POS regardless of how many main item units are added to the cart. If the checkbox is ticked, and the quantity is 1, if you increase the quantity of the main item to 2, the quantity of the item add-on will be increased to 2 automatically."/>}} 

8.	Define whether the add-on **Quantity** you’ve provided will be always added to the cart regardless of the sale level with the **Fixed Quantity** option.

9.	Specify whether the item add-on is **Mandatory**.     
    If mandatory, the item add-on line can’t be deleted on the POS sale level. When you sell a main item, an accompanying item add-on will also be sold.
  
10.	Specify a **Unit Price** for the item add-on.    
    The unit price is taken from the add-on’s **Item Card**, but it’s possible to modify it. This price is used when inserting the line with the item add-on in the cart. 

11.	State whether the serial number will be copied in the **Copy Serial No.** field.    
    This field is relevant if tracking is performed with the item’s serial number.

12.	[Attach the Item add-on to the main item]({{< ref "../setup/#attach-item-add-ons-to-the-main-item" >}}).

## Example: Item add-ons priced as a percentage of the main item and presented as a list

In the example of an electronics shop, you may need to create a list of warranty schemes that can be sold alongside the main item. In this list, you can select more than one line and increase the quantity on a specific line. Additionally, instead of setting the price of the item add-on as a fixed price, you can calculate it as a percentage (%) of the main item’s price. 

![item_addon2](item_addon2.PNG)

#### Prerequisites

-	Create the main item and the item that will be used as the item add-on.  

#### Procedure in Business Central

1.	Navigate to the **Item AddOn Card** in Business Central.

2.	Select the **Type**.    
    If you wish a line to be inserted immediately after the main item, add **Quantity** in this field.

3.	Insert the **Item No.** of the item that is going to be attached as an item add-on.   

  {{< alert icon="💡" text="You can add more than one item if needed. "/>}} 

4.	Insert a **Variant Code** if a variant is going to be used as an item add-on on the POS.   

  {{< alert icon="💡" text="If the item has a variant, and the field is left blank, you will be prompted to select the variant on doing the sale on the POS."/>}} 

5.	Insert the **Description**.   
    The description is inherited from the **Item Card** of the item used as an item add-on.

6.	Don’t populate the **Quantity** of the item add-on as the salesperson needs to provide it during the sale. 

7.	Leave the **Per Unit** checkbox unticked as the salesperson needs to insert the quantity of item add-ons added to the line. 

8.	Leave the **Fixed Quantity** checkbox unticked, as there’s no fixed quantity attached.

9.	Leave the **Mandatory** checkbox unticked, as the salesperson can choose not to add any on the POS.

10.	Leave the **Unit Price** field blank, as the unit price is calculated as the percentage of the unit price of the main item.

11.	Insert **UnitPriceFromMaster** in the **Before Insert Function** field.    
    The price is based on the percentage of the main item price.

13.	State whether the serial number is going to be copied in the **Copy Serial No.** field.   
    This field is relevant if tracking is performed according to the item’s serial number.  

12.	Define the **Unit Price % from Master** in **Item AddOn Line Setup**.     
    You can navigate to the **Item AddOn Line Setup** by clicking **Manage** in the **Line Tab** and selecting the **Before Insert Setup** function.

  ![item_addon3](item_addon3.PNG)

13. [Attach the Item add-on to the main item]({{< ref "../setup/#attach-item-add-ons-to-the-main-item" >}}).

#### Procedure on the POS

On scanning the main item, a pop-up menu is displayed, and the salesperson needs to choose which scheme they need, and their selection is then inserted on POS lines.

  ![item_addon4](item_addon4.png)

## Example: Item add-ons as a list of options

You can create a list of warranty schemes that can be sold with the item. In this list, it will be possible to select only one option at a time, and the quantity is fixed. 

  ![item_addon5](item_addon5.png)

#### Prerequisites

-	Create the main item and the items that will be used as the item add-ons.

#### Procedure in Business Central

1.	Navigate to the **Item AddOn Card** in Business Central.

2.	Set the **Type** to **Select** to indicate that an item selection will be possible.

3.	Insert the **Description** to know what kind of options are going to be defined.

4.	Leave all other fields blank. 

5.	Click **Select Options** in the **Manage** tab to define the details of your scheme.      
    You can provide various options that the salesperson will be able to choose from on the POS.

6.	Insert the **Item No**.   
    Insert the item you want the system to insert as the item add-on. 

  {{< alert icon="💡" text="You will add more than one item to have more options, hence you will build a list of items, you will have multiple lines."/>}} 

7.	Insert the **Variant Code**.   
    Specify which variant of the item that you are using as an add-on you wish to attach, if any.

  {{< alert icon="💡" text="If the item has a variant and the field is left blank, a pop-up will be displayed on the POS which prompts you to select the variant during the sale. "/>}} 

8.	Insert the **Description**.   
    The description is inherited from the **Item Card** of the item used as the item add-on.

9.	Input **1** in **Fixed Quantity**.

10.	Specify a **Unit Price** for the item add-on.   
    The unit price is inherited from the **Item Card**, but it’s possible to change it.

11.	Specify the **Discount**.     
    Instead of modifying the **Unit Price**, you can assign a discount percentage for the price at this level.

12.	[Attach the Item add-on to the main item]({{< ref "../setup/#attach-item-add-ons-to-the-main-item" >}}).

#### Procedure on the POS

When you scan the main item, a pop-up menu is displayed, and the salesperson can choose which option they wish to use. The option is then inserted in the POS lines.

  ![item_addon6](item_addon6.png)

You can get more examples, use cases, and best practices in the [Item add-on general documentation]({{< ref "../../../pos_processes/how-to/item_addon/index.md" >}})