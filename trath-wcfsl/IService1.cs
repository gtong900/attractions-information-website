using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;


namespace trath_wcfsl
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {
        [OperationContract]
        string GetData(int value);

        [OperationContract]
        CompositeType GetDataUsingDataContract(CompositeType composite);

        // TODO: Add your service operations here
        [OperationContract]
        bool isuser(string username,string password);

        [OperationContract]
        void register(string username, string password,string birthday,string email,bool isreceive,bool isjoin);

        [OperationContract]
        void attractionset(string attractioname, string address1, string address2, string address3, string opentime1, string opentime2, string ticketinfo, string score, string review, string image);

        //[OperationContract]
        //void attractionset2();


        //search
        [OperationContract]
        string[] searchresult(string keyword,int order);

        //Get series
        [OperationContract]
        string getaddress(string attractioname);

        [OperationContract]
        string getopentime(string attractioname);

        [OperationContract]
        string getticketinfo(string attractioname);

        [OperationContract]
        string getscore(string attractioname);

        [OperationContract]
        string getreview(string attractioname);

        [OperationContract]
        string getimage(string attractioname);

        //get max5 hot destination
        [OperationContract]
        string[] hot5();

        //update
        [OperationContract]
        void updatepassword(string username, string password);

        //like
        [OperationContract]
        bool checklike(string username, string attractioname,int gc);

        [OperationContract]
        string[] getlikefromuser(string username);

        //check
        [OperationContract]
        bool namecheck(string name, int i);

        //delete user
        [OperationContract]
        void deleteuser(string username);
    }

    // Use a data contract as illustrated in the sample below to add composite types to service operations.
    // You can add XSD files into the project. After building the project, you can directly use the data types defined there, with the namespace "trath_wcfsl.ContractType".
    [DataContract]
    public class CompositeType
    {
        bool boolValue = true;
        string stringValue = "Hello ";

        [DataMember]
        public bool BoolValue
        {
            get { return boolValue; }
            set { boolValue = value; }
        }

        [DataMember]
        public string StringValue
        {
            get { return stringValue; }
            set { stringValue = value; }
        }
    }
}
