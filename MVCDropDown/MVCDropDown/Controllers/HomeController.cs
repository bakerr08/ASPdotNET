using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCDropDown.Models;

namespace MVCDropDown.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            var ColorList = new List<SelectListItem>();
            var DropDown = new ColorModel();

            DropDown.id = 1;
            DropDown.Color = "Red";
            ColorList.Add(new SelectListItem() {Text =DropDown.Color, Value = DropDown.id.ToString()});

            DropDown.id = 2;
            DropDown.Color = "Green";
            ColorList.Add(new SelectListItem() { Text = DropDown.Color, Value = DropDown.id.ToString() });

            DropDown.id = 3;
            DropDown.Color = "Blue";
            ColorList.Add(new SelectListItem() { Text = DropDown.Color, Value = DropDown.id.ToString() });

            ViewBag.DropDownColors = ColorList;
            return View();
        }

        public string GetColor(string selection)
        {
            var Color = new ColorModel();

            if (selection == "1")
            {
                Color.id = 1;
                Color.Color = "Red";
            }
            else if (selection == "2")
            {
                Color.id = 2;
                Color.Color = "Green";
            }
            else if (selection == "3")
            {
                Color.id = 3;
                Color.Color = "Blue";
            }
            return Json(Color);
        }

    }
}
