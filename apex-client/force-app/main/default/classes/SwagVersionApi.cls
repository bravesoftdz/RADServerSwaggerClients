/*
 * EMS API Documentation
 * Enterprise Mobility Services API\r\n\r\n  [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)\r\n\r\n  EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)\r\n\r\n  TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

public class SwagVersionApi {
    SwagClient client;

    public SwagVersionApi(SwagClient client) {
        this.client = client;
    }

    public SwagVersionApi() {
        this.client = new SwagClient();
    }

    public SwagClient getClient() {
        return this.client;
    }

    /**
     * Get version
     *  |\r\n    Used to retrieve the &#x60;Version&#x60; of the EMS Server.
     * @param xEmbarcaderoApplicationId  (optional)
     * @param xEmbarcaderoAppSecret  (optional)
     * @param xEmbarcaderoMasterSecret  (optional)
     * @return SwagVersionObject
     * @throws Swagger.ApiException if fails to make API call
     */
    public SwagVersionObject getVersion(Map<String, Object> params) {
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        return (SwagVersionObject) client.invoke(
            'GET', '/version', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>{
                'X-Embarcadero-Application-Id' => (String) params.get('xEmbarcaderoApplicationId'),
                'X-Embarcadero-App-Secret' => (String) params.get('xEmbarcaderoAppSecret'),
                'X-Embarcadero-Master-Secret' => (String) params.get('xEmbarcaderoMasterSecret')
            },
            new List<String>{ 'application/json' },
            new List<String>{ 'application/json' },
            new List<String>(),
            SwagVersionObject.class
        );
    }
}