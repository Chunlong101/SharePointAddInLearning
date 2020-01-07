using Microsoft.SharePoint.Client;
using Newtonsoft.Json;
using NLog;
using OfficeDevPnP.Core;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SharePointAddInLearningPresentation
{
    public partial class Index : System.Web.UI.Page
    {
        private Logger logger = LogManager.GetLogger(typeof(Index).FullName);
        private string SiteUrl = ConfigurationManager.AppSettings["SpWebUrl"];
        private string ListTitle = ConfigurationManager.AppSettings["SpListTitle"];
        private string AppId = ConfigurationManager.AppSettings["AppId"];
        private string CertificateIssuerId = ConfigurationManager.AppSettings["CertificateIssuerId"];
        private string CertificatePath = ConfigurationManager.AppSettings["CertificatePath"];
        private string CertificatePasswords = ConfigurationManager.AppSettings["CertificatePasswords"];
        private string AccessToken = null;
        private new string ErrorPage = ConfigurationManager.AppSettings["ErrorPage"];

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!this.IsPostBack)
                {
                }
            }
            catch (Exception ex)
            {
                logger.Error(ex, "Something went wrong, pls check the logs for more details, redirecting to the error page now.");
                Response.Redirect(ErrorPage);
            }
        }

        protected void btnSubmit1_Click(object sender, EventArgs e)
        {
            logger.Debug("Entering btnSubmit1_Click.");

            if (string.IsNullOrWhiteSpace(txtPhone.Text))
            {
                txtPhone.BorderColor = System.Drawing.Color.Red;
                txtPhone.Text = "Pls input a valid phone number";

                return;
            }

            try
            {
                using (ClientContext cc = new AuthenticationManager().GetHighTrustCertificateAppOnlyAuthenticatedContext(SiteUrl, AppId, Server.MapPath(CertificatePath), CertificatePasswords, CertificateIssuerId))
                {
                    Web web = cc.Web;
                    var list = cc.Web.Lists.GetByTitle(ListTitle);
                    ListItemCreationInformation itemCreateInfo = new ListItemCreationInformation();
                    var oListItem = list.AddItem(itemCreateInfo);
                    oListItem["UserName"] = txtName.Text;
                    oListItem["Email"] = txtEmail.Text;
                    oListItem["Phone"] = txtPhone.Text;
                    oListItem["Msg"] = txtMsg.Text;

                    oListItem.Update();

                    cc.ExecuteQueryRetry();

                    btnSubmit1.Text = "Successfully submitted, thanks!";
                    btnSubmit1.Enabled = false;
                    logger.Info("A new item should be added to sharepoint list.");
                }
            }
            catch (Exception ex)
            {
                logger.Error(ex, "Something went wrong, pls check the logs for more details, redirecting to the error page now.");
                Response.Redirect(ErrorPage);
            }
        }

        protected void btnGetListItems_Click(object sender, EventArgs e)
        {
            logger.Debug("Entering btnGetListItems_Click.");

            try
            {
                using (ClientContext cc = new AuthenticationManager().GetHighTrustCertificateAppOnlyAuthenticatedContext(SiteUrl, AppId, Server.MapPath(CertificatePath), CertificatePasswords, CertificateIssuerId))
                {
                    var client = new RestClient("http://sp2019/sites/SPDev/_api/web/lists/getbytitle('SharePointAddInTopicSharingSession')/items?$select=Id,UserName,Email,Phone&$orderby=Id desc&$top=5");
                    var request = new RestRequest(Method.GET);
                    request.AddHeader("Accept", "application/json");
                    var accessToken = cc.GetAccessToken();

                    logger.Debug("Got accessToken: " + accessToken);

                    request.AddHeader("Authorization", "Bearer " + accessToken);
                    IRestResponse response = client.Execute(request);
                    var userContacts = JsonConvert.DeserializeObject<UserContacts>(response.Content);

                    logger.Debug("Got rest api response: " + response.Content);

                    if (userContacts.Value.Count > 0)
                    {
                        gvList.DataSource = userContacts.Value;
                        gvList.DataBind();

                        btnGetListItems.Text = "Successfully executed the rest api!";
                        btnGetListItems.Enabled = false;
                        logger.Info("Successfully executed the rest api to get items from sharepoint list.");
                    }
                }
            }
            catch (Exception ex)
            {
                logger.Error(ex, "Something went wrong, pls check the logs for more details, redirecting to the error page now.");
                Response.Redirect(ErrorPage);
            }
        }
    }
}