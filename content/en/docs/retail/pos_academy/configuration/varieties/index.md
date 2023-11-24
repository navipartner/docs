---
title: "Set up Varieties"
description: "Learn how to set up varieties as a part of your POS academy training."
lead: ""
date: 2023-08-09T11:46:07+02:00
lastmod: 2023-08-09T11:46:07+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "varieties-5cabe5d4a225a49b9ef04dc0f6f11ecf"
weight: 22
toc: true
type: docs
---
Variety is a tool that assists users in creating and associating different variations of items to their respective Item cards. The most common attributes, or variants, of items are Color, Size, Waist, and Length. There are also other variants that are specific to certain types of merchandise, for example Label, Wash, and Fit in the context of clothing merchandise. 

In this portion of the POS Academy, you will be walked through the process of creating a set of varieties for the Trousers item, for which you will set up a combination of Color, Length and Waist. Following that, you will apply the varieties on POS sale, Sales Order and Purchase Order in Business Central. 

## Variety Setup

Before varieties are used, you need to apply certain configurations in the **Variety Setup** administrative section. 

To configure the **Variety Setup**, follow the provided steps:  
 
1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Variety Setup**, and choose the related link.     
   The Variety Setup page is displayed.
2. Populate all necessary fields.     
   You can refer to the screenshot below and the [<ins>Variety Setup reference table<ins>]({{< ref "../../../varieties/reference/variety_setup_ref.md" >}}) for any additional information.
   ![varieties1](varieties1.PNG)
3. (Optional) Hide the inactive values via the designated option in the **View** section if you don't want to show combinations in the matrix form that aren’t used on a specific item. 

<iframe width="560" height="315" src="https://www.youtube.com/embed/pDZ9kzk3SIc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Variety Setup - Field Setup

From the **Variety Setup** administrative section, under the **Action Tab: Process**, you can configure the variety fields. **Variety Field Setup** allows you to control which field is displayed on the **Variety Matrix** when you are on different pages.  

![varieties2](varieties2.PNG)

On the **Variety Fields Setup** screen, there is an **Action Tab: Insert Default Setup** which simplifies the configuration. Once clicked, the default values will be set on the default tables. If you want to customize the display, you need to manually change the settings or add new tables and fields in the Variety **Fields Setup**. The following fields and options are available:  

| Field Name      | Description |
| ----------- | ----------- |
| **Type** | The following options are available: **Field** - Allows you to specify a table and a field; **Internal** - Allows you to specify a predefined function like inventory, a variant for this specific combination, and item reference barcode. |
| **Table No. + Field No.** | The following options are available: **Field Type** - Specifies the table and field number that you want available in the matrix; **Internal Type** - Specifies the function that you want to show by typing a number from the list above. |
| **Sort Order** | You can create a custom sort order that the fields are listed in. | 
| **Description** | The content specified in this field will be shown in **Show Field** s illustrated below in the example of **Sales Line** (**Table 37**), the field **Quantity** is shown in the **Variety Matrix**. |
| **Validate Field** | If this field is ticked, the data provided in the matrix will be validated in the database. Note that unchecking this checkbox may result in data integrity issues. |
| **Editable Field** | Determines whether the field is editable or not. |
| **Table Default** | When working on a sales order, you will insert items from **Table 37** to the sales lines (standard Business Central table with clothing items).  | 

![varieties3](varieties3.PNG)

You can enter the quantity that you’re selling from the sales order document by using the **Variety Matrix**.  

![varieties4](varieties4.PNG)

Apart from the primary set of data, you can also define a secondary value to appear in the **Variety Matrix** in certain circumstances. To do so, you first need to define the fields that you want to be displayed as secondary values. 

| Field Name      | Description |
| ----------- | ----------- |
| **Secondary Set of Data** | You can define a secondary field that will appear on the **Variety Matrix** in the same way you would set fields from the default table.  |

![varieties5](varieties5.PNG)

If you look at the setup for **Variant Table (5401)**, there are two fields in the table: 

- **Create Variants** 
- **Item Reference** 

If you set up the secondary field, its value will be in brackets, that will be displayed in the matrix. For the **Variant Table (5401)**, there is an **Internal** field that indicates the inventory of the variant: **Inventory**.  

