---
title: "Create a new Collect Store"
description: "The following procedure contains necessary steps for creating a collect store that can be successfully used with the Click & Collect module."
lead: ""
date: 2024-01-04T13:41:53+01:00
lastmod: 2024-01-04T13:41:53+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "stores-3fbff09679ddc76aa393f2016b013814"
weight: 147
toc: true
type: docs
---

The following procedure contains necessary steps for creating a collect store that can be successfully used with the Click & Collect module.

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Collect Stores**, and choose the related link.            
   The card contains various options for managing collect stores.  
2. To create a new store card, click **New**.             
   The **Collect Store Card** popup window is displayed.    
3. Provide the company name in the **Company Name** field.      
   The **Service URL** field is populated automatically if the store is in the same tenant, but it needs to be provided manually if that's not the case. 
4. Provide the service username and password in the designated fields. 
5. Activate the **Local Store** toggle switch if you're creating a source collect store, or leave it inactive if you're creating a target/collecting store.    
   If this toggle switch is active, the new **POS Relations** section displays in the **Store Card**. This section can be used for defining which POS store/unit the collect store is associated with.          

The following actions can be taken after completing the initial procedure. All of them can be accessed from the **Collect Store Card** ribbon. 

| Field Name      | Description |
| ----------- | ----------- |
| **Validate Store Setup** | Check if the **Service URL**, **Username**, and **Password** are correct. |
| **Update Contact Information** | Pull either **Cash Register**, **Location** or **Company Information** from the specified company. |
| **Show Address** | Open Google Maps based on the contact address, from where the geolocation can manually be copied from the URL. | 
| **Show Geolocation** | Open Google Maps based on the geolocation latitude and longitude. |
| **Stores by Distance** | Display a list of other stores with distance to the current store. | 


#### See also

- [<ins>Set up Click & Collect module in NP Retail<ins>]({{< ref "../setup/setup/index.md" >}})
- [<ins>Create a new Collect Workflow<ins>]({{< ref "../workflow/index.md" >}})