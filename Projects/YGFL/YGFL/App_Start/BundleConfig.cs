﻿using System;
using System.Web;
using System.Web.Optimization;

namespace YGFL
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/site.css"));

            bundles.Add(new StyleBundle("~/Styles/template-inspinia")
                .IncludeDirectory("~/Content/template-admin/inspinia_admin-v2.7.1/css/", "*.css", true)
                .Include("~/Content/template-admin/inspinia_admin-v2.7.1/font-awesome/css/font-awesome.css",
                "~/Content/template-admin/inspinia_admin-v2.7.1/css/plugins/dataTables/datatables.min.css"));

            bundles.Add(new ScriptBundle("~/Scripts/template-inspinia")
                .IncludeDirectory("~/Content/template-admin/inspinia_admin-v2.7.1/js/", "*.js", true)
                .Include("~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/dataTables/datatables.min.js"));

        }
    }
}
