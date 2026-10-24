
using System;

namespace EventPortal
{
    public partial class EventRegistration : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblMessage.ForeColor =
                    System.Drawing.Color.Green;

                lblMessage.Text =
                    "Registration Successful!<br/>" +
                    "Name: " + Server.HtmlEncode(txtName.Text) +
                    "<br/>Email: " + Server.HtmlEncode(txtEmail.Text) +
                    "<br/>Phone: " + Server.HtmlEncode(txtPhone.Text) +
                    "<br/>Event: " + Server.HtmlEncode(ddlEvent.SelectedItem.Text) +
                    "<br/>Date: " + Server.HtmlEncode(txtDate.Text);
            }
        }
    }
}
