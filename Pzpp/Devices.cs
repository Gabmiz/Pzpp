//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Pzpp
{
    using System;
    using System.Collections.Generic;
    
    public partial class Devices
    {
        public System.Guid ID { get; set; }
        public string IP { get; set; }
        public string Description { get; set; }
    
        public virtual Ping Ping { get; set; }
    }
}
