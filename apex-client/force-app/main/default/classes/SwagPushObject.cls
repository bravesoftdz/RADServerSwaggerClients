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

/**
 * SwagPushObject
 */
public class SwagPushObject implements Swagger.MappedProperties {
    /**
     * Get data
     * @return data
     */
    public SwagPushDataObject data { get; set; }

    /**
     * Get channels
     * @return channels
     */
    public List<String> channels { get; set; }

    /**
     * Get r_where
     * @return r_where
     */
    public SwagPushWhereObject r_where { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'where' => 'r_where'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public SwagPushObject() {
        channels = new List<String>();
    }

    public static SwagPushObject getExample() {
        SwagPushObject pushObject = new SwagPushObject();
        pushObject.data = SwagPushDataObject.getExample();
        pushObject.channels = new List<String>{'aeiou'};
        pushObject.r_where = SwagPushWhereObject.getExample();
        return pushObject;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof SwagPushObject) {
            SwagPushObject pushObject = (SwagPushObject) obj;
            return this.data == pushObject.data
                && this.channels == pushObject.channels
                && this.r_where == pushObject.r_where;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (data == null ? 0 : System.hashCode(data));
        hashCode = (17 * hashCode) + (channels == null ? 0 : System.hashCode(channels));
        hashCode = (17 * hashCode) + (r_where == null ? 0 : System.hashCode(r_where));
        return hashCode;
    }
}

