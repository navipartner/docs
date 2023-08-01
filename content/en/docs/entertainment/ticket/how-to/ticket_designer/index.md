---
title: "Use the Ticket Designer"
description: "This article lists the Ticket Designer functionalities and provides the instructions for designing, duplicating, and deleting tickets."
lead: ""
date: 2023-07-13T09:17:41+02:00
lastmod: 2023-07-13T09:17:41+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "ticket_designer-6ee70a5b875bf476ccaff837197a03d8"
weight: 171
toc: true
type: docs
---

This article lists the **Ticket Designer** functionalities and provides the instructions for designing, duplicating, and deleting tickets.

## Shortcut Keys and Tools  
  

| Shortcut    | Tools                                          |Description                     |
| ----------- | -----------                                    |-----------                     |
| Alt + T     | ![Text tool](text.png)               |Toggle **Custom text toolbox**  |
| Alt + F     | ![Field tool](field.png)             |Toggle **Field** Toolbox        |
| Alt + Q     | ![QRcode tool](QRCode.png)           |Toggle **QRcode** Toolbox       |
| Alt + B     | ![barcode tool](barcode.png)         |Toggle **Barcode** Toolbox      |
| Alt + I     | ![Image tool](image.png)             |Toggle **Image** windows        |
| Alt + M     | ![Measure tool](measure.png)         |Toggle **Measure** Toolbox      |
| Alt + G     | ![Guidelines tool](Guidelines.png)   |Add / Remove **Guideline**      | 
| Alt + L     | ![Layers tool](layers.png)           |Show / Hide **Layers** box      |
| Alt + Z     | ![Zoom tool](Zoom.png)               |**Zoom** in / **Zoom** out      |
| Alt + P     | ![Preview tool](preview.png)         |Toggle **preview** window       |
| Alt + H     | ![CenterHoriz tool](centerHoriz.PNG) |Center **horizontally**         |
| Alt + V     | ![CenterVert tool](centerVert.PNG)   |Center **vertically**           |
| Alt + C     | ![Contain tool](contain.png)         |**Contain** within page         |
| Alt + O     | ![Overflow tool](overflow.png)       |Show **Overflow** elements      |
| Alt + A     | ![GIF tool](GIF.PNG)                 |Toggle **.gif** window *(only for mobile ticket)*|


## The Admin

When having logged into the **Ticket Designer admin** you have different options. You can either:

- Create a new ticket.
- Duplicate / Delete / Design / create a mobile ticket.      

![admin](admin.png)

## Duplicating a Ticket

Duplicating an existing ticket might be the easiest available operation. Most of the time you might want to keep the existing layout but alter a couple of things, maybe some text, or an image, so duplicating is definitely the way to go. This course of action also implies that you do not have to set a completely new design manually every time.

1. Click **Duplicate** ![duplicate](dublicate.PNG).    
   You will then be prompted to define the ticket parameters:    

   ![duplicate](dublicatepromp.PNG)

- **Ticket Code Type** - The code that the ticketing system will use to match the design from the actual ticket being sold.
- **Language** - The language for which this ticket will be used - Danish or English.

{{< alert icon="📝" text="More languages can be added upon request."/>}}

2. Click **Save**.

If you create a new ticket design from scratch you will also have to set the actual print size of the final ticket; This can be either A4 or A5. This also defines the canvas on the ticket designer.    

![new ticket](newticketlayout.PNG)


## Deleting a ticket

If you want to delete a created ticket click ![delete](deleteticket.PNG).   
Once clicked, you will be prompted if you want to proceed. Clicking **OK** will result in ticket deletion.

## Designing a ticket

1. Click ![design](design.PNG) to start designing a ticket.    
   If you have duplicated a ticket you will be presented by a complete copy of the duplicated ticket that you can edit as you please. If you have created an entirely new ticket you will be presented by a blank page.  
2. In the ticket designer you can easily add elements and move them around your page (canvas) by clicking and dragging. Together with a lot of intuitive tools you can position your items to pixel point accuracy.  

