//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LeoAlvisService.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class ApplyMessage
    {
        public int ID { get; set; }
        public int PositionID { get; set; }
        public string Name { get; set; }
        public string SocialUsername { get; set; }
        public string Email { get; set; }
        public string PastExperience { get; set; }
        public string Reason { get; set; }
        public bool IsActive { get; set; }
    
        public virtual ApplyPosition ApplyPosition { get; set; }
    }
}