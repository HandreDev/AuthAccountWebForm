using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AuthAccountWebForm
{
    public partial class Register : System.Web.UI.Page
    {
        private AccountDataContext _context = new AccountDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister(object sender, EventArgs e)
        {

            User user = new User();
            user.Name = txtName.Text;
            user.Surname = txtSurname.Text;
            user.DOB = DateTime.Parse(txtDatepicker.Text);
            user.Email = txtEmail.Text;
            user.Password = txtPassword.Text;
            user.IsAdmin = false;

            if (_context.Users.Any(u => u.Email == txtEmail.Text))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Email already exists" + "');", true);

            }
            else 
            {
                _context.Users.InsertOnSubmit(user);
                _context.SubmitChanges();
            }

            
        }
    }
}