using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace de1.UserControl
{
    public partial class ucManagerCourse : System.Web.UI.UserControl
    {
        protected void BindGridView()
        {
            QLKhoaHocEntities context = new QLKhoaHocEntities();
            var query = (from p in context.Courses select p).ToList();
            GridViewCourses.DataSource = query;
            GridViewCourses.DataBind();
        }
        protected void BindDropDownList()
        {
            QLKhoaHocEntities context = new QLKhoaHocEntities();
            DropDownListCategory.DataSource = (from c in context.Categories select c).ToList();
            DropDownListCategory.DataTextField = "CatName";
            DropDownListCategory.DataValueField = "CatID";
            DropDownListCategory.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
                BindDropDownList();
            }
        }

        protected void GridViewCourse_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewCourses.PageIndex = e.NewPageIndex;
            BindGridView();
        }

        protected void ButtonAddNew_Click(object sender, EventArgs e)
        {
            string filename = "";
            if (FileUploadPicture.HasFile)
            {
                filename = FileUploadPicture.FileName;
                FileUploadPicture.SaveAs(Server.MapPath("~/images/Courses/" + filename));
            }

            QLKhoaHocEntities context = new QLKhoaHocEntities();
            Course p = new Course();

            p.Name = TextBoxName.Text;
            p.Duration = int.Parse(TextBoxDuration.Text);
            p.Description = TextBoxDescription.Text;
            p.CatID = int.Parse(DropDownListCategory.SelectedValue);
            p.ImageFilePath = filename;

            context.Courses.Add(p);
            context.SaveChanges();

            BindGridView();
            Page.Master.DataBind();
        }
    }
}