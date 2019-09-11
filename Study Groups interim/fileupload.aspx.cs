using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace Study_Groups_interim
{
    public partial class fileupload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploaded Files/") + FileUpload1.FileName);
            }

            DataTable dt = new DataTable();
            dt.Columns.Add("File", typeof(string));
            dt.Columns.Add("Size", typeof(string));
            dt.Columns.Add("Type", typeof(string));

            foreach (String strFile in Directory.GetFiles(Server.MapPath("~/Uploaded Files/")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name, fi.Length, GetFileTypeByExtension(fi.Extension));
            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private String GetFileTypeByExtension(String extension)
        {
            switch (extension.ToLower())
            {
                case ".jpg":
                case ".png":
                case ".jpeg":
                    return ("Image");
                case ".doc":
                case ".docx":
                    return ("Microsoft Word file");
                case ".txt":
                    return ("Text Document");

                case ".py":
                    return ("Python file");
                case ".EXE":
                    return ("PC Application");
                case ".htm":
                case ".html":
                    return ("Html file");
                case ".TXT":
                    return ("ASCII text file");
                case ".ZIP":
                    return ("PC Zip Compressed Archive");
                case ".ppt":
                case ".pptx":
                    return ("Powerpoint prsentation");
                case ".":
                    return ("Python file");
                case ".java":
                    return ("Java file");
                case ".exe":
                    return ("Executable File");
                case ".mp4":
                case ".mpeg":
                case ".MP4":
                    return ("Video File");
                case ".mp3":
                    return ("mp3 audio File");
                case ".PDF":
                    return ("Portable Document Format File");
                case ".pdf":
                    return ("Portable Document Format File");


                default:
                    return ("Unknown");
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/obtect-stream";
                Response.AppendHeader("content-disposition", "Filename" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/Uploaded Files/") + e.CommandArgument);
                Response.End();
            }  
        }
    }
}