The type **Internal** allows you to specify a predefined function such as:  

- **Inventory**
- **Variant exists for this combination** 
- **Item Reference barcode** 

In the example above, when you select to show the **Create Variants** field for the **Table 5401** in **Variety Matrix**, you will see that if there is a variant of that variety combination for the selected item. The color variants are identified as **Yes** automatically. In the second field, which will be in brackets ( ), the system will specify the available **Inventory** of the variant at that point in time. For example, for the item **Tommy Hilfiger Scanton 13**, with a variety combination of **Waist:30**, **Length:101-105cm** and **Color: Blue**, the value will be **Yes**(**20**).  

This means that the following item is available in stock: **Tommy Hilfiger Scanton 13** in the combination of **Waist:30** **Length:101-105 cm** and **Color: Blue** and **20**. 

![varieties6](varieties6.PNG)

Seeing as how in the **Variety Field Setup** you have specified **Create Variants** & **Item Reference** as the primary fields to be displayed in the matrix, you can interchange it and the relevant value will be displayed.  

Hence, when you select the second primary **Item Reference** in **Show Field**, for a variety combination of **Waist:30**, **Length:101-105cm** and **Color: Blue**, the value will be **2800000001254 (20)**. Thus, the Item Reference is **2800000001254** and the stock value is **20**. 

<iframe width="560" height="315" src="https://www.youtube.com/embed/owAFstc4vds" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Variety (administrative section)

The **Variety** administrative section contains the list of varieties created in the environment, along with some of their basic properties. Refer to the [<ins>Variety reference table<ins>]({{< ref "../../../varieties/reference/variety_ref.md" >}}) for more information.

<iframe width="560" height="315" src="https://www.youtube.com/embed/DWCgtBz6-2c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Variety Table (administrative section)

After a new variety is created, it's necessary to also create a variety table. There can be many different types of varieties - for example, there can be multiple different types of variety color, depending on the item which is created. 

![varieties7](varieties7.PNG)

On the **Variety** page, there is an **Action Tab: Variety Table**. You will configure the Variety Table from that action. Refer to the [<ins>Variety reference table<ins>]({{< ref "../../../varieties/reference/variety_table_ref.md" >}}) for more information.

<iframe width="560" height="315" src="https://www.youtube.com/embed/ZhXcEmrrknk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Variety Values (administrative section) 

The following options are available when assigning values to varieties in the Variety Value administrative section. The variety values are the value that you want to attribute to the item as variation. For example, you will have different colors.  

![varieties8](varieties8.PNG)

On the **Variety Table** page, there is an **Action Tab: Values**. Refer to the [<ins>Variety Values reference table<ins>]({{< ref "../../../varieties/reference/variety_values_ref.md" >}}) for more information.

<iframe width="560" height="315" src="https://www.youtube.com/embed/ksacX2zt9Uw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Configure Variety Groups  

Variety groups are combinations of varieties assembled according to a certain logic, which can be assigned to the items.  

![varieties9](varieties9.PNG)

To configure a Variety Group, follow the provided steps:  

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Variety Group**, and choose the related link.       
   The **Variety Group List** is opened.
2. Click **New**.      
   A new line will be available for you to fill in the details. Refer to the relevant [<ins>Variety Group reference guide<ins>]({{< ref "../../../varieties/reference/group_ref.md" >}}) for more information.
3. Make sure that the **No. Series** field is left blank in this example.

<iframe width="560" height="315" src="https://www.youtube.com/embed/7BQ8XESFc0I" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Assign a variety to an item

After you've set up varieties, you can assign them to items. To assign a variety to an item, follow the provided steps: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, **enter Items and** open the related link. 
2. Open the **Item Card** of an item you wish to assign the variety to. 
3. Select the **Variety Group** in the **Variety** section.      
   All other fields are populated automatically with the data from the variety group you add. 

   From Variety Group: **TROUSERS VINCE**, you get:  

   - Variety 1: COLOR / Variety Table: TROUSERS-80059 
   - Variety 2: WAIST / Variety Table: WAIST UK 
   - Variety 3: LENGTH / Variety Table: TROUSERS 

   You will notice that in the fields **Variety 1 Table**, the **Table** name is **TROUSERS-80059**, and not **TROUSERS**. This will occur if you have stated that a copy of **Variety Table 1** should be created during the **Variety Group** setup portion.  

   ![varieties10](varieties10.PNG)

   The varieties are now assigned to the item, but it's also necessary to assign the values of varieties which this item has. 

