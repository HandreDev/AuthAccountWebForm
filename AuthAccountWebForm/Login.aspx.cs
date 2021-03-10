using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AuthAccountWebForm;

namespace AuthAccountWebForm.App_Pages
{
    public partial class Login : System.Web.UI.Page
    {
        private AccountDataContext _context = new AccountDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (_context.Users.Any(user => user.Email == txtLoginEmail.Text))
            {
                var test = _context.Users.FirstOrDefault(user => user.Email == txtLoginEmail.Text).Password;

                var userPassword = (from user in _context.Users where user.Email == txtLoginEmail.Text select user.Password).FirstOrDefault();

                if (userPassword == txtLoginPassword.Text)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Logged In" + "');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Wrong password" + "');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Email does not exist" + "');", true);
            }
        }
    }
}