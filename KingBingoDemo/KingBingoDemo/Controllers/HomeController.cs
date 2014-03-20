using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Collections;
using KingBingoDemo.Models;
using System.Data.Entity;

namespace KingBingoDemo.Controllers
{
    public class HomeController : Controller
    {
        kingbingoEntities db = new kingbingoEntities();
        public ActionResult Index()
        {
            ViewBag.Message = "Hello World!";
            var gameID = 1;
            ViewBag.gameID = gameID;

            DbSet<Game> games = db.Games;
            ViewData["games"] = games;

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
