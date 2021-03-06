//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BubbleShop.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class OrderLine
    {
        public int Id { get; set; }
        public int LineNumber { get; set; }
        public short Qty { get; set; }
        public short Price { get; set; }
        public short DiscountAmount { get; set; }
        public short LineTotalAmount { get; set; }
        public System.TimeSpan LastUpdated { get; set; }
        public int OrderId { get; set; }
        public int Product_Id { get; set; }
    
        public virtual Product Product { get; set; }
        public virtual Order Order { get; set; }
    }
}
