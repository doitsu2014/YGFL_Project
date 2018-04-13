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


            // Luna main csss
            bundles.Add(new StyleBundle("~/Content/luna-main-css").Include(
                    "~/Content/template-admin/luna_admin-v1.3/vendor/fontawesome/css/font-awesome.css",
                    "~/Content/template-admin/luna_admin-v1.3/vendor/bootstrap/css/bootstrap.css",
                    "~/Content/template-admin/luna_admin-v1.3/styles/pe-icons/pe-icon-7-stroke.css",
                    "~/Content/template-admin/luna_admin-v1.3/styles/stroke-icons/style.css",
                    "~/Content/template-admin/luna_admin-v1.3/styles/style.css",
                    "~/Content/template-admin/luna_admin-v1.3/vendor/animate.css/animate.css",
                    "~/Content/template-admin/luna_admin-v1.3/styles/pe-icons/helper.css",
                    "~/Content/template-admin/luna_admin-v1.3/vendor/toastr/toastr.min.css",
                    "~/Content/template-admin/luna_admin-v1.3/vendor/datatables/datatables.min.css"
                    ));
            // Luna main scripts
            bundles.Add(new ScriptBundle("~/Content/luna-main-script").Include(
                "~/Content/template-admin/luna_admin-v1.3/vendor/pacejs/pace.min.js",
                "~/Content/template-admin/luna_admin-v1.3/vendor/jquery/dist/jquery.min.js",
                "~/Content/template-admin/luna_admin-v1.3/vendor/bootstrap/js/bootstrap.min.js",
                "~/Content/template-admin/luna_admin-v1.3/scripts/luna.js",
                "~/Content/template-admin/luna_admin-v1.3/vendor/sparkline/index.js",
                "~/Content/template-admin/luna_admin-v1.3/vendor/toastr/toastr.min.js",
                "~/Content/template-admin/luna_admin-v1.3/vendor/flot/jquery.flot.min.js",
                "~/Content/template-admin/luna_admin-v1.3/vendor/flot/jquery.flot.resize.min.js",
                "~/Content/template-admin/luna_admin-v1.3/vendor/flot/jquery.flot.spline.js",
                "~/Content/template-admin/luna_admin-v1.3/vendor/datatables/datatables.min.js"
                ));
        }
    }
}