{{< alert icon="📝" text="You can always right-click on the existing elements and choose to <b>Edit</b> or <b>Delete</b> the element."/>}} 

### Design Toolbar

The design toolbar contains all the design options.       
![toolbar](toolbar.PNG)      
Please refer to the shortcut keys section in the beginning of the article for a full list of shortcut keys to use within the ticket designer.

### Text

The **Text** tool allows you to customize the text **Font Size**, **Font (Type)**, and the **Font Color**.  


### Field

The **Field** tool allows you to add fields that will be dynamically replaced with the actual content when the ticket is generated (E.g. Customer name, Ticket price, visit date, etc.).  
This tool also allows you to define the **Font Size**, **Font (Type)**, and **Font Color** of the fields that are displayed on the ticket.

### QrCode

Using the **QRCode** tool you can add QR Codes on your ticket. You can chose from 4 different sizes for the QRCode: *Small**, **Medium**, **Large**, and **X-Large**.

### Bar Code

Using the **Bar Code** tool you can add and customize Bar Codes on your ticket. You can chose from 2 different sizes; **Small** and **Medium**.

### Image

The **Image** tool allows you to upload images from your computer to the ticket. It also allows you to reuse a picture that you have uploaded in the past for any previously designed ticket.

- **Upload image** - When uploading an image first click **Choose File** to browse your computer and look for the image you want to upload. Once you select the image, click **Add** to start uploading. Once the image is uploaded it will be automatically displayed on the page. The allowed image formats are JPG, GIF, PNG, and Transparent PNG.

- **Select a previously uploaded image** - If you want to reuse an image you've uploaded in the past (on any ticket) you can click the **Browse Ticket** tab and then click through the list of images. Note that there will be a small preview displayed down the list to help you make an exact choice.
 
### Measure

If you want to know which size of image you want to add on a specific region on the ticket, a quick way to do so is by using the **Measure** tool. The **Measure** tool is a point-to-point tool which will give you the **Width(W)** and **Height (H)** of a specific region. First select the **Measure** tool, then click on a starting point, move your mouse to the end point, and click again.

{{< alert icon="📝" text="Bear in mind that the <b>Measure</b> tool is not a click-and-drag tool."/>}} 

Note that you can always hide the measuring layer by clicking the **Measure** tool icon from the toolbar again. When hiding the measure tool the selected region is not lost.

### Guidelines

**Guidelines** are here to give you the X and Y coordinates so you can position your elements with high accuracy on the page. Together with the positioning tool in the footer you can quickly move the elements exactly to the required coordinates with pixel point accuracy.

{{< alert icon="📝" text="For the horizontal and vertical lines there are two lines to drag in each direction to use for assistance."/>}} 

### Layers

Using the **Layer** tool you can move elements on top or send them to the back very easily. Note that you can only move elements within their element group. For example, you can only sort texts within text element group, etc. Images will always be displayed under **Text** and **Text** will always be displayed under **Fields**.  

In the tool you can drag to move the layers up and down:    
![Layers Popup](layerpopup.png)

### Preview

The **Preview** window will show you how the ticket will look after compiling. You can keep the window open and work on the ticket designer. Each time you make a change on the page the preview will reload.

### Reload

To reload, click ![reload](reload.PNG)

Assume you started editing an existing ticket and then you realized that you are doing it all wrong. You can always reload the ticket which will bring the ticket back to it status when last published.

### Publish

To publish, click ![publish](publish.PNG).

A ticket will never go to the production mode unless you publish it. Once you are done designing a ticket, and are sure that what you see in the **Preview** is what you want, then the ticket is ready to be published.


{{< alert icon="❗" text="A ticket can always be changed, even if it is put up for sale. The changes provided to the ticket will also take action on the already issued tickets. The customers will have to update the <b>Ticket</b> page and the changes will occur."/>}} 

## Mobile Ticket

For creating a mobile ticket the procedure is just like creating a printed ticket that will be generated for a .pdf-file. The only difference for the designer is that there is a tool for adding a .gif file for your ticket. 

{{< alert icon="📝" text="This ticket will be opened in a browser."/>}} 
