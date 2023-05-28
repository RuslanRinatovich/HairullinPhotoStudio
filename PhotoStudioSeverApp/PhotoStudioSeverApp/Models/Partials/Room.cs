using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace PhotoStudioSeverApp.Models
{
   public partial class Room
    {
        


        public string GetInfo
        {
            get
            {
                if (Description.Length >= 200)
                    return Description.Substring(0, 200);
                return Description;
            }
        }

      

        public double GetRate
        {
            get
            {
                int rate = 0;
                foreach (Rewiew rewiew in Rewiews)
                {
                    rate += rewiew.Rate;
                }
                if (rate == 0)
                    return 0;

                return (rate / Rewiews.Count);
            }
        }

        public Visibility GetVisibility
        {
            get
            {
                if (Manager.CurrentUser == null)
                    return Visibility.Collapsed;
                if (Manager.CurrentUser.RoleId < 3)
                    return Visibility.Collapsed;
                return Visibility.Visible;
            }
        }
    }
}
