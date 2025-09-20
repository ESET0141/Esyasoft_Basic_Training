using System.Data.SqlClient;

namespace DBMSConnect
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");
            Console.WriteLine("Getting Connection ...");

            var datasource = @"LAPTOP-GNQ1FIG4"; // your server
            var database = "b2_db_demo"; // your database name
            //var username = "DESKTOP-LCNNVH9\\kk"; // username of server to connect
            //var password = ""; // password

            // Create your connection string
            string connString = @"Data Source=" + datasource +
                ";Initial Catalog=" + database + "; Trusted_Connection=True;";


            Console.WriteLine(connString);

            SqlConnection conn = new SqlConnection(connString);

            try
            {
                Console.WriteLine("Opening Connection ...");
                // Open the connection
                conn.Open();
                Console.WriteLine("Connection successful!");
                //InsertStaff(conn);
                displayStaff(conn);

            }
            catch (Exception e)
            {
                Console.WriteLine("Error: " + e.Message);
            }
            finally
            {
                // Close the connection
                conn.Close();
            }


        }
        //static void InsertStaff(SqlConnection conn)
        //{
        //    Console.Write("Enter the Staff Name...");

        //    int id = 211;
        //    string myname = "Kuzumaki";
        //    string contact = "912999149";

        //    string querry = "insert into Student values(@id,@myname,@contact)";
        //    SqlCommand cm = new SqlCommand(querry, conn);
        //    cm.Parameters.AddWithValue("@myname", myname);
        //    cm.Parameters.AddWithValue("@id", id);
        //    cm.Parameters.AddWithValue("@contact", contact);
        //    int rows = cm.ExecuteNonQuery();
        //    if (rows > 0)
        //    {
        //        Console.WriteLine("Inseted recordsuccessfully");
        //    }


        //}
        static void displayStaff(SqlConnection conn)
        {
            string query = "select * from Student";
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader reader = cm.ExecuteReader();
            Console.WriteLine("Staff :");
            while (reader.Read())
            {
                {
                    Console.WriteLine($"Name :{reader["std_name"]}");
                    Console.WriteLine($"Id :{reader["std_id"]}");
                    Console.WriteLine($"Contact :{reader["std_contact_no"]}");

                }
            }
        }
    }
}
