using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TRMDesktopUI.Library.Helpers
{
    public class ConfigHelper : IConfigHelper
    {
        public decimal GetTaxRate()
        {

            string rateText = ConfigurationManager.AppSettings["taxRate"];

            bool IsvalidTaxRate = Decimal.TryParse(rateText, out decimal output);

            if(IsvalidTaxRate == false)
            {
                throw new ConfigurationErrorsException("Tax rate is not set up properly");
            }
            return output;
        }
    }
}
