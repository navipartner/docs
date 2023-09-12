---
title: "Set up POS stores"
description: "Follow the guide covered in the article to set up a POS store as a part of your POS academy training. "
lead: ""
date: 2023-08-04T12:42:54+02:00
lastmod: 2023-08-04T12:42:54+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pos_store-21055863d1787c1d217aee58d022a42d"
weight: 15
toc: true
type: docs
---

The POS store is an entity of the highest level in the POS setup. It corresponds to a physical store, which is why the POS store setup performed in NP Retail needs to match the specifics of the physical store. 

The POS Store Card provides an option to create different setups for different stores. Other than the basic store information, such as its name, address, register number, and contacts, each store can have different dimensions, locations and posting rules. Additionally, depending on the assigned POS Posting Profile, different POS stores can have different General Business Posting Groups, VAT Business Posting Groups, Source Codes, Posting Compression, and different accounts for rounding and differences. 

After the POS store and POS units are created, the correlation between them needs to be established. Every POS unit must be attached to a POS store. A single POS store can have multiple POS units, but a POS unit can be attached to only one POS store. 

To create the *Bring It to You Retail Store Ltd* for the branch in Denmark, refer to the following guides:  

## Create a new POS store

1. Click the ![Lightbulb](Lightbulb_icon.PNG), enter **POS Store List**, and choose the related link.     
  A list of all existing POS stores is displayed. 
2. **Click New**.     
   The POS Store Card pop-up window is displayed. 
3. Populate all the necessary fields in the **General** section. 

| Field Name      | Description |   Example    |
| ----------- | ----------- | ----------- |
| **Code** | A unique code for the POS store. | **01** |
| **Name**  | The name of the POS store.  | **Bring It to You Retail Store Ltd** |
| **Name 2** | The branch in Denmark. | **Denmark Branch** |
| **Address** | The store address. | **Sværtegade  30** | 
| **Address 2** | An optional additional address line. | Not applicable for this example |
| **Post Code** | The postal code of the store.  | **DK-2100** |
| **City** | The name of the city in which the store is located.  | **Copenhagen** |
| **Contact** | The contact of the store. | **Mr Jonas Bensen** |
| **Country/Region Code** | The code of the country/region where the store is located. | **DK** |
| **Location Code** | The code of the location the store uses for inventory (the field can be left blank if location is not used). | **1** |
| **Language Code** | The code of the language used in the POS store. | **DAN** |
| **VAT Registration No.** | The VAT registration number used for the store. | **2052289494** |

4. Fill all necessary fields in the **Communication** section. 

| Field Name      | Description |   Example    |
| ----------- | ----------- | ----------- |
| **Phone No.** | The phone number of the store.  | 35 99 99 99 |
| **E-mail** | The email address used in the store. | JB@bringittoyou.dk |
| **Home Page** | The link to the store's website. | store@bringittoyou.dk |

5. Fill out the profiles necessary for the store setup. 
   - **POS Restaurant Profile** - The profile defined for restaurants and restaurant seats. It does not apply to our Retail Shop. 
   - **POS Posting Profile** - The profile defined for postings. In this profile you can define which business groups will be used for postings (VAT Business Posting Group and General Business Posting Group), source code; whether the entries will be compressed after posting or not, and which accounts will be used for rounding and differences. 
6. Fill all necessary fields in the **Reporting** section. 

| Field Name      | Description |   Example    |
| ----------- | ----------- | ----------- |
| **Department Code** | The global dimension which will be assigned to all entries from this store. | **Dimension 1 for the POS store** |
| **Project Code** | The global dimension which will be assigned to all entries from this store. | Not applicable for this example |
| **Store Group Code**  | The global dimension which will be assigned to all entries from this store.  | Not applicable for this example |
| **Store Category Code**  | The category that this store belongs to. It is used for reports. | Not applicable for this example |
| **Store Locality Code**  | The store locality used for reports.  | Not applicable for this example |
| **Store Size** | The size of the store.  | Not applicable for this example |
| **Opening Date** | The date on which the store is opened.   | Not applicable for this example |
| **Geolocation Latitude** | The latitude of the store's location.  | Not applicable for this example |
| **Geolocation Longitude**  | The longitude of the store's location.  | Not applicable for this example |

<iframe width="560" height="315" src="https://www.youtube.com/embed/AktQ3262OJ8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>