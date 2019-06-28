/* 
 * EMS API Documentation
 *
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using RestSharp;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace IO.Swagger.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IPushApi : IApiAccessor
    {
        #region Synchronous Operations
        /// <summary>
        /// Send Push
        /// </summary>
        /// <remarks>
        /// Used to send a push notification message to a registered device
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="body">Object containing the Push Message data structure</param>
        /// <param name="xEmbarcaderoApplicationId"> (optional)</param>
        /// <param name="xEmbarcaderoAppSecret"> (optional)</param>
        /// <param name="xEmbarcaderoMasterSecret"> (optional)</param>
        /// <returns></returns>
        void Send (PushObject body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null);

        /// <summary>
        /// Send Push
        /// </summary>
        /// <remarks>
        /// Used to send a push notification message to a registered device
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="body">Object containing the Push Message data structure</param>
        /// <param name="xEmbarcaderoApplicationId"> (optional)</param>
        /// <param name="xEmbarcaderoAppSecret"> (optional)</param>
        /// <param name="xEmbarcaderoMasterSecret"> (optional)</param>
        /// <returns>ApiResponse of Object(void)</returns>
        ApiResponse<Object> SendWithHttpInfo (PushObject body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null);
        #endregion Synchronous Operations
        #region Asynchronous Operations
        /// <summary>
        /// Send Push
        /// </summary>
        /// <remarks>
        /// Used to send a push notification message to a registered device
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="body">Object containing the Push Message data structure</param>
        /// <param name="xEmbarcaderoApplicationId"> (optional)</param>
        /// <param name="xEmbarcaderoAppSecret"> (optional)</param>
        /// <param name="xEmbarcaderoMasterSecret"> (optional)</param>
        /// <returns>Task of void</returns>
        System.Threading.Tasks.Task SendAsync (PushObject body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null);

        /// <summary>
        /// Send Push
        /// </summary>
        /// <remarks>
        /// Used to send a push notification message to a registered device
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="body">Object containing the Push Message data structure</param>
        /// <param name="xEmbarcaderoApplicationId"> (optional)</param>
        /// <param name="xEmbarcaderoAppSecret"> (optional)</param>
        /// <param name="xEmbarcaderoMasterSecret"> (optional)</param>
        /// <returns>Task of ApiResponse</returns>
        System.Threading.Tasks.Task<ApiResponse<Object>> SendAsyncWithHttpInfo (PushObject body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null);
        #endregion Asynchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public partial class PushApi : IPushApi
    {
        private IO.Swagger.Client.ExceptionFactory _exceptionFactory = (name, response) => null;

        /// <summary>
        /// Initializes a new instance of the <see cref="PushApi"/> class.
        /// </summary>
        /// <returns></returns>
        public PushApi(String basePath)
        {
            this.Configuration = new IO.Swagger.Client.Configuration { BasePath = basePath };

            ExceptionFactory = IO.Swagger.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="PushApi"/> class
        /// using Configuration object
        /// </summary>
        /// <param name="configuration">An instance of Configuration</param>
        /// <returns></returns>
        public PushApi(IO.Swagger.Client.Configuration configuration = null)
        {
            if (configuration == null) // use the default one in Configuration
                this.Configuration = IO.Swagger.Client.Configuration.Default;
            else
                this.Configuration = configuration;

            ExceptionFactory = IO.Swagger.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        public String GetBasePath()
        {
            return this.Configuration.ApiClient.RestClient.BaseUrl.ToString();
        }

        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        [Obsolete("SetBasePath is deprecated, please do 'Configuration.ApiClient = new ApiClient(\"http://new-path\")' instead.")]
        public void SetBasePath(String basePath)
        {
            // do nothing
        }

        /// <summary>
        /// Gets or sets the configuration object
        /// </summary>
        /// <value>An instance of the Configuration</value>
        public IO.Swagger.Client.Configuration Configuration {get; set;}

        /// <summary>
        /// Provides a factory method hook for the creation of exceptions.
        /// </summary>
        public IO.Swagger.Client.ExceptionFactory ExceptionFactory
        {
            get
            {
                if (_exceptionFactory != null && _exceptionFactory.GetInvocationList().Length > 1)
                {
                    throw new InvalidOperationException("Multicast delegate for ExceptionFactory is unsupported.");
                }
                return _exceptionFactory;
            }
            set { _exceptionFactory = value; }
        }

        /// <summary>
        /// Gets the default header.
        /// </summary>
        /// <returns>Dictionary of HTTP header</returns>
        [Obsolete("DefaultHeader is deprecated, please use Configuration.DefaultHeader instead.")]
        public IDictionary<String, String> DefaultHeader()
        {
            return new ReadOnlyDictionary<string, string>(this.Configuration.DefaultHeader);
        }

        /// <summary>
        /// Add default header.
        /// </summary>
        /// <param name="key">Header field name.</param>
        /// <param name="value">Header field value.</param>
        /// <returns></returns>
        [Obsolete("AddDefaultHeader is deprecated, please use Configuration.AddDefaultHeader instead.")]
        public void AddDefaultHeader(string key, string value)
        {
            this.Configuration.AddDefaultHeader(key, value);
        }

        /// <summary>
        /// Send Push Used to send a push notification message to a registered device
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="body">Object containing the Push Message data structure</param>
        /// <param name="xEmbarcaderoApplicationId"> (optional)</param>
        /// <param name="xEmbarcaderoAppSecret"> (optional)</param>
        /// <param name="xEmbarcaderoMasterSecret"> (optional)</param>
        /// <returns></returns>
        public void Send (PushObject body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)
        {
             SendWithHttpInfo(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        }

        /// <summary>
        /// Send Push Used to send a push notification message to a registered device
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="body">Object containing the Push Message data structure</param>
        /// <param name="xEmbarcaderoApplicationId"> (optional)</param>
        /// <param name="xEmbarcaderoAppSecret"> (optional)</param>
        /// <param name="xEmbarcaderoMasterSecret"> (optional)</param>
        /// <returns>ApiResponse of Object(void)</returns>
        public ApiResponse<Object> SendWithHttpInfo (PushObject body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)
        {
            // verify the required parameter 'body' is set
            if (body == null)
                throw new ApiException(400, "Missing required parameter 'body' when calling PushApi->Send");

            var localVarPath = "/push";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
                "application/json"
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (xEmbarcaderoApplicationId != null) localVarHeaderParams.Add("X-Embarcadero-Application-Id", this.Configuration.ApiClient.ParameterToString(xEmbarcaderoApplicationId)); // header parameter
            if (xEmbarcaderoAppSecret != null) localVarHeaderParams.Add("X-Embarcadero-App-Secret", this.Configuration.ApiClient.ParameterToString(xEmbarcaderoAppSecret)); // header parameter
            if (xEmbarcaderoMasterSecret != null) localVarHeaderParams.Add("X-Embarcadero-Master-Secret", this.Configuration.ApiClient.ParameterToString(xEmbarcaderoMasterSecret)); // header parameter
            if (body != null && body.GetType() != typeof(byte[]))
            {
                localVarPostBody = this.Configuration.ApiClient.Serialize(body); // http body (model) parameter
            }
            else
            {
                localVarPostBody = body; // byte array
            }


            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) this.Configuration.ApiClient.CallApi(localVarPath,
                Method.POST, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("Send", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<Object>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => x.Value.ToString()),
                null);
        }

        /// <summary>
        /// Send Push Used to send a push notification message to a registered device
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="body">Object containing the Push Message data structure</param>
        /// <param name="xEmbarcaderoApplicationId"> (optional)</param>
        /// <param name="xEmbarcaderoAppSecret"> (optional)</param>
        /// <param name="xEmbarcaderoMasterSecret"> (optional)</param>
        /// <returns>Task of void</returns>
        public async System.Threading.Tasks.Task SendAsync (PushObject body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)
        {
             await SendAsyncWithHttpInfo(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);

        }

        /// <summary>
        /// Send Push Used to send a push notification message to a registered device
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="body">Object containing the Push Message data structure</param>
        /// <param name="xEmbarcaderoApplicationId"> (optional)</param>
        /// <param name="xEmbarcaderoAppSecret"> (optional)</param>
        /// <param name="xEmbarcaderoMasterSecret"> (optional)</param>
        /// <returns>Task of ApiResponse</returns>
        public async System.Threading.Tasks.Task<ApiResponse<Object>> SendAsyncWithHttpInfo (PushObject body, string xEmbarcaderoApplicationId = null, string xEmbarcaderoAppSecret = null, string xEmbarcaderoMasterSecret = null)
        {
            // verify the required parameter 'body' is set
            if (body == null)
                throw new ApiException(400, "Missing required parameter 'body' when calling PushApi->Send");

            var localVarPath = "/push";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
                "application/json"
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (xEmbarcaderoApplicationId != null) localVarHeaderParams.Add("X-Embarcadero-Application-Id", this.Configuration.ApiClient.ParameterToString(xEmbarcaderoApplicationId)); // header parameter
            if (xEmbarcaderoAppSecret != null) localVarHeaderParams.Add("X-Embarcadero-App-Secret", this.Configuration.ApiClient.ParameterToString(xEmbarcaderoAppSecret)); // header parameter
            if (xEmbarcaderoMasterSecret != null) localVarHeaderParams.Add("X-Embarcadero-Master-Secret", this.Configuration.ApiClient.ParameterToString(xEmbarcaderoMasterSecret)); // header parameter
            if (body != null && body.GetType() != typeof(byte[]))
            {
                localVarPostBody = this.Configuration.ApiClient.Serialize(body); // http body (model) parameter
            }
            else
            {
                localVarPostBody = body; // byte array
            }


            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) await this.Configuration.ApiClient.CallApiAsync(localVarPath,
                Method.POST, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("Send", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<Object>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => x.Value.ToString()),
                null);
        }

    }
}