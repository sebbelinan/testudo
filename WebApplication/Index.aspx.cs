using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SQLibrary;

namespace WebApplication
{
    public partial class Index : System.Web.UI.Page
    {
        static string name;
        static string lastname;
        static string ssn;
        static int id = -1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AddThings();
            }
        }

        protected void ButtonAddPerson_Click(object sender, EventArgs e)
        {
            if(SQL.CheckSSN(ssn)) 
            {
                SQL.AddContact(name, lastname, ssn);
            }
            else
            {
                //Literal1.Text = ("Alert, " "<script language ") FIXA TILL ALERT SENARE
            }
            UpdateListbox();
            ClearTextbox();
        }

        protected void NameTextBox_TextChanged(object sender, EventArgs e)
        {
            name = NameTextBox.Text;
        }

        protected void LastNameTextBox_TextChanged(object sender, EventArgs e)
        {
            lastname = LastNameTextBox.Text;
        }

        protected void SSNTextBox_TextChanged(object sender, EventArgs e)
        {
            ssn = SSNTextBox.Text;
        }

        protected void UpdateListbox()
        {
            FirstListBox.Items.Clear();
            AddThings();
        }

        protected void AddThings()
        {
            foreach(var p in SQL.GetContactData())
            {
                ListItem dataItem = new ListItem();
                dataItem.Text = p.name + " " + p.lastName;
                dataItem.Value = p.Id.ToString();

                FirstListBox.Items.Add(dataItem);
            }
            /*foreach (var p in SQL.GetContactData())
            {
                FirstListBox.Items.Add(new ListItem(p.name + " " + p.lastName));
            }*/
        }

        protected void ClearTextbox()
        {
            NameTextBox.Text = string.Empty;
            LastNameTextBox.Text = string.Empty;
            SSNTextBox.Text = string.Empty;
        }

        protected void Button1_Click(object sender, EventArgs e) //removebutton , ta bort från sql server
        {
            SQL.RemoveContact(id);
            ClearTextbox();
            UpdateListbox();    
        }

        protected void FirstListBox_SelectedIndexChanged(object sender, EventArgs e) // hitta id
        {
            if(FirstListBox.SelectedIndex >= 0)
            {
                string idvalue = FirstListBox.SelectedValue;
                id = Convert.ToInt32(idvalue);  
            }
        }

        protected void UpdateContact()
        {
            
        }

        protected void UpdateAdress()
        {

        }

        protected void AddAdress()
        {

        }

        protected void RemoveAdress()
        {

        }
    }
}