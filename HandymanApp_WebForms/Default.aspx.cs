using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HandymanApp_WebForms
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static object Login(string email, string password)
        {
            //TODO perform database query instead of email check
            if (email == "sixsimiles@gmail.com")
            {
                return new { Success = true, RedirectUrl = VirtualPathUtility.ToAbsolute("~/Dashboard.aspx") };
            } else
            {
                return new { Success = false, RedirectUrl = VirtualPathUtility.ToAbsolute("~/NotAuthorized.aspx") };
            }

        }
    }
}