4. Click **History** in the **Action** ribbon of the **Item Card**, followed by **Variety Maintenance**.       
   The matrix with different values is opened as a result. You will have a matrix of three components as defined in the **Variety Group**. 

5. Tick the checkboxes in the matrix to create combinations of values that the item is going to have.      
   You can tick them one by one manually or use facilities like **Select Active Row** or **Select All**.  

 ![varieties11](varieties11.png)

 The Horizontal Row is Variety 1. If your focus is not COLOR, but WAIST, then you can change the Horizontal Row to show Variety 2. 

 In the provided example, the item **80059 - Trousers** has the following combinations of Color, Waist & Length. 

- All Colors in Waist 30 Length 101-105 cm (All Colors -W30 101-105 cm)
- All Colors in Waist 30 Length 111-115 cm (All Colors -W30 111-115 cm)
- All Colors in Waist 30 Length 121-125 cm (All Colors -W30 121-125 cm)

It is when you select the combination, that the system creates the variant codes for these varieties as well as the **Item Reference** for them.

<iframe width="560" height="315" src="https://www.youtube.com/embed/Xe4AwlA5DmE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Variant Codes created automatically

If you click **Action** in the ribbon of the **Item Card**, followed by **Variant**, you can see which variant codes have been created.

 ![varieties12](varieties12.png)

### Item Reference created automatically

If you click **Related** in the ribbon of the **Item Card**, followed by **Item**, you can see the corresponding Item References that have been created.

 ![varieties13](varieties13.png)

## Block a variant

If you wish to block a certain variant, refer to the relevant [<ins>Variant blocking guide<ins>]({{< ref "../../../varieties/how-to/block_variant.md" >}}) for more information.

## Set up pop-up variety on Documents

The **Variety Matrix** is used for configuring detailed item lines on various orders by matching the available attributes. To set up variety matrix facilities on sales orders, follow the provided steps:

1.	Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Variety Setup** and open the related link.
2.	Enable **Pop up Variety Matrix** or activate the individual document pop-ups.    
    If an item with variants is selected on sales and purchase documents, the variety matrix will pop up.
    In normal circumstances, you can insert a line, item code, then select the required variant code, and continue to set the quantity. For each variety it will be necessary to insert an item and variant code manually.

{{< alert icon="📝" text="The same procedure should be followed to enable the <b>Variety Matrix</b> popup window on <b>Sales Return Orders</b>, <b>Purchase Orders</b>, and <b>Return Purchase Orders</b>. The only difference being that you need to start from one of those administrative sections."/>}}

When you scan the **Item Reference No.** directly in the **Input Box**, the item with that variety will be inserted in the POS sales line. And then you can complete the payment to finish the sale.

 ![varieties14](varieties14.png)

 When you enter **Item No.** directly in the **Input Box**, a pop-up screen will be displayed for you to select which variety you are going to sell on the POS. After selecting the variety, the system will insert the line in the POS sales line. And then you can complete the payment to finish the sale.

  ![varieties15](varieties15.png)

## Using Variety Matrix in Documents 

When you create a sales order, on selecting the item with variety, you will be presented with the variety matrix to enter your order.

1.	Create a new **Sales Order** or edit an existing one in the **Open** status.
2.	In the **Lines** section add an item which has variants available.     
    The **Variety Matrix** popup window is displayed.

 ![varieties16](varieties16.png)

3.	Insert the quantity to be purchased.    
    Based on the matrix, the required lines will be automatically inserted.
4.	Add the location from which the stock is taken out.
5.	Complete the Sales Order.

{{< alert icon="📝" text="The same logic will be applied for other documents such as Sales Return Order, Purchase Order, Purchase Return Order and Transfer Order."/>}}

<iframe width="560" height="315" src="https://www.youtube.com/embed/P63eJyhAMzg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>