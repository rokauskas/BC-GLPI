# BC-GLPI Extension

## Overview
This extension integrates Business Central with GLPI by exposing custom item fields via a Business Central API page. GLPI can use the API to read and update item synchronization status and external system IDs.

## Preparing Business Central for API Use

To enable APIs in Business Central, follow these steps:

1. **Enable the API Services**
   - Go to **Search** and enter `API Setup`.
   - Ensure that the API Services are enabled.
   - Set the `Base URL` and other relevant settings as needed.

2. **Set Up Web Services**
   - Go to **Search** and enter `Web Services`.
   - Make sure the OData and SOAP services are enabled in the Business Central server configuration (`CustomSettings.config`).
   - Common settings:
     - `ODataServicesEnabled = true`
     - `ODataV4EndpointEnabled = true`
     - `SOAPServicesEnabled = true`

3. **Configure Users and Permissions**
   - Ensure that the user accessing the API has the necessary permissions (e.g., `API Read`, `API Write`, or custom permissions for your API page).
   - Assign the user to the correct company/tenant.

4. **Publish Your Extension**
   - Use Visual Studio Code and the AL Language extension to publish your extension.
   - Run `AL: Publish` from the Command Palette.

5. **Access the API Endpoint**
   - The API endpoint for your page will be:
     ```
     http://<server>:<port>/<instance>/api/bcglpi/integration/v1.0/itemglpis
     ```
   - You can use tools like Postman, curl, or your integration code to access this endpoint.

## Reference
For more details, see the official documentation:
[Enabling APIs for Dynamics NAV/Business Central](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/api-reference/v2.0/enabling-apis-for-dynamics-nav)

---

**Note:**
- Make sure your extension is published and the API page is available.
- The API will not appear in the Business Central UI; it is accessible via HTTP requests only.

API url example: http://srv-bc:7048/BC260/api/bcglpi/integration/v1.0/itemglpis
