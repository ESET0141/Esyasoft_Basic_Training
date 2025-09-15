namespace Banking_app
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int choice, Acct_num= 0, amt = 0, withdraw =0;
            string Name ="";
            bool acct_exist = false;
             
            void create_acct()
            {
                Console.WriteLine("Please Enter your names");
                Name = Console.ReadLine();
                
                Console.WriteLine("Please Enter your Acount Number");
                Acct_num = Convert.ToInt32(Console.ReadLine());
                
                Console.WriteLine("Account Created!");
            }

            void deposit_money()
            {
                Console.WriteLine("Please Enter The Amount to deposit");
                amt = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("Money Deposited");
            }

            void withdraw_money()
            {
                Console.WriteLine("Please Enter The Amount to Withdraw");
                withdraw = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("Money Withdrawed");
            }

            void display_detail()
            {
                Console.WriteLine($"Account Holder Name : {Name}");
                Console.WriteLine($"Account Number : {Acct_num}");
                Console.WriteLine($"Total Amount in the Bank : {amt - withdraw}");
            }

            Console.WriteLine("1. Create a new bank Account ");
            Console.WriteLine("2. Deposit Money ");
            Console.WriteLine("3. Withdraw Money ");
            Console.WriteLine("4. Display account details ");
            Console.WriteLine("5. Exit ");
       
            while (true)
            {
                Console.WriteLine("Enter your Choice ");
                choice = Convert.ToInt32(Console.ReadLine());

                switch (choice) {
                    
                    case 1:
                        if (acct_exist)
                        {
                            Console.WriteLine("Account already Exists");
                        }
                        else
                        {
                            create_acct();
                            acct_exist = true;
                        }
                            break;
                    
                    case 2:
                        if (acct_exist)
                        {
                            deposit_money();
                            
                            
                        }
                        else
                        {
                            Console.WriteLine("Account Does not Exists");
                        }
                        break;

                    case 3:
                        if (acct_exist)
                        {
                            withdraw_money();


                        }
                        else
                        {
                            Console.WriteLine("Account Does not Exists");
                        }
                        break;
                    case 4:
                        if (acct_exist)
                        {
                            display_detail();


                        }
                        else
                        {
                            Console.WriteLine("Account Does not Exists");
                        }
                        break;
                    case 5:
                        Console.WriteLine("Exiting the Application");
                        break;
                    default:
                        Console.WriteLine("Incorrect Choice")
                            break;


                }
            }

        }
    }
}
