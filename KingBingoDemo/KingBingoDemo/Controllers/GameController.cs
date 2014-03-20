using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using KingBingoDemo.Models;

namespace KingBingoDemo.Controllers
{
    public class GameController : Controller
    {
        kingbingoEntities db = new kingbingoEntities();

        public ActionResult Index(int id)
        {
            var game = db.Games.SingleOrDefault(g => g.GameID == id);
            ViewData["game"] = game;

            return View();
        }

    }
}
