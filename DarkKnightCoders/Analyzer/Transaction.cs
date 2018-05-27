using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Analyzer
{
    public class Transaction
    {
        public int InvoiceNo;
        public string Type;
        public string Description;
        public DateTime Date;
        public string Location;
        public int Amount;
        public Transaction(int InvoiceNo, string Type, string Description, DateTime Date, string Location, int Amount)
        {
            this.InvoiceNo = InvoiceNo;
            this.Type = Type;
            this.Description = Description;
            this.Date = Date;
            this.Location = Location;
            this.Amount = Amount;
        }
    }
}
