using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Engie_HackOHIO.BLL
{
    public class Chart
    {
        private int _ID;
        private string _Name;
        private string _ChartType;
        private string _DataSet;
        private string _ChartLabel;
        private string _EmptyDataMessage;
        private string _Customer;
        private DateTime _CreateDate;
        private int _CreateUser;
        private DateTime _ModifiedDate;
        private int _ModifiedByUser;
        private string _Theme;
        private string _Colors;
        private List<string> _ColorList;
        private string _DrillDownLink;
        private string _StoredProc;
        private string _CategoryAxis;

        public int ID
        {
            get { return _ID; }
            set { _ID = value; }
        }

        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }

        public string ChartType
        {
            get { return _ChartType; }
            set { _ChartType = value; }
        }

        public string DataSet
        {
            get { return _DataSet; }
            set { _DataSet = value; }
        }

        public string ChartLabel
        {
            get { return _ChartLabel; }
            set { _ChartLabel = value; }
        }

        public string EmptyDataMessage
        {
            get { return _EmptyDataMessage; }
            set { _EmptyDataMessage = value; }
        }

        public string Customer
        {
            get { return _Customer; }
            set { _Customer = value; }
        }

        public DateTime CreateDate
        {
            get { return _CreateDate; }
            set { _CreateDate = value; }
        }

        public int CreateUser
        {
            get { return _CreateUser; }
            set { _CreateUser = value; }
        }

        public DateTime ModifiedDate
        {
            get { return _ModifiedDate; }
            set { _ModifiedDate = value; }
        }

        public int ModifiedByUser
        {
            get { return _ModifiedByUser; }
            set { _ModifiedByUser = value; }
        }

        public string Theme
        {
            get { return _Theme; }
            set { _Theme = value; }
        }

        public string Colors
        {
            get { return _Colors; }
            set { _Colors = value; }
        }

        public List<string> ColorList
        {
            get { return _ColorList; }
            set { _ColorList = value; }
        }

        public string DrillDownLink
        {
            get { return _DrillDownLink; }
            set { _DrillDownLink = value; }
        }

        public string StoredProc
        {
            get { return _StoredProc; }
            set { _StoredProc = value; }
        }

        public string CategoryAxis
        {
            get { return _CategoryAxis; }
            set { _CategoryAxis = value; }
        }
    }
}