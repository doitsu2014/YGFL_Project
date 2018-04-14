using LeoAlvisService.Services;
using LeoAlvisService.Utils;
using LeoAlvisService.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace YGFL.Areas.Admin.Controllers
{
    [Authorize(Roles = "Admin")]
    public class ArtistManagementController : Controller
    {
        // GET: Admin/ArtistManagement
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Edit(int artistId)
        {
            return View();
        }
        [HttpPost]
        public JsonResult Edit(ArtistViewModel editVM)
        {
            return Json(new
            {
                success = true
            }, JsonRequestBehavior.AllowGet);
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public JsonResult Create(ArtistViewModel createVM)
        {
            return Json(new
            {
                success = true
            }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetArtists(JQueryParameters param)
        {
            var artistService = new ArtistService();
            var count = 0;
            var listArtist = artistService.GetAllActive().Select(a => new IConvertible[] {
                ++count,
                a.Name,
                a.AvatarURL
            }).ToList();

            return Json(new
            {
                sEcho = param.sEcho,
                iTotalRecords = 1,
                iTotalDisplayRecords = 1,
                aaData = listArtist
            }, JsonRequestBehavior.AllowGet);
        }
    }
}