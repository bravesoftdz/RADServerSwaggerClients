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


import * as $ from 'jquery';
import * as models from '../model/models';
import { COLLECTION_FORMATS } from '../variables';
import { Configuration } from '../configuration';

/* tslint:disable:no-unused-variable member-ordering */


export class InstallationsApi {
    protected basePath = 'http://localhost:8080';
    public defaultHeaders: Array<string> = [];
    public defaultExtraJQueryAjaxSettings?: JQueryAjaxSettings = null;
    public configuration: Configuration = new Configuration();

    constructor(basePath?: string, configuration?: Configuration, defaultExtraJQueryAjaxSettings?: JQueryAjaxSettings) {
        if (basePath) {
            this.basePath = basePath;
        }
        if (configuration) {
            this.configuration = configuration;
        }
        if (defaultExtraJQueryAjaxSettings) {
            this.defaultExtraJQueryAjaxSettings = defaultExtraJQueryAjaxSettings;
        }
    }

    private extendObj<T1, T2 extends T1>(objA: T2, objB: T2): T1|T2 {
        for (let key in objB) {
            if (objB.hasOwnProperty(key)) {
                objA[key] = objB[key];
            }
        }
        return objA;
    }

    /**
     *  |      Used to add a new `Installation` object to the EMS database.
     * @summary Add Installation
     * @param body Object to sign up a new EMS User in the EMS Server
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public addInstallation(body: models.InstallationAddObject, xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQueryPromise<{ response: JQueryXHR; body: models.InstallationAddedObject;  }> {
        let localVarPath = this.basePath + '/installations';

        let queryParameters: any = {};
        let headerParams: any = {};
        // verify required parameter 'body' is not null or undefined
        if (body === null || body === undefined) {
            throw new Error('Required parameter body was null or undefined when calling addInstallation.');
        }


        localVarPath = localVarPath + "?" + $.param(queryParameters);
        headerParams['X-Embarcadero-Application-Id'] = String(xEmbarcaderoApplicationId);

        headerParams['X-Embarcadero-App-Secret'] = String(xEmbarcaderoAppSecret);

        headerParams['X-Embarcadero-Master-Secret'] = String(xEmbarcaderoMasterSecret);

        // to determine the Content-Type header
        let consumes: string[] = [
            'application/json'
        ];

        // to determine the Accept header
        let produces: string[] = [
            'application/json'
        ];


        headerParams['Content-Type'] = 'application/json';

        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'POST',
            headers: headerParams,
            processData: false
        };

        requestOptions.data = JSON.stringify(body);
        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred();
        $.ajax(requestOptions).then(
            (data: models.InstallationAddedObject, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve(jqXHR, data),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject(xhr, errorThrown)
        );
        return dfd.promise();
    }

    /**
     *  |      Used to delete an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.
     * @summary Delete Installation
     * @param id A Installation ID
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public deleteInstallation(id: string, xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQueryPromise<{ response: JQueryXHR; body?: any;  }> {
        let localVarPath = this.basePath + '/installations/{id}'.replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        let queryParameters: any = {};
        let headerParams: any = {};
        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new Error('Required parameter id was null or undefined when calling deleteInstallation.');
        }


        localVarPath = localVarPath + "?" + $.param(queryParameters);
        headerParams['X-Embarcadero-Application-Id'] = String(xEmbarcaderoApplicationId);

        headerParams['X-Embarcadero-App-Secret'] = String(xEmbarcaderoAppSecret);

        headerParams['X-Embarcadero-Master-Secret'] = String(xEmbarcaderoMasterSecret);

        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'DELETE',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred();
        $.ajax(requestOptions).then(
            (data: any, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve(jqXHR, data),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject(xhr, errorThrown)
        );
        return dfd.promise();
    }

    /**
     *  |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
     * @summary Get Installation Channels
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public getChannels(xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQueryPromise<{ response: JQueryXHR; body: Array<models.ChannelName>;  }> {
        let localVarPath = this.basePath + '/installations/channels';

        let queryParameters: any = {};
        let headerParams: any = {};

        localVarPath = localVarPath + "?" + $.param(queryParameters);
        headerParams['X-Embarcadero-Application-Id'] = String(xEmbarcaderoApplicationId);

        headerParams['X-Embarcadero-App-Secret'] = String(xEmbarcaderoAppSecret);

        headerParams['X-Embarcadero-Master-Secret'] = String(xEmbarcaderoMasterSecret);

        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'application/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred();
        $.ajax(requestOptions).then(
            (data: Array<models.ChannelName>, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve(jqXHR, data),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject(xhr, errorThrown)
        );
        return dfd.promise();
    }

    /**
     *  |      Used to retrieve all data from a specific `Installation` (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
     * @summary Get Installation
     * @param id A Installation ID
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public getInstallation(id: string, xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQueryPromise<{ response: JQueryXHR; body: models.InstallationObject;  }> {
        let localVarPath = this.basePath + '/installations/{id}'.replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        let queryParameters: any = {};
        let headerParams: any = {};
        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new Error('Required parameter id was null or undefined when calling getInstallation.');
        }


        localVarPath = localVarPath + "?" + $.param(queryParameters);
        headerParams['X-Embarcadero-Application-Id'] = String(xEmbarcaderoApplicationId);

        headerParams['X-Embarcadero-App-Secret'] = String(xEmbarcaderoAppSecret);

        headerParams['X-Embarcadero-Master-Secret'] = String(xEmbarcaderoMasterSecret);

        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'application/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred();
        $.ajax(requestOptions).then(
            (data: models.InstallationObject, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve(jqXHR, data),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject(xhr, errorThrown)
        );
        return dfd.promise();
    }

    /**
     *  |      Used to retrieve all the `field names` of the EMS Installation (including the custom fields).
     * @summary Get Fields
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public getInstallationFields(xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQueryPromise<{ response: JQueryXHR; body: Array<models.FieldInstallationObject>;  }> {
        let localVarPath = this.basePath + '/installations/fields';

        let queryParameters: any = {};
        let headerParams: any = {};

        localVarPath = localVarPath + "?" + $.param(queryParameters);
        headerParams['X-Embarcadero-Application-Id'] = String(xEmbarcaderoApplicationId);

        headerParams['X-Embarcadero-App-Secret'] = String(xEmbarcaderoAppSecret);

        headerParams['X-Embarcadero-Master-Secret'] = String(xEmbarcaderoMasterSecret);

        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'application/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred();
        $.ajax(requestOptions).then(
            (data: Array<models.FieldInstallationObject>, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve(jqXHR, data),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject(xhr, errorThrown)
        );
        return dfd.promise();
    }

    /**
     *  |      Used to retrieve all data from `Installation`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
     * @summary Get Installations
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     * @param skip users skipped
     * @param limit maximum number of results to return
     * @param order order ascending or descending (asc, desc)
     * @param where filter operators (lt, lte, gt, gte, eq, neq, like, nlike)
     */
    public getInstallations(xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, skip?: number, limit?: number, order?: number, where?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQueryPromise<{ response: JQueryXHR; body: Array<models.InstallationObject>;  }> {
        let localVarPath = this.basePath + '/installations';

        let queryParameters: any = {};
        let headerParams: any = {};
        if (skip !== null && skip !== undefined) {
            queryParameters['skip'] = <string><any>skip;
        }
        if (limit !== null && limit !== undefined) {
            queryParameters['limit'] = <string><any>limit;
        }
        if (order !== null && order !== undefined) {
            queryParameters['order'] = <string><any>order;
        }
        if (where !== null && where !== undefined) {
            queryParameters['where'] = <string><any>where;
        }

        localVarPath = localVarPath + "?" + $.param(queryParameters);
        headerParams['X-Embarcadero-Application-Id'] = String(xEmbarcaderoApplicationId);

        headerParams['X-Embarcadero-App-Secret'] = String(xEmbarcaderoAppSecret);

        headerParams['X-Embarcadero-Master-Secret'] = String(xEmbarcaderoMasterSecret);

        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'application/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred();
        $.ajax(requestOptions).then(
            (data: Array<models.InstallationObject>, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve(jqXHR, data),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject(xhr, errorThrown)
        );
        return dfd.promise();
    }

    /**
     *  |      Used to update an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.
     * @summary Update Installation
     * @param id A Installation ID
     * @param body Installation fields to update
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public updateInstallation(id: string, body: models.UpdateInstallationObject, xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQueryPromise<{ response: JQueryXHR; body: models.UpdatedInstallationObject;  }> {
        let localVarPath = this.basePath + '/installations/{id}'.replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        let queryParameters: any = {};
        let headerParams: any = {};
        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new Error('Required parameter id was null or undefined when calling updateInstallation.');
        }

        // verify required parameter 'body' is not null or undefined
        if (body === null || body === undefined) {
            throw new Error('Required parameter body was null or undefined when calling updateInstallation.');
        }


        localVarPath = localVarPath + "?" + $.param(queryParameters);
        headerParams['X-Embarcadero-Application-Id'] = String(xEmbarcaderoApplicationId);

        headerParams['X-Embarcadero-App-Secret'] = String(xEmbarcaderoAppSecret);

        headerParams['X-Embarcadero-Master-Secret'] = String(xEmbarcaderoMasterSecret);

        // to determine the Content-Type header
        let consumes: string[] = [
            'application/json'
        ];

        // to determine the Accept header
        let produces: string[] = [
            'application/json'
        ];


        headerParams['Content-Type'] = 'application/json';

        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'PUT',
            headers: headerParams,
            processData: false
        };

        requestOptions.data = JSON.stringify(body);
        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred();
        $.ajax(requestOptions).then(
            (data: models.UpdatedInstallationObject, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve(jqXHR, data),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject(xhr, errorThrown)
        );
        return dfd.promise();
    }

}