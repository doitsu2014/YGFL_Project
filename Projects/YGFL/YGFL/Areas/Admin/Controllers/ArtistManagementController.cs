using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace YGFL.Areas.Admin.Controllers
{
    [Authorize(Roles ="Admin")]
    public class ArtistManagementController : Controller
    {
        // GET: Admin/ArtistManagement
        public ActionResult Index()
        {
            return View();
        }
    }
}