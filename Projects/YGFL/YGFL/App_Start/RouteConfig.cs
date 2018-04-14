using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace YGFL
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );


            //routes.MapRoute(
            //    name: "HomePage",
            //    url: "Trang-Chu",
            //    defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            //);
            //routes.MapRoute(
            //    name: "HomePage_Default",
            //    url: "",
            //    defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            //);
            //routes.MapRoute(
            //    name: "ProductCategory",
            //    url: "{ProductCategory}",
            //    defaults: new { controller = "ProductCategory", action = "Index" },
            //    constraints: new { ProductCategory = new Match() }
            //);
            //routes.MapRoute(
            //    name: "Product",
            //    url: "{ProductCategory}/{Product}",
            //    defaults: new { controller = "Product", action = "Index" },
            //    constraints: new { ProductCategory = new Match(), Product = new Match() }
            //);

        }

        //public bool Match(HttpContextBase httpContext, Route route, string parameterName, RouteValueDictionary values, RouteDirection routeDirection)
        //{
        //    //these would usually come from a database, or cache.
        //    var productCollectionApi = new ProductCollectionApi();
        //    var categories = productCollectionApi.GetAllRote();

        //    if (values[parameterName] == null)
        //        return false;

        //    //get the category passed in to the route
        //    var category = values[parameterName].ToString();

        //    //now we check our categories, and see if it exists
        //    return categories.ContainsKey(category);

        //    // url such as /category1/whatever will match
        //    // url such as /category4/whatever will not
        //}
        //public bool Match(HttpContextBase httpContext, Route route, string parameterName, RouteValueDictionary values, RouteDirection routeDirection)
        //{
        //    //these would usually come from a database, or cache.
        //    var productApi = new ProductApi();
        //    var products = productApi.GetAllRote();

        //    if (values[parameterName] == null)
        //        return false;

        //    //get the category passed in to the route
        //    var category = values[parameterName].ToString();

        //    //now we check our categories, and see if it exists
        //    return products.ContainsKey(category);

        //    // url such as /category1/whatever will match
        //    // url such as /category4/whatever will not
        //}
    }
}
