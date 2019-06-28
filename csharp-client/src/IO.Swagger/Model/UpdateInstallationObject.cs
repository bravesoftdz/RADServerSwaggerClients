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
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using SwaggerDateConverter = IO.Swagger.Client.SwaggerDateConverter;

namespace IO.Swagger.Model
{
    /// <summary>
    /// UpdateInstallationObject
    /// </summary>
    [DataContract]
    public partial class UpdateInstallationObject : Dictionary<String, string>,  IEquatable<UpdateInstallationObject>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UpdateInstallationObject" /> class.
        /// </summary>
        /// <param name="channels">channels.</param>
        public UpdateInstallationObject(List<string> channels = default(List<string>)) : base()
        {
            this.Channels = channels;
        }
        
        /// <summary>
        /// Gets or Sets Channels
        /// </summary>
        [DataMember(Name="channels", EmitDefaultValue=false)]
        public List<string> Channels { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class UpdateInstallationObject {\n");
            sb.Append("  ").Append(base.ToString().Replace("\n", "\n  ")).Append("\n");
            sb.Append("  Channels: ").Append(Channels).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public override string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as UpdateInstallationObject);
        }

        /// <summary>
        /// Returns true if UpdateInstallationObject instances are equal
        /// </summary>
        /// <param name="input">Instance of UpdateInstallationObject to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(UpdateInstallationObject input)
        {
            if (input == null)
                return false;

            return base.Equals(input) && 
                (
                    this.Channels == input.Channels ||
                    this.Channels != null &&
                    this.Channels.SequenceEqual(input.Channels)
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = base.GetHashCode();
                if (this.Channels != null)
                    hashCode = hashCode * 59 + this.Channels.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            foreach(var x in BaseValidate(validationContext)) yield return x;
            yield break;
        }
    }

}