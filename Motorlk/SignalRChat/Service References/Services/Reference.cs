﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SignalRChat.Services {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Brand", Namespace="http://tempuri.org/")]
    [System.SerializableAttribute()]
    public partial class Brand : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        private int IDField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string onameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string brandField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(IsRequired=true)]
        public int ID {
            get {
                return this.IDField;
            }
            set {
                if ((this.IDField.Equals(value) != true)) {
                    this.IDField = value;
                    this.RaisePropertyChanged("ID");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false)]
        public string oname {
            get {
                return this.onameField;
            }
            set {
                if ((object.ReferenceEquals(this.onameField, value) != true)) {
                    this.onameField = value;
                    this.RaisePropertyChanged("oname");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=2)]
        public string brand {
            get {
                return this.brandField;
            }
            set {
                if ((object.ReferenceEquals(this.brandField, value) != true)) {
                    this.brandField = value;
                    this.RaisePropertyChanged("brand");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="Services.BrandServiceSoap")]
    public interface BrandServiceSoap {
        
        // CODEGEN: Generating message contract since element name getBrandResult from namespace http://tempuri.org/ is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/getBrand", ReplyAction="*")]
        SignalRChat.Services.getBrandResponse getBrand(SignalRChat.Services.getBrandRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/getBrand", ReplyAction="*")]
        System.Threading.Tasks.Task<SignalRChat.Services.getBrandResponse> getBrandAsync(SignalRChat.Services.getBrandRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class getBrandRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="getBrand", Namespace="http://tempuri.org/", Order=0)]
        public SignalRChat.Services.getBrandRequestBody Body;
        
        public getBrandRequest() {
        }
        
        public getBrandRequest(SignalRChat.Services.getBrandRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute()]
    public partial class getBrandRequestBody {
        
        public getBrandRequestBody() {
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class getBrandResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="getBrandResponse", Namespace="http://tempuri.org/", Order=0)]
        public SignalRChat.Services.getBrandResponseBody Body;
        
        public getBrandResponse() {
        }
        
        public getBrandResponse(SignalRChat.Services.getBrandResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class getBrandResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public SignalRChat.Services.Brand[] getBrandResult;
        
        public getBrandResponseBody() {
        }
        
        public getBrandResponseBody(SignalRChat.Services.Brand[] getBrandResult) {
            this.getBrandResult = getBrandResult;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface BrandServiceSoapChannel : SignalRChat.Services.BrandServiceSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class BrandServiceSoapClient : System.ServiceModel.ClientBase<SignalRChat.Services.BrandServiceSoap>, SignalRChat.Services.BrandServiceSoap {
        
        public BrandServiceSoapClient() {
        }
        
        public BrandServiceSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public BrandServiceSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public BrandServiceSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public BrandServiceSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        SignalRChat.Services.getBrandResponse SignalRChat.Services.BrandServiceSoap.getBrand(SignalRChat.Services.getBrandRequest request) {
            return base.Channel.getBrand(request);
        }
        
        public SignalRChat.Services.Brand[] getBrand() {
            SignalRChat.Services.getBrandRequest inValue = new SignalRChat.Services.getBrandRequest();
            inValue.Body = new SignalRChat.Services.getBrandRequestBody();
            SignalRChat.Services.getBrandResponse retVal = ((SignalRChat.Services.BrandServiceSoap)(this)).getBrand(inValue);
            return retVal.Body.getBrandResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        System.Threading.Tasks.Task<SignalRChat.Services.getBrandResponse> SignalRChat.Services.BrandServiceSoap.getBrandAsync(SignalRChat.Services.getBrandRequest request) {
            return base.Channel.getBrandAsync(request);
        }
        
        public System.Threading.Tasks.Task<SignalRChat.Services.getBrandResponse> getBrandAsync() {
            SignalRChat.Services.getBrandRequest inValue = new SignalRChat.Services.getBrandRequest();
            inValue.Body = new SignalRChat.Services.getBrandRequestBody();
            return ((SignalRChat.Services.BrandServiceSoap)(this)).getBrandAsync(inValue);
        }
    }
}