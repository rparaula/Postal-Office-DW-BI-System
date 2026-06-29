using System;
using System.Collections.Generic;

namespace COSCPFWA.Models
{
    [Serializable]
    public class CurrentUser
    {
        public int UserId { get; set; }
        public string Username { get; set; }
        public string Email { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public HashSet<string> Roles { get; set; } = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
        public string CustomerIdHex { get; set; }
        public int? EmployeeId { get; set; }
        public int? DepartmentId { get; set; }
        public int? FacilityId { get; set; }
        public string FacilityTypeCode { get; set; }
        public string FacilityTypeName { get; set; }
        public bool CanViewFinance { get; set; }
        public bool CanViewLogistics { get; set; }
        public string FinanceAccessScope { get; set; }
        public string LogisticsAccessScope { get; set; }
        public string EffectiveCustomerScopeKey { get; set; }
        public int? EffectiveFacilityScopeKey { get; set; }
        public int? EffectiveDepartmentScopeKey { get; set; }
        public int? EffectiveEmployeeScopeKey { get; set; }

        public string DisplayName
        {
            get { return (FirstName + " " + LastName).Trim(); }
        }

        public bool HasRole(string roleCode)
        {
            return !string.IsNullOrWhiteSpace(roleCode) && Roles.Contains(roleCode);
        }

        public bool HasAnyRole(params string[] roleCodes)
        {
            if (roleCodes == null)
            {
                return false;
            }

            foreach (string roleCode in roleCodes)
            {
                if (HasRole(roleCode))
                {
                    return true;
                }
            }

            return false;
        }
    }
}
