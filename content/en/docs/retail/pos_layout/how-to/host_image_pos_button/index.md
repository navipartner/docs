---
title: "Host image on POS buttons"
description: "How to host and display item images on POS buttons, using either dynamic placeholders or direct image links."
lead: ""
date: 2023-10-10T15:16:32+02:00
lastmod: 2023-10-10T15:16:32+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "host_image_pos_buttons"
weight: 126
toc: true
type: docs
---

<p style="text-align: justify;">
In certain POS configurations, it is possible to assign custom images to buttons in order to improve usability and create a more intuitive layout for cashiers. This is especially helpful in environments where speed and visual recognition are important, such as in retail and hospitality.
To achieve this, the POS allows image URLs to be linked to each button. However, these URLs must follow strict formatting rules and rely on specific data structures within the POS. 
       
There are **two scenarios** for hosting images on POS buttons.

In the **first scenario**, the image is linked to the item added to the sales line. The system dynamically replaces the placeholder {6} in the image URL with the actual Item No., so the correct image is displayed during the sales process.
1.	Select the target button in **edit mode** and click **"Edit"**. <br>
While in layout editing mode, click on the button you want to update, then select Edit. This will open a new **Edit Button window** where you can configure button settings.
2.	Set the **Data source** to **BUILTIN_SALESLINE**. <br>
In the Edit Button window, locate the Data source field and set its value to BUILTIN_SALESLINE. This is required for the **image URL** logic to resolve properly.
    {{< alert icon="💡" text="Hovering over the black circle (info icon) of the Data source field, you will see all the dynamic info that can be extracted from the current context — such as values related to the sales line item (for example, item number, quantity, price, and so on)."/>}}

In the context of dynamic image loading, you need to construct the image URL using a dynamic placeholder that reflects the Item number.
Dynamic field number 6 represents the Item No., so the URL should include {6} as a placeholder.
This setup works as follows:
 - Field 6 is populated with the Item number,
 - The system dynamically replaces {6} in the URL with the actual item number,
 - This results in the correct image being loaded.

    {{< alert icon="📝" text="The image file name must exactly match the Item No. <br> If the Item No. is 10001, the image must be named 10001.jpg. This one-to-one mapping ensures the correct image is retrieved and displayed on the button."/>}}

3.	Click the **Image button** and enter the image URL. <br>
In the upper central part of the Edit Button window, click on the Image button. This will open a field where you can enter the image URL.
        - Paste the URL containing the **dynamic placeholder**: URL/{6}.jpg
4.	Click **Save** to apply the changes
After entering the image URL and completing the setup, click Save in the Edit Button window. This will ensure your changes are stored and reflected in the POS layout.


In the **second scenario**, the image is directly linked to a specific item button, using the exact file name for that item, without placeholders. This allows the image to be displayed on the POS button itself for easier identification of the item.

The steps are the same as in the first scenario, except for the following difference:
 - Image URL: Instead of using a dynamic placeholder, enter a **direct link** to the specific image file (for example, URL/10001.jpg).
 - Result: The image will always appear on the button itself, regardless of the sales process context.

### Image hosting requirements

The image button feature requires URLs that point directly to raw image files. These URLs need to be publicly accessible without any authentication or login, and they must serve the image file itself—not redirect to preview pages or external applications. Because of this, platforms like SharePoint are not suitable for hosting these images.

##### Recommended solution

For reliable and hassle-free hosting, we recommend using **Cloudflare** Images. To get started, create an account on Cloudflare, **upload** your images via their dashboard, and **copy the direct URLs** provided. These URLs can then be used in the POS configuration with dynamic placeholders, allowing images to load correctly based on the item numbers.

##### Why can’t the images be stored inside Business Central?
It might not be ideal to store images directly inside Business Central, and the reasons are threefold:
1.	Business Central SaaS storage prices are much higher than dedicated image hosting services. Using Business Central to store large numbers of images can be **expensive** compared to platforms designed for image hosting.
2.	**Uploading** many images at once to Business Central SaaS is much **slower** than using specialized image hosting platforms. These platforms are optimized for fast image uploads, which ensures a smoother and more efficient process.
3.	**Retrieving** all images from Business Central SaaS is **slowe**r than pulling images from dedicated image hosts. The latency and speed of delivery are much improved when using services like Cloudflare.
Therefore, storing images in a dedicated image hosting service like Cloudflare significantly improves both performance and cost-effectiveness.

#### How to get started with Cloudflare for image hosting

Cloudflare provides a simple and efficient way to host your images and serve them through their global Content Delivery Network (CDN). Below are the steps to upload and manage your images on Cloudflare, ensuring that they are ready for use in your POS system. <br>
Steps to Upload and Use Images with Cloudflare:
1.	Create a **Cloudflare Account**. <br>
Visit the Cloudflare Sign Up page and create an account by following their simple registration process.
2.	Access the **Cloudflare Dashboard**. <br>
Once logged in, navigate to the Cloudflare dashboard. From here, you can manage all aspects of your Cloudflare account, including image hosting.
3.	**Upload Images**
    - In the Cloudflare dashboard, go to the **Images section**.
    - Use the drag-and-drop interface to upload your images. You can upload many images at once, and Cloudflare will automatically store them on their CDN.

    {{< alert icon="💡" text="For detailed instructions on uploading images, refer to Cloudflare’s official guide: <a href='https://developers.cloudflare.com/images/upload-images/upload-dashboard/' target='_blank'>Cloudflare Image Upload Guide</a>" />}}

4.	Get Direct Image URLs <br>
After uploading your images, Cloudflare will provide **direct URLs** for each image. These URLs are the raw links to your image files. You can use these URLs in your POS configuration to dynamically load images based on item numbers, as described in the previous section.
<p>

#### See also

- [<ins>POS editor<ins>]({{< ref "../../explanation/pos_editor/index.md" >}})


