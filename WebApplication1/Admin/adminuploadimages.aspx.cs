using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Admin
{
    public partial class adminuploadimages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Prod_Id = Request.QueryString["Prod_Id"];
            string filename = Prod_Id + ".jpg";

            currentimage.ImageUrl = "~/Images/" + filename;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Prod_Id = Request.QueryString["Prod_Id"];
            string filename = Prod_Id + ".jpg"; 
            string savelocation = Server.MapPath("~/Images/" + filename);

            FileUploadImage.SaveAs(savelocation);
        }
    }
}