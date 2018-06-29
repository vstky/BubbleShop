using BubbleShop.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;

namespace BubbleShop.Controllers
{
    public class HomeController : Controller
    {
        private static readonly IList<CommentModel> _comments;

        static HomeController()
        {
            _comments = new List<CommentModel>
            {
                new CommentModel
                {
                    Id = 1,
                    Author = "Ares",
                    Text = "Hello 1!"
                },
                new CommentModel
                {
                    Id = 2,
                    Author = "Elvis",
                    Text = "This is 2"
                },
                new CommentModel
                {
                    Id = 3,
                    Author = "FeiWu",
                    Text = "This is *another* 3"
                },
            };
        }
 
        [OutputCache(Location = OutputCacheLocation.None)]
        public ActionResult Comments()
        {
            return Json(_comments, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult AddComment(CommentModel comment)
        {
            // Create a fake ID for this comment
            comment.Id = _comments.Count + 1;
            _comments.Add(comment);
            return Content("Success :)");
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}