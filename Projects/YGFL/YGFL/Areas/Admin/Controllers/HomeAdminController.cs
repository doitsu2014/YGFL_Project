using LeoAlvisService.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace YGFL.Areas.Admin.Controllers
{
    public class HomeAdminController : Controller
    {
        // GET: Admin/Home
        public ActionResult Index()
        {
            var albumRepository = new AlbumRepository();
            var listAlbum = albumRepository.GetAllActive();
            return View(listAlbum);
        }
    }
}