using System;
using System.Web;
using COSCPFWA.Models;

namespace COSCPFWA.Security
{
    public static class Authz
    {
        public static CurrentUser CurrentUser
        {
            get
            {
                HttpContext context = HttpContext.Current;
                if (context == null || context.Session == null)
                {
                    return null;
                }

                return context.Session["CurrentUser"] as CurrentUser;
            }
        }

        public static bool IsLoggedIn()
        {
            return CurrentUser != null;
        }

        public static void RequireLogin()
        {
            if (IsLoggedIn())
            {
                return;
            }

            RedirectIfNeeded("~/Login.aspx");
        }

        public static void RequireAnyRole(params string[] roleCodes)
        {
            CurrentUser user = CurrentUser;
            if (user == null)
            {
                RedirectIfNeeded("~/Login.aspx");
                return;
            }

            if (!user.HasAnyRole(roleCodes))
            {
                RedirectIfNeeded("~/Unauthorized.aspx");
            }
        }

        public static void RequireFinanceAccess()
        {
            CurrentUser user = CurrentUser;
            if (user == null)
            {
                RedirectIfNeeded("~/Login.aspx");
                return;
            }

            if (!user.CanViewFinance || string.Equals(user.FinanceAccessScope, "None", StringComparison.OrdinalIgnoreCase))
            {
                RedirectIfNeeded("~/Unauthorized.aspx");
            }
        }

        public static void RequireLogisticsAccess()
        {
            CurrentUser user = CurrentUser;
            if (user == null)
            {
                RedirectIfNeeded("~/Login.aspx");
                return;
            }

            if (!user.CanViewLogistics || string.Equals(user.LogisticsAccessScope, "None", StringComparison.OrdinalIgnoreCase))
            {
                RedirectIfNeeded("~/Unauthorized.aspx");
            }
        }

        private static void RedirectIfNeeded(string targetUrl)
        {
            HttpContext context = HttpContext.Current;
            if (context == null)
            {
                return;
            }

            string currentPath = context.Request.AppRelativeCurrentExecutionFilePath ?? string.Empty;
            if (string.Equals(currentPath, targetUrl.Replace("~", string.Empty), StringComparison.OrdinalIgnoreCase) ||
                string.Equals(currentPath, VirtualPathUtility.ToAppRelative(targetUrl), StringComparison.OrdinalIgnoreCase))
            {
                return;
            }

            context.Response.Redirect(targetUrl, true);
        }
    }
}
