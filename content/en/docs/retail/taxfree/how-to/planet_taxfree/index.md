---
title: "Set up Planet tax-free integration"
description: "The Planet integration is performed in several sections of Business Central that are described in this article."
lead: ""
date: 2024-12-11T08:47:42+01:00
lastmod: 2024-12-11T08:47:42+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "planet_taxfree-8f4822863c9519feab43b8e6c792dd7b"
weight: 166
toc: true
type: docs
---

Integration with [<ins>Planet tax-free<ins>](https://www.planetpayment.com/) offers several benefits, such as simplification of complex tax-free shopping for eligible customers thanks to automated VAT refunds and reduced number of manual errors. 

To use Planet tax-free solution, you need to create the corresponding tax-free profile in Business Central, and attach it to a POS unit. 

If you require more precise instructions, follow the provided steps: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Tax Free Profiles** and select the related link.               
   The page which contains all POS tax free profiles created in the environment is displayed. Here, you can link the tax free parameters to each available POS unit.
2. Click **New** and define [<ins>all necessary options<ins>]({{< ref "../../../pos_profiles/reference/tax_free_ref/tax_free_ref.md" >}}).   
   The **Code** field is mandatory. 
3. In the **Handler ID** field, select **PREMIER_PI** for the Planet integrated solution.    
   As soon as you specify the handler ID, you need to set the accompanying parameters.

   {{< alert icon="📝" text="The <b>Auto Configure</b> option isn't supported for the Planet tax-free integration."/>}}

4. Click **Set Parameters** in the ribbon.     
   Populate the parameter-related fields.     

   {{< alert icon="🔒" text="Contact NaviPartner or Planet to obtain the credentials required to configure the integration."/>}}

5. Select the **PROD** environment.         
   The **TEST** option should only be used internally by NaviPartner employees, and it requires a different set of parameters. 
6. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Unit List** and select the related link.               
7. Open the **POS Unit Card** associated with the POS unit you will use for the tax-free integration, and attach the profile you've created to it by selecting it from the **POS Tax Free Profile** dropdown list.
8. Open the POS that is going to be using the tax-free integration, and [<ins>create a new button on it<ins>]({{< ref "../../../pos_layout/how-to/new_button/index.md" >}}) via the POS Layout Setup Wizard.
9. Customize the button and add the caption you wish to it, but make sure that it has the **TAX_FREE** action attached.

