using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Analyzer;
using System.IO;

namespace DarkKnightCoders
{
    public partial class Output : Window
    {
        public int TotalTransactions = 0;
        public int TotalProperTransactions = 0;
        public int TotalFraudTransactions = 0;
        public List<string> trustedLocations = new List<string>();
        public List<Transaction> Transactions = new List<Transaction>();
        public List<Transaction> fraudTransactions = new List<Transaction>();
        public List<Transaction> learnedTransactions = new List<Transaction>();
        public Output()
        {         
            InitializeComponent();
            try
            {
                OpenCSV();
            }
            catch (FileLoadException)
            {
                lblMessage.Content = "Unable to access the file";
            }
            catch (FileNotFoundException)
            {
                lblMessage.Content = "File Not Found";
            }
            catch (IOException)
            {
                lblMessage.Content = "Unable to access the file";
            }
            lblTotalTransactions.Content = TotalTransactions.ToString();
            lblTotalProperTransactions.Content = TotalProperTransactions.ToString();
            lblTotalFraudTransactions.Content = TotalFraudTransactions.ToString();
            foreach (Transaction trans in fraudTransactions)
            {
                string result = trans.InvoiceNo + "  --  " + trans.Type + "  --  " + trans.Date.ToShortDateString() + "  --  " + trans.Location + "  --  " + trans.Amount.ToString();
                lstFraud.Items.Add(result);
            }
            foreach (Transaction trans in learnedTransactions)
            {
                int maxAmount = trans.Amount * 20;
                string result = trans.Type + "  --  Amount cannot be greater than: " + maxAmount.ToString();
                lstLearned.Items.Add(result);
                bool locationFound = false;
                foreach (string location in trustedLocations)
                {
                    if (location == trans.Location)
                    {
                        locationFound = true;
                    }
                }
                if (!locationFound)
                {
                    trustedLocations.Add(trans.Location);
                }
            }
            foreach (string location in trustedLocations)
            {
                lstTrustedLocations.Items.Add(location);
            }
        }        

        public void OpenCSV()
        {
            using (var reader = new StreamReader(@"C:\data.csv"))
            {
                while (!reader.EndOfStream)
                {
                    var line = reader.ReadLine();
                    var values = line.Split(',');
                    int InvoiceNo = int.Parse(values[0]);
                    string Type = values[1];
                    string Description = values[2];
                    DateTime Date = DateTime.Parse(values[3]);
                    string Location = values[4];
                    int Amount = int.Parse(values[5]);
                    Transaction transaction = new Transaction(InvoiceNo, Type, Description, Date, Location, Amount);
                    TotalTransactions += 1;
                    bool isFraud = AnalyzeCSV(transaction);
                    if (isFraud)
                    {
                        fraudTransactions.Add(transaction);
                        TotalFraudTransactions += 1;
                    }
                    else
                    {
                        TotalProperTransactions += 1;
                    }
                    Transactions.Add(transaction);
                }
            }
        }

        public bool AnalyzeCSV(Transaction transaction)
        {
            bool Typefound = false;
            bool IsFraud = false;
            bool fraudLocation = false;
            bool locationFound = true;
            if (transaction.Date > DateTime.Today)
            {
                IsFraud = true;
            }
            else if (transaction.Amount < 0)
            {
                IsFraud = true;
            }
            else
            {
                foreach (Transaction trans in learnedTransactions)
                {
                    if (trans.Type == transaction.Type)
                    {
                        locationFound = isLocationFound(transaction.Location);
                        Typefound = true;
                        double diff;
                        double Oldaverage = trans.Amount;
                        double NewAverage = (trans.Amount + transaction.Amount) / 2;
                        if (NewAverage > Oldaverage)
                        {
                            diff = NewAverage - Oldaverage;
                        }
                        else
                        {
                            diff = Oldaverage - NewAverage;
                        }
                        double diffPercentage = (diff / Oldaverage) * 100;
                        if (diffPercentage > 1000)
                        {
                            if (locationFound)
                            {
                                if (diffPercentage > 2000)
                                {
                                    IsFraud = true;
                                }
                                else
                                {
                                    IsFraud = false;
                                }
                            }
                            else
                            {
                                IsFraud = true;
                                fraudLocation = true;
                            }

                        }
                        else
                        {
                            trans.Amount = int.Parse((NewAverage).ToString());
                        }
                    }
                }
            }
            if ((!Typefound) && (!fraudLocation))
            {
                learnedTransactions.Add(transaction);
                return false;
            }
            else
            {
                if (IsFraud)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        public bool isLocationFound(string Location)
        {
            bool locationFound = false;
            foreach (Transaction trans in learnedTransactions)
            {
                if (trans.Location == Location)
                {
                    locationFound = true;
                }
            }
            return locationFound;
        }
    }
}
