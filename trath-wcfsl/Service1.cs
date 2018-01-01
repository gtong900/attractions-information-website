using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;


namespace trath_wcfsl
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in both code and config file together.
    public class Service1 : IService1
    {
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
            {
                throw new ArgumentNullException("composite");
            }
            if (composite.BoolValue)
            {
                composite.StringValue += "Suffix";
            }
            return composite;
        }

        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\asus\Desktop\trath\trath-wcfsl\trath1.mdf;Integrated Security=True;Connect Timeout=30");
        string strSQL;
        public bool isuser(string username,string password)
        {
            bool isuser;
            conn.Open();
            strSQL = "SELECT password FROM [User] WHERE username = '" + username+"'";
            SqlCommand comm = new SqlCommand(strSQL, conn);
            SqlDataReader reader = comm.ExecuteReader();
            if (reader.Read())
            {
                if (reader["password"].ToString() == password)
                {
                    isuser = true;
                }
                else
                {
                    isuser = false;
                }
            }
            else
            {
                isuser = false;
            }
            conn.Close();
            return isuser;
            
        }

        public void register(string username, string password, string birthday, string email, bool isreceive, bool isjoin)
        {
            conn.Open();
            strSQL = "INSERT INTO [User] VALUES ('" + username + "','" + password + "','" + birthday + "','" + email + "','"+isreceive+"','"+isjoin+"',NULL)";
            SqlCommand comm = new SqlCommand(strSQL, conn);
            comm.ExecuteNonQuery();
            conn.Close();
        }



        public void attractionset(string attractioname, string address1, string address2, string address3, string opentime1, string opentime2, string ticketinfo, string score, string review, string image)
        {
            conn.Open();
            strSQL = "INSERT INTO Attractions VALUES('" + attractioname + "','" + address1 + "','" + address2 + "','" + address3 + "','" + opentime1 + "','" + opentime2 + "','" + ticketinfo + "','" + score + "','" + review + "',@image,0)";
            //strSQL = "INSERT INTO Attractions VALUES (@attractioname,@address1,@address2,@address3,@opentime1,@opentime2,@ticketinfo,@score,@review,@image)";
            SqlCommand comm = new SqlCommand(strSQL, conn);
            //comm.Parameters.Add("@attractioname", SqlDbType.NVarChar).Value = attractioname;
            //comm.Parameters.Add("@address1", SqlDbType.NVarChar).Value = address1;
            //comm.Parameters.Add("@address2", SqlDbType.NVarChar).Value = address2;
            //comm.Parameters.Add("@address3", SqlDbType.NVarChar).Value = address3;
            //comm.Parameters.Add("@opentime1", SqlDbType.NVarChar).Value = opentime1;
            //comm.Parameters.Add("@opentime2", SqlDbType.NVarChar).Value = opentime2;
            //comm.Parameters.Add("@ticketinfo", SqlDbType.NVarChar).Value = ticketinfo;
            //comm.Parameters.Add("@score", SqlDbType.NVarChar).Value = score;
            //comm.Parameters.Add("@review", SqlDbType.NVarChar).Value = review;
            comm.Parameters.Add("@image", SqlDbType.NVarChar).Value =image;
            comm.ExecuteNonQuery();
            strSQL = "UPDATE Cc SET enabled = 1 WHERE country = '" + address2 + "'";
            comm = new SqlCommand(strSQL, conn);
            comm.ExecuteNonQuery();
            conn.Close();
        }

        //public void attractionset2(string review, byte[] image)
        //{
        //    conn.Open();
        //    strSQL = "INSERT INTO Attractions (review,image) VALUES('"+review+"',@image)";
        //    SqlCommand comm = new SqlCommand(strSQL, conn);
        //    comm.Parameters.Add("@image", SqlDbType.Image).Value = image;
        //    comm.ExecuteNonQuery();
        //    conn.Close();
        //}



        public string[] searchresult(string keyword, int order)
        {
            string[] namelist=new string[100];
            conn.Open();
            if (order==0)
            {
                strSQL = "SELECT attractioname FROM Attractions WHERE attractioname LIKE '%" + keyword + "%' ORDER BY attractioname ASC";
            }
            else
            {
                strSQL = "SELECT attractioname,[like] FROM Attractions WHERE attractioname LIKE '%" + keyword + "%' ORDER BY [like] DESC";
            }
            SqlCommand comm = new SqlCommand(strSQL, conn);
            SqlDataReader reader = comm.ExecuteReader();
            int i=1;
            while (reader.Read())
            {
                namelist[i] = reader["attractioname"].ToString();
                i++;
            }
            i--;
            namelist[0]=i.ToString();
            reader.Close();
            conn.Close();
            return namelist;
        }

        //get series
        public string getaddress(string attractioname)
        {
            string address="";
            conn.Open();
            strSQL = "SELECT address1,address2,address3 FROM Attractions WHERE attractioname='" + attractioname + "'";
            SqlCommand comm = new SqlCommand(strSQL, conn);
            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                address = reader["address3"].ToString() + ", " + reader["address2"].ToString() + ", " + reader["address1"].ToString();
            }
            reader.Close();
            conn.Close();
            return address;
        }

        public string getopentime(string attractioname)
        {
            string opentime = "";
            conn.Open();
            strSQL = "SELECT opentime1,opentime2 FROM Attractions WHERE attractioname='" + attractioname + "'";
            SqlCommand comm = new SqlCommand(strSQL, conn);
            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                opentime = reader["opentime1"].ToString() + "  to  " + reader["opentime2"].ToString();
            }
            reader.Close();
            conn.Close();
            return opentime;
        }

        public string getticketinfo(string attractioname)
        {
            string ticketinfo = "";
            conn.Open();
            strSQL = "SELECT ticketinfo FROM Attractions WHERE attractioname='" + attractioname + "'";
            SqlCommand comm = new SqlCommand(strSQL, conn);
            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                ticketinfo = reader["ticketinfo"].ToString();
            }
            reader.Close();
            conn.Close();
            return ticketinfo;
        }

        public string getscore(string attractioname)
        {
            string score = "";
            conn.Open();
            strSQL = "SELECT score FROM Attractions WHERE attractioname='" + attractioname + "'";
            SqlCommand comm = new SqlCommand(strSQL, conn);
            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                score = reader["score"].ToString();
            }
            reader.Close();
            conn.Close();
            return score;
        }

        public string getreview(string attractioname)
        {
            string review = "";
            conn.Open();
            strSQL = "SELECT review FROM Attractions WHERE attractioname='" + attractioname + "'";
            SqlCommand comm = new SqlCommand(strSQL, conn);
            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                review = reader["review"].ToString();
            }
            reader.Close();
            conn.Close();
            return review;
        }

        public string getimage(string attractioname)
        {
            string image=null;
            conn.Open();
            strSQL = "SELECT image FROM Attractions WHERE attractioname='" + attractioname + "'";
            SqlCommand comm = new SqlCommand(strSQL, conn);
            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                image = reader["image"].ToString();
            }
            reader.Close();
            conn.Close();
            return image;
        }

        public string[] hot5()
        {
            string[] hot5 = new string[5];
            conn.Open();
            strSQL = "SELECT TOP 5 [like],attractioname FROM Attractions ORDER BY [like] DESC";
            SqlCommand comm = new SqlCommand(strSQL, conn);
            SqlDataReader reader = comm.ExecuteReader();
            int i=0;
            while (reader.Read())
            {
                hot5[i] = reader["attractioname"].ToString();
                i++;
            }
            reader.Close();
            conn.Close();
            return hot5;
        }

        public void  updatepassword(string username, string password)
        {
            conn.Open();
            strSQL = "UPDATE [User] SET  password= '"+password+"' WHERE username = '"+username+"' ";
            SqlCommand comm = new SqlCommand(strSQL, conn);
            comm.ExecuteNonQuery();
            conn.Close();
        }

        public bool checklike(string username,string attractioname,int gc)
        {
            bool islike = false;
            string likes = "";
            conn.Open();
            strSQL = "SELECT [like] FROM [User] WHERE username='" + username + "'";
            SqlCommand comm = new SqlCommand(strSQL, conn);
            SqlDataReader reader =comm.ExecuteReader();
            while (reader.Read())
            {
                likes = reader["like"].ToString();
            }
            reader.Close();
            if (gc==0)//check wheather like
            {
                if (likes.IndexOf(attractioname) != -1)
                {
                    islike = true;
                }
            }
            else
            {
                int number=-1;
                strSQL = "SELECT [like] FROM Attractions WHERE attractioname='" + attractioname + "'";
                comm=new SqlCommand(strSQL,conn);
                reader=comm.ExecuteReader();
                while (reader.Read())
                {
                    number = Convert.ToInt32(reader["like"]);
                }
                reader.Close();
                if (gc == 1)//add like
                {
                    number++;
                    strSQL = "UPDATE Attractions SET [like]=" + number + " WHERE attractioname='" + attractioname + "'";
                    comm = new SqlCommand(strSQL,conn);
                    comm.ExecuteNonQuery();
                    likes +=attractioname + '&';
                    islike = true;
                }
                if (gc == 2)//cancel like 
                {
                    number--;
                    strSQL = "UPDATE Attractions SET [like]=" + number + " WHERE attractioname='" + attractioname + "'";
                    comm = new SqlCommand(strSQL, conn);
                    comm.ExecuteNonQuery();
                    char[] seperator = { '&' };
                    string[] split = likes.Split(seperator);
                    likes = string.Empty;
                    foreach (var item in split)
                    {
                        if (item!=attractioname&&item!="")
                        {
                            likes += item + '&';
                        }
                    }
                }
                strSQL = "UPDATE [User] SET [like]='" + likes + "' WHERE username='" + username + "'";
                comm = new SqlCommand(strSQL, conn);
                comm.ExecuteNonQuery();
            }
            
            
            conn.Close();
            return islike;
        }

        public string[] getlikefromuser(string username)
        {
            string likes=string.Empty;
            string[] like;
            conn.Open();
            strSQL = "SELECT [like] FROM [User] WHERE username='" + username + "'";
            SqlCommand comm = new SqlCommand(strSQL, conn);
            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                likes = reader["like"].ToString();
            }
            reader.Close();
            char[] seperator={'&'};
            like = likes.Split(seperator);
            conn.Close();
            return like;
        }

        public bool namecheck(string name, int i)
        {
            bool a=false;
            string b = "";
            conn.Open();
            if (i==0)
            {
                strSQL = "SELECT username FROM [User] WHERE username='" + name + "'";
            }
            else
            {
                strSQL = "SELECT attractioname FROM Attractions WHERE attractioname='" + name + "'";
            }
            SqlCommand comm = new SqlCommand(strSQL,conn);
            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                if (i==0)
                {
                    b = reader["username"].ToString();
                }
                else
                {
                    b = reader["attractioname"].ToString();
                }
            }
            reader.Close();
            conn.Close();
            if (b!="")
            {
                a = true;
            }
            return a;
        }

        public void deleteuser(string username)
        {
            conn.Open();
            strSQL = "DELETE FROM [User] WHERE username='"+username+"'";
            SqlCommand comm = new SqlCommand(strSQL, conn);
            comm.ExecuteNonQuery();
            conn.Close();
        }
    }
}
