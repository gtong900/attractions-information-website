﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace trath_webapp.ServiceReference1 {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="CompositeType", Namespace="http://schemas.datacontract.org/2004/07/trath_wcfsl")]
    [System.SerializableAttribute()]
    public partial class CompositeType : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private bool BoolValueField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string StringValueField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public bool BoolValue {
            get {
                return this.BoolValueField;
            }
            set {
                if ((this.BoolValueField.Equals(value) != true)) {
                    this.BoolValueField = value;
                    this.RaisePropertyChanged("BoolValue");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string StringValue {
            get {
                return this.StringValueField;
            }
            set {
                if ((object.ReferenceEquals(this.StringValueField, value) != true)) {
                    this.StringValueField = value;
                    this.RaisePropertyChanged("StringValue");
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
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReference1.IService1")]
    public interface IService1 {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/GetData", ReplyAction="http://tempuri.org/IService1/GetDataResponse")]
        string GetData(int value);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/GetData", ReplyAction="http://tempuri.org/IService1/GetDataResponse")]
        System.Threading.Tasks.Task<string> GetDataAsync(int value);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/GetDataUsingDataContract", ReplyAction="http://tempuri.org/IService1/GetDataUsingDataContractResponse")]
        trath_webapp.ServiceReference1.CompositeType GetDataUsingDataContract(trath_webapp.ServiceReference1.CompositeType composite);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/GetDataUsingDataContract", ReplyAction="http://tempuri.org/IService1/GetDataUsingDataContractResponse")]
        System.Threading.Tasks.Task<trath_webapp.ServiceReference1.CompositeType> GetDataUsingDataContractAsync(trath_webapp.ServiceReference1.CompositeType composite);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/isuser", ReplyAction="http://tempuri.org/IService1/isuserResponse")]
        bool isuser(string username, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/isuser", ReplyAction="http://tempuri.org/IService1/isuserResponse")]
        System.Threading.Tasks.Task<bool> isuserAsync(string username, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/register", ReplyAction="http://tempuri.org/IService1/registerResponse")]
        void register(string username, string password, string birthday, string email, bool isreceive, bool isjoin);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/register", ReplyAction="http://tempuri.org/IService1/registerResponse")]
        System.Threading.Tasks.Task registerAsync(string username, string password, string birthday, string email, bool isreceive, bool isjoin);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/attractionset", ReplyAction="http://tempuri.org/IService1/attractionsetResponse")]
        void attractionset(string attractioname, string address1, string address2, string address3, string opentime1, string opentime2, string ticketinfo, string score, string review, string image);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/attractionset", ReplyAction="http://tempuri.org/IService1/attractionsetResponse")]
        System.Threading.Tasks.Task attractionsetAsync(string attractioname, string address1, string address2, string address3, string opentime1, string opentime2, string ticketinfo, string score, string review, string image);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/searchresult", ReplyAction="http://tempuri.org/IService1/searchresultResponse")]
        string[] searchresult(string keyword, int order);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/searchresult", ReplyAction="http://tempuri.org/IService1/searchresultResponse")]
        System.Threading.Tasks.Task<string[]> searchresultAsync(string keyword, int order);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getaddress", ReplyAction="http://tempuri.org/IService1/getaddressResponse")]
        string getaddress(string attractioname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getaddress", ReplyAction="http://tempuri.org/IService1/getaddressResponse")]
        System.Threading.Tasks.Task<string> getaddressAsync(string attractioname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getopentime", ReplyAction="http://tempuri.org/IService1/getopentimeResponse")]
        string getopentime(string attractioname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getopentime", ReplyAction="http://tempuri.org/IService1/getopentimeResponse")]
        System.Threading.Tasks.Task<string> getopentimeAsync(string attractioname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getticketinfo", ReplyAction="http://tempuri.org/IService1/getticketinfoResponse")]
        string getticketinfo(string attractioname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getticketinfo", ReplyAction="http://tempuri.org/IService1/getticketinfoResponse")]
        System.Threading.Tasks.Task<string> getticketinfoAsync(string attractioname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getscore", ReplyAction="http://tempuri.org/IService1/getscoreResponse")]
        string getscore(string attractioname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getscore", ReplyAction="http://tempuri.org/IService1/getscoreResponse")]
        System.Threading.Tasks.Task<string> getscoreAsync(string attractioname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getreview", ReplyAction="http://tempuri.org/IService1/getreviewResponse")]
        string getreview(string attractioname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getreview", ReplyAction="http://tempuri.org/IService1/getreviewResponse")]
        System.Threading.Tasks.Task<string> getreviewAsync(string attractioname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getimage", ReplyAction="http://tempuri.org/IService1/getimageResponse")]
        string getimage(string attractioname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getimage", ReplyAction="http://tempuri.org/IService1/getimageResponse")]
        System.Threading.Tasks.Task<string> getimageAsync(string attractioname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/hot5", ReplyAction="http://tempuri.org/IService1/hot5Response")]
        string[] hot5();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/hot5", ReplyAction="http://tempuri.org/IService1/hot5Response")]
        System.Threading.Tasks.Task<string[]> hot5Async();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/updatepassword", ReplyAction="http://tempuri.org/IService1/updatepasswordResponse")]
        void updatepassword(string username, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/updatepassword", ReplyAction="http://tempuri.org/IService1/updatepasswordResponse")]
        System.Threading.Tasks.Task updatepasswordAsync(string username, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/checklike", ReplyAction="http://tempuri.org/IService1/checklikeResponse")]
        bool checklike(string username, string attractioname, int gc);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/checklike", ReplyAction="http://tempuri.org/IService1/checklikeResponse")]
        System.Threading.Tasks.Task<bool> checklikeAsync(string username, string attractioname, int gc);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getlikefromuser", ReplyAction="http://tempuri.org/IService1/getlikefromuserResponse")]
        string[] getlikefromuser(string username);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getlikefromuser", ReplyAction="http://tempuri.org/IService1/getlikefromuserResponse")]
        System.Threading.Tasks.Task<string[]> getlikefromuserAsync(string username);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/namecheck", ReplyAction="http://tempuri.org/IService1/namecheckResponse")]
        bool namecheck(string name, int i);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/namecheck", ReplyAction="http://tempuri.org/IService1/namecheckResponse")]
        System.Threading.Tasks.Task<bool> namecheckAsync(string name, int i);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/deleteuser", ReplyAction="http://tempuri.org/IService1/deleteuserResponse")]
        void deleteuser(string username);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/deleteuser", ReplyAction="http://tempuri.org/IService1/deleteuserResponse")]
        System.Threading.Tasks.Task deleteuserAsync(string username);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IService1Channel : trath_webapp.ServiceReference1.IService1, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class Service1Client : System.ServiceModel.ClientBase<trath_webapp.ServiceReference1.IService1>, trath_webapp.ServiceReference1.IService1 {
        
        public Service1Client() {
        }
        
        public Service1Client(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public Service1Client(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Service1Client(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Service1Client(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public string GetData(int value) {
            return base.Channel.GetData(value);
        }
        
        public System.Threading.Tasks.Task<string> GetDataAsync(int value) {
            return base.Channel.GetDataAsync(value);
        }
        
        public trath_webapp.ServiceReference1.CompositeType GetDataUsingDataContract(trath_webapp.ServiceReference1.CompositeType composite) {
            return base.Channel.GetDataUsingDataContract(composite);
        }
        
        public System.Threading.Tasks.Task<trath_webapp.ServiceReference1.CompositeType> GetDataUsingDataContractAsync(trath_webapp.ServiceReference1.CompositeType composite) {
            return base.Channel.GetDataUsingDataContractAsync(composite);
        }
        
        public bool isuser(string username, string password) {
            return base.Channel.isuser(username, password);
        }
        
        public System.Threading.Tasks.Task<bool> isuserAsync(string username, string password) {
            return base.Channel.isuserAsync(username, password);
        }
        
        public void register(string username, string password, string birthday, string email, bool isreceive, bool isjoin) {
            base.Channel.register(username, password, birthday, email, isreceive, isjoin);
        }
        
        public System.Threading.Tasks.Task registerAsync(string username, string password, string birthday, string email, bool isreceive, bool isjoin) {
            return base.Channel.registerAsync(username, password, birthday, email, isreceive, isjoin);
        }
        
        public void attractionset(string attractioname, string address1, string address2, string address3, string opentime1, string opentime2, string ticketinfo, string score, string review, string image) {
            base.Channel.attractionset(attractioname, address1, address2, address3, opentime1, opentime2, ticketinfo, score, review, image);
        }
        
        public System.Threading.Tasks.Task attractionsetAsync(string attractioname, string address1, string address2, string address3, string opentime1, string opentime2, string ticketinfo, string score, string review, string image) {
            return base.Channel.attractionsetAsync(attractioname, address1, address2, address3, opentime1, opentime2, ticketinfo, score, review, image);
        }
        
        public string[] searchresult(string keyword, int order) {
            return base.Channel.searchresult(keyword, order);
        }
        
        public System.Threading.Tasks.Task<string[]> searchresultAsync(string keyword, int order) {
            return base.Channel.searchresultAsync(keyword, order);
        }
        
        public string getaddress(string attractioname) {
            return base.Channel.getaddress(attractioname);
        }
        
        public System.Threading.Tasks.Task<string> getaddressAsync(string attractioname) {
            return base.Channel.getaddressAsync(attractioname);
        }
        
        public string getopentime(string attractioname) {
            return base.Channel.getopentime(attractioname);
        }
        
        public System.Threading.Tasks.Task<string> getopentimeAsync(string attractioname) {
            return base.Channel.getopentimeAsync(attractioname);
        }
        
        public string getticketinfo(string attractioname) {
            return base.Channel.getticketinfo(attractioname);
        }
        
        public System.Threading.Tasks.Task<string> getticketinfoAsync(string attractioname) {
            return base.Channel.getticketinfoAsync(attractioname);
        }
        
        public string getscore(string attractioname) {
            return base.Channel.getscore(attractioname);
        }
        
        public System.Threading.Tasks.Task<string> getscoreAsync(string attractioname) {
            return base.Channel.getscoreAsync(attractioname);
        }
        
        public string getreview(string attractioname) {
            return base.Channel.getreview(attractioname);
        }
        
        public System.Threading.Tasks.Task<string> getreviewAsync(string attractioname) {
            return base.Channel.getreviewAsync(attractioname);
        }
        
        public string getimage(string attractioname) {
            return base.Channel.getimage(attractioname);
        }
        
        public System.Threading.Tasks.Task<string> getimageAsync(string attractioname) {
            return base.Channel.getimageAsync(attractioname);
        }
        
        public string[] hot5() {
            return base.Channel.hot5();
        }
        
        public System.Threading.Tasks.Task<string[]> hot5Async() {
            return base.Channel.hot5Async();
        }
        
        public void updatepassword(string username, string password) {
            base.Channel.updatepassword(username, password);
        }
        
        public System.Threading.Tasks.Task updatepasswordAsync(string username, string password) {
            return base.Channel.updatepasswordAsync(username, password);
        }
        
        public bool checklike(string username, string attractioname, int gc) {
            return base.Channel.checklike(username, attractioname, gc);
        }
        
        public System.Threading.Tasks.Task<bool> checklikeAsync(string username, string attractioname, int gc) {
            return base.Channel.checklikeAsync(username, attractioname, gc);
        }
        
        public string[] getlikefromuser(string username) {
            return base.Channel.getlikefromuser(username);
        }
        
        public System.Threading.Tasks.Task<string[]> getlikefromuserAsync(string username) {
            return base.Channel.getlikefromuserAsync(username);
        }
        
        public bool namecheck(string name, int i) {
            return base.Channel.namecheck(name, i);
        }
        
        public System.Threading.Tasks.Task<bool> namecheckAsync(string name, int i) {
            return base.Channel.namecheckAsync(name, i);
        }
        
        public void deleteuser(string username) {
            base.Channel.deleteuser(username);
        }
        
        public System.Threading.Tasks.Task deleteuserAsync(string username) {
            return base.Channel.deleteuserAsync(username);
        }
    }
}
