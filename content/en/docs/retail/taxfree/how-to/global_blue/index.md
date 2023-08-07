---
title: "Set up Global Blue tax-free solution"
description: "The Global Blue tax free setup is performed in several sections of Business Central that are described in this article."
lead: ""
date: 2023-07-06T16:18:43+02:00
lastmod: 2023-07-06T16:18:43+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "global_blue-d8352dce3c63d1d9d440d10458ff070d"
weight: 166
toc: true
type: docs
---

The Global Blue tax free setup is performed in several sections of Business Central. Follow the provided steps to set it up.

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Tax Free Profiles** and select the related link.               
   The page which contains all POS tax free profiles created in the environment is displayed. Here, you can link the tax free parameters to each available POS unit.
2. Click **New** and define [all necessary options]({{< ref "../../../pos_profiles/reference/tax_free_ref/tax_free_ref.md" >}}).   
   The **Code** field is mandatory. 
3. In the **Handler ID** field, select the **GLOBALBLUE_I2** for the Global Blue integrated solution.    
   As soon as you specify the handler ID, you need to set the accompanying parameters.
4. Click **Set Parameters** in the ribbon.     
   Populate the [parameter-related fields]({{< ref "../../reference/params_ref/index.md" >}}).
5. Choose between **PROD** or **TEST** to determine whether the integration will be established on the production environment, or not.         
   The **PROD** option should be selected for customers. 
6. Click **Set Parameters** to set up the handler.        
   A popup window containing parameters for handler setup is displayed.
7. Set up everything in the **Required** panel according to the Global Blue instructions for the specific customer.       
   Set up other parameters in the **Dialog** panel if needed.
8. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Object Output Selection** and select the related link.
   The window from which the NP Retail print setup can be controlled is displayed.       
9.  Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter [**Retail Logo Setup**]({{< ref "../../../pos_processes/how-to/retail_logo/index.md" >}}) and select the related link.    
   A window in which logos can be uploaded and set up is displayed.   
10. To make sure the Global Blue logo is printed out on the thermal tax-free vouchers, upload it in the **Retail Logo Setup** page with the keyword **TAXFREE**.          
   ![Global Blue Tax Free Logo Upload Example](tax-free-logo-setup.png)        
   

Tax-free vouchers can be printed out either as thermal or PDF, depending on the customer choice and coordination between them and Global Blue. For thermal vouchers, the **Output Path** field should direct to a thermal printer, and for PDF a regular printer needs to be specified. The alternative for normal windows-connected PDF printer is to print the voucher via the <a href="https://www.google.com/cloudprint/learn\">Google Cloud Print</a>.

### Next steps

Move on to the [NAS setup]({{< ref "../../reference/nas_setup/index.md" >}}).

## Troubleshooting 

[Tax-free troubleshooting]({{< ref "../../../../troubleshooting/tax_free.md" >}})