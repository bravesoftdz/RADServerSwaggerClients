/**
 * EMS API Documentation
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

import { autoinject } from 'aurelia-framework';
import { HttpClient } from 'aurelia-http-client';
import { Api } from './Api';
import { AuthStorage } from './AuthStorage';
import {
} from './models';

/**
 * aPI - parameters interface
 */
export interface IAPIParams {
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * getAPIJSONFormat - parameters interface
 */
export interface IGetAPIJSONFormatParams {
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * getAPIYAMLFormat - parameters interface
 */
export interface IGetAPIYAMLFormatParams {
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * getAPIYAMLFormatEndPoint - parameters interface
 */
export interface IGetAPIYAMLFormatEndPointParams {
  item: string;
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * ApiDocApi - API class
 */
@autoinject()
export class ApiDocApi extends Api {

  /**
   * Creates a new ApiDocApi class.
   *
   * @param httpClient The Aurelia HTTP client to be injected.
   * @param authStorage A storage for authentication data.
   */
  constructor(httpClient: HttpClient, authStorage: AuthStorage) {
    super(httpClient, authStorage);
  }

  /**
   * Get API EndPoints
   *  |      Used to retrieve all the API EndPoints.
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async aPI(params: IAPIParams): Promise<any> {
    // Verify required parameters are set

    // Create URL to call
    const url = `${this.basePath}/api`;

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asGet()
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Get JSON
   * Get API in JSON format
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async getAPIJSONFormat(params: IGetAPIJSONFormatParams): Promise<any> {
    // Verify required parameters are set

    // Create URL to call
    const url = `${this.basePath}/api/apidoc.json`;

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asGet()
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Get YAML
   * Get API in YAML format
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async getAPIYAMLFormat(params: IGetAPIYAMLFormatParams): Promise<any> {
    // Verify required parameters are set

    // Create URL to call
    const url = `${this.basePath}/api/apidoc.yaml`;

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asGet()
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Get API EndPoint
   *  |      Used to retrieve an EndPoint for the API EndPoints.
   * @param params.item Path Segment to an EndPoint
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async getAPIYAMLFormatEndPoint(params: IGetAPIYAMLFormatEndPointParams): Promise<any> {
    // Verify required parameters are set
    this.ensureParamIsSet('getAPIYAMLFormatEndPoint', params, 'item');

    // Create URL to call
    const url = `${this.basePath}/api/{item}/apidoc.yaml`
      .replace(`{${'item'}}`, encodeURIComponent(`${params['item']}`));

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asGet()
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

}
