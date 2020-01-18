using Microsoft.Extensions.Options;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Qc.PcWOL.Models
{
    public class SystemSetting
    {
        public string Title { get; set; }
        public List<PcMacInfo> MacList { get; set; }
    }
}
