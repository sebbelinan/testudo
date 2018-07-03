using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SQLibrary;
using Newtonsoft.Json;

namespace WebApplication.Service
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["action"] != null)
            {
                string action = Request["action"].ToString();

                if (action == "addContact")
                {
                    List<Person> contact = SQL.GetContactData();

                    jsonliteral.Text = JsonConvert.SerializeObject(contact);
                }

                if(action == "addContact")
                {
                    string firstName = Request["firstName"] != null ? Request["firstName"].ToString() : "";
                }
            }


        }
    }
}