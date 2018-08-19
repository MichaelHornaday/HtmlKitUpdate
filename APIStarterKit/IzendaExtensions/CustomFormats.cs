using Izenda.BI.Framework.Constants;
using Izenda.BI.Framework.CustomConfiguration;
using Izenda.BI.Framework.Models;
using Izenda.BI.Framework.Models.Contexts;
using Izenda.BI.Framework.Models.ReportDesigner;
using System;
using System.Collections.Generic;
using System.ComponentModel.Composition;
using System.Globalization;
using System.Linq;

//Custom Formatter Examples
namespace Izenda.CustomFormats
{
    [Export(typeof(IAdHocExtension))]
    public class CustomAdHocExtension : DefaultAdHocExtension
    {
        public override List<DataFormat> LoadCustomDataFormat()

        {
            var result = new List<DataFormat>

            {
                 new DataFormat
                {
                    Name = "By Hour",
                    DataType = IzendaDataType.DatetimeType,
                    Category = IzendaKey.CustomFormat,
                    FormatFunc = (x) =>
                    {
                        return ((DateTime)x).ToString("M/d/yyyy h:00 tt");
                    }
                },

                new DataFormat
                {
                    Name = "dd MM:mm",
                    DataType = IzendaDataType.DatetimeType,
                    Category = IzendaKey.CustomFormat,
                    FormatFunc = (x) =>
                    {
                        var date = Convert.ToDateTime(x);
                        return date.ToString("dd HH:mm");
                    }
                },
                new DataFormat
                {
                    Name = "dd HH:mm:ss",
                    DataType = IzendaDataType.DatetimeType,
                    Category = IzendaKey.CustomFormat,
                    FormatFunc = (x) =>
                    {
                        var date = Convert.ToDateTime(x);
                        return date.ToString("dd HH:mm:ss");
                    }
                },
                new DataFormat
                {
                    Name = "dd mm:ss",
                    DataType = IzendaDataType.DatetimeType,
                    Category = IzendaKey.CustomFormat,
                    FormatFunc = (x) =>
                    {
                        var date = Convert.ToDateTime(x);
                        return date.ToString("dd mm:ss");
                    }
                },
                new DataFormat
                    {
                        Name = "£0,000",
                        DataType = IzendaDataType.NumericType,
                        Category = IzendaKey.CustomFormat,
                        FormatFunc = (x) =>
                        {
                            return ((decimal)x).ToString("C0", CultureInfo.CreateSpecificCulture("en-GB"));
                        }
                    },
                    new DataFormat
                    {
                        Name = "¥0,000",
                        DataType = IzendaDataType.NumericType,
                        Category = IzendaKey.CustomFormat,
                        FormatFunc = (x) =>
                        {
                            return ((decimal)x).ToString("C0", CultureInfo.CreateSpecificCulture("ja-JP"));
                        }
                        },
                    new DataFormat
                    {
                        Name = "0,000",
                        DataType = IzendaDataType.NumericType,
                        Category = IzendaKey.CustomFormat,
                        FormatFunc = (x) =>
                        {
                            return String.Format(CultureInfo.InvariantCulture, "{0:0,0}", x);
                        }
                    },
                        new DataFormat
                        {
                            Name = "$0,000",
                            DataType = IzendaDataType.NumericType,
                            Category = IzendaKey.CustomFormat,
                            FormatFunc = (x) =>
                            {
                                return String.Format(CultureInfo.InvariantCulture, "${0:0,0}", x);
                            }
                        },

                        new DataFormat
                        {
                            Name = "HH:MM:SS",
                            DataType = IzendaDataType.NumericType,
                            Category = IzendaKey.CustomFormat,
                            FormatFunc = (x) =>
                            {
                                var newValue = Convert.ToDouble(x);
                                TimeSpan time = TimeSpan.FromSeconds(newValue);

                                return time.ToString(@"dd\.hh\:mm\:ss");
                            }
                        },
                    new DataFormat
                    {
                        Name = "00.00% - x 100",
                        DataType = IzendaDataType.NumericType,
                        Category = IzendaKey.CustomFormat,
                        FormatFunc = (x) =>
                        {
                            var value = (decimal)x;
                            return value.ToString("P0", CultureInfo.InvariantCulture);
                        }
                    }
            };

            return result;
        }
    }
}