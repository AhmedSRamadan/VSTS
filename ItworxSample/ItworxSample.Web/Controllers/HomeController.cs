using ItworxSample.Web.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ItworxSample.Web.Controllers
{
    public class HomeController : BaseController
    {
        #region Properties
        #endregion

        #region Action Methods

        // GET: Home
        public ActionResult Index()
        {
            SampleModel obj = new SampleModel();
            obj.Username = "Ahmed Ramadan";
            obj.Password = "123456";

            return View(obj);
        }

        #endregion

        #region Helper Methods
        #endregion
    }
}