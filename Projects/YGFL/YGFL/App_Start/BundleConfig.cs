using System;
using System.Web;
using System.Web.Optimization;

namespace YGFL
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new StyleBundle("~/Styles/all-in-one").IncludeDirectory("~/Content/template-admin/inspinia_admin-v2.7.1/css/", "*.css", true));

            bundles.Add(new ScriptBundle("~/Scripts/inspinia/main-init").Include(
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/jquery-3.1.1.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/bootstrap.min.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/analytics.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/metisMenu/jquery.metisMenu.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/slimscroll/jquery.slimscroll.js"
            ));

            bundles.Add(new ScriptBundle("~/Scripts/inspinia/custom-init").Include(
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/inspinia.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/pace/pace.js"
            ));

            bundles.Add(new ScriptBundle("~/Scripts/inspinia/fullcalender-init").Include(
              "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/fullcalendar/moment.js",
              "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/fullcalendar/fullcalendar.js"
            ));

            bundles.Add(new ScriptBundle("~/Scripts/inspinia/generalplugin-init").Include(
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/chosen/chosen.jquery.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/jsKnob/jquery.knob.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/jasny/jasny-bootstrap.min.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/datapicker/bootstrap-datepicker.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/nouslider/jquery.nouislider.min.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/switchery/switchery.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/ionRangeSlider/ion.rangeSlider.min.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/iCheck/icheck.min.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/metisMenu/jquery.metisMenu.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/colorpicker/bootstrap-colorpicker.min.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/clockpicker/clockpicker.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/cropper/cropper.min.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/fullcalendar/moment.min.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/daterangepicker/daterangepicker.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/select2/select2.full.min.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/touchspin/jquery.bootstrap-touchspin.min.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js",
                "~/Content/template-admin/inspinia_admin-v2.7.1/js/plugins/dualListbox/jquery.bootstrap-duallistbox.js"
            ));

        }
    }
}
