using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ResumeSite.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Title1 = "ДАННЫЕ";
            ViewBag.Title2 = "УЧЁБА";
            ViewBag.Title3 = "РАБОТА";

            using (var context = new ModelDBContainer())
            {
                var text1 = context.TextsSet.Find(2);
                var text2 = context.TextsSet.Find(3);
                ViewBag.Text1 = text1.Content;
                ViewBag.Text2 = text2.Content;
            }

            return View();
        }

        public ActionResult Skills()
        {
            using (var context = new ModelDBContainer())
            {
                ViewBag.Text1 = context.TextsSet.Find(5).Content;
                ViewBag.Text2 = context.TextsSet.Find(6).Content;
                ViewBag.Text3 = context.TextsSet.Find(14).Content;
                ViewBag.Text4 = context.TextsSet.Find(7).Content;
                ViewBag.Text5 = context.TextsSet.Find(15).Content;
            }

            return View();
        }

        public ActionResult Website()
        {
            using (var context = new ModelDBContainer())
            {
                ViewBag.Text1 = context.TextsSet.Find(8).Content;
                ViewBag.Text2 = context.TextsSet.Find(9).Content;
                ViewBag.Text21 = context.TextsSet.Find(10).Content;
                ViewBag.Text22 = context.TextsSet.Find(11).Content;
                ViewBag.Text23 = context.TextsSet.Find(12).Content;
                ViewBag.Text24 = context.TextsSet.Find(13).Content;
            }
            return View();
        }

        public ActionResult Startpage()
        {
            return View();
        }
    }
}