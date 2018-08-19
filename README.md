# Izenda Html Starter Kit
The starter kit demonstrates how to integrate Izenda BI 7 Series tool in an html page. 
The API in the kit impersonates all requests to be Izenda Admin user.

## Izenda Version
2.5.0

## Prerequisites

1. If the deployment is newer than 2.5.0, please follow the upgrade instructions.
   
2. Location of additional files to modify:   
   * APIStarterKit\izendadb.config
   * DB\IzendaDBScript.sql
   * Website\scripts\izenda_integrate.js
   
## Getting Started

### Download Resources
Download the API.zip and EmbeddedUI.zip (https://downloads.izenda.com).

#### API
* Copy all files & folders in API\bin -> APIStarterKit\IzendaReferences
* API\Content -> APIStarterKit\IzendaResources
* API\EmailTemplates -> APIStarterKit\IzendaResources
* API\Export -> APIStarterKit\IzendaResources

#### Embedded UI
* Copy all files & folders in EmbeddedUI -> Website\scripts\izenda

### Setup
1. In Visual Studio, compile and deploy the APIStarterKit and Website. Deploy the APIStarterKit and the Website to IIS server.
	* APIStarterKit : Modified API to work with an HTML Deployment
	* Website : An HTML Page rendering an Izenda page.

2. Run the IzendaDBScript.sql in SSMS to populate your Izenda Database. Within the IzendaSystemSettings of your Izenda database, ensure the following settings have the appropriate values (Note: AuthValidateAccessTokenUrl and AuthGetAccessTokenUrl use your WebAPIUrl value without the trailing /api/ as the base of the URL): 
	* DeploymentMode = 1 
	* WebAPIUrl = APIStarterKit URL you set with a trailing /api/ (ex. http://localhost:8080/api/) 
	* AuthValidateAccessTokenUrl = http://localhost:8080/authapi/user/validateIzendaAuthToken   
	* AuthGetAccessTokenUrl = http://localhost:8080/authapi/user/GetIzendaAccessToken  
	
3. Update the Izenda database connection string in izendadb.config file. If your connection string is unencrypted, ensure that you escape any special characters.
   
   ```
   "server=My-PC\SQLEXPRESS;database=HTML_Izenda;User Id=Test;Password=test123;"  
   ==> 
   "server=My-PC\\SQLEXPRESS;database=HTML_Izenda;User Id=Test;Password=test123;"
   ```
    Syntax Reference for MSSQL izendadb.config:
    ```
    {"ServerTypeId":"572bd576-8c92-4901-ab2a-b16e38144813","ServerTypeName":"[MSSQL] SQLServer","ConnectionString":"Server=YourServer;Database=YourIzendaDatabase;User Id=YourUserName;Password=YourPassword;","ConnectionId":"00000000-0000-0000-0000-000000000000"}
    ```
    Syntax Reference for Azure SQL izendadb.config:
    ```
    {"ServerTypeId":"d968e96f-91dc-414d-9fd8-aef2926c9a18","ServerTypeName":"[AZSQL] AzureSQL","ConnectionString":"Server=YourServer;Database=YourIzendaDatabase;User Id=YourUserName;Password=YourPassword;","ConnectionId":"00000000-0000-0000-0000-000000000000"}
    ```
    Syntax Reference for Oracle izendadb.config:
    ```
    {"ServerTypeId":"93942448-c715-4f98-85e2-9292ed7ca4bc","ServerTypeName":"[ORACL] Oracle","ConnectionString":"Data Source=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=YourHostAddress)(PORT=YourPort))(CONNECT_DATA=(SERVICE_NAME=YourServiceName)));User Id=YourUserName;Password=YourPassword;","ConnectionId":"00000000-0000-0000-0000-000000000000"}
    ```
    Syntax Reference for MySQL izendadb.config:
    ```
    {"ServerTypeId":"3d4916d1-5a41-4b94-874f-5bedacb89656","ServerTypeName":"[MYSQL] MySQL","ConnectionString":"Server=YourServer;Database=YourIzendaDatabase;Uid=YourUserName;Pwd=YourPassword;","ConnectionId":"00000000-0000-0000-0000-000000000000"}
    ```
    Syntax Reference for PostgreSQL izendadb.config:
    ```
    {"ServerTypeId":"f2638ed5-70e5-47da-a052-4da0c1888fcf","ServerTypeName":"[PGSQL] PostgreSQL","ConnectionString":"Server=YourServer;Database=YourIzendaDatabase;User Id=YourUserName;Password=YourPassword;","ConnectionId":"00000000-0000-0000-0000-000000000000"}
    ```


4. Update the WebApiUrl (line 4) and the url used in the ajax call (line 37) in izenda_integrate.js file to point to APIStarterKit URL. Ensure to append /api/ after the URL.
   
   ```
   "WebApiUrl": "http://localhost:8080/api/"
   
    url: "http://localhost:8080/authapi/user/GenerateToken"
   ```
     
5. Reset IIS and clear your cache.

6. Browse index.html or any other .html page in your browser. Then Izenda application appears and you need to set the license, token key in Settings page.
	* If you press the "Connect" button for your IzendaDB connection string, the connection string in the IzendaDB.config will be encrypted.


7. Enjoy!



## Upgrade
Download a newer version (https://downloads.izenda.com) of the API copy the following:

### API
* Copy all files & folders in API\bin -> APIStarterKit\IzendaReferences
* API\Content -> APIStarterKit\IzendaResources
* API\EmailTemplates -> APIStarterKit\IzendaResources
* API\Export -> APIStarterKit\IzendaResources

### Database
* Find appropriate migration scripts in SchemaMigrationScripts (database and versions), run against the Izenda database 

### Javascript
* Copy all files & folders in EmbeddedUI -> Website\scripts\izenda
