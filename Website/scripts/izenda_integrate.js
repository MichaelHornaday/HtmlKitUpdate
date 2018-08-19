//Izenda Configuration Function will point the front-end at an Izenda API
var DoIzendaConfig = function () {
    var configJson = {
        "WebApiUrl": "http://localhost:63679/api/",
        "BaseUrl": "/",
        "RootPath": "/izenda",
        "CssFile": "izenda-ui.css",
        "Routes": {
            "Settings": "settings",
            "New": "new",
            "Dashboard": "dashboard",
            "Report": "report",
            "ReportViewer": "reportviewer",
            "ReportViewerPopup": "reportviewerpopup",
            "Viewer": "viewer"
        },
        "Timeout": 3600,
    };
    IzendaSynergy.config(configJson);
};
//Error checking during token generation
function errorFunc() {
    alert('Token was not generated correctly. Please login.');
}
//DoRender is called via successFunc in various methods below. The token retreieved is used along with every API call the Izenda UI will make.
var DoRender = function (successFunc) {
    $.ajax({
        type: "GET",
        url: "http://localhost:63679/authapi/user/GenerateToken",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: successFunc,
        error: errorFunc
    });
};
//The IzendaSynergy.render function will render the entire Izenda front-end with an independent navigation
var izendaInit = function () {
    function successFunc(data, status) {
        var currentUserContext = {
            token: data.token
        };
        IzendaSynergy.setCurrentUserContext(currentUserContext);
        IzendaSynergy.render(document.getElementById('izenda-root'));
    }
    this.DoRender(successFunc);
};
//IzendaSynergy.renderSettingPage will render the Izenda settings page
var izendaInitSetting = function () {
    function successFunc(data, status) {
        var currentUserContext = {
            token: data.token
        };
        IzendaSynergy.setCurrentUserContext(currentUserContext);
        IzendaSynergy.renderSettingPage(document.getElementById('izenda-root'));
    }
    this.DoRender(successFunc);
};
//IzendaSynergy.renderReportPage function will render the Izenda report list
var izendaInitReport = function () {
    function successFunc(data, status) {
        var currentUserContext = {
            token: data.token
        };
        IzendaSynergy.setCurrentUserContext(currentUserContext);
        IzendaSynergy.renderReportPage(document.getElementById('izenda-root'));
    }
    this.DoRender(successFunc);
};
//IzendaSynergy.renderDesignerPage function will render the Izenda report designer
var izendaInitReportDesigner = function () {
    function successFunc(data, status) {
        var currentUserContext = {
            token: data.token
        };
        IzendaSynergy.setCurrentUserContext(currentUserContext);
        IzendaSynergy.renderReportDesignerPage(document.getElementById('izenda-root'));
    }
    this.DoRender(successFunc);
};
// The IzendaSynergy.renderReportViewerPage function renders a report viewer to a <div> tag by report guid
var izendaInitReportViewer = function () {
    function successFunc(data, status) {
        var currentUserContext = {
            token: data.token
        };
        IzendaSynergy.setCurrentUserContext(currentUserContext);
        IzendaSynergy.renderReportViewerPage(document.getElementById('izenda-root'), "REPORT_GUID_HERE");
    }
    this.DoRender(successFunc);
};
// The IzendaSynergy.renderReportPart function renders report parts to specific <div> tag by report part guid
var izendaInitReportPart = function () {
    function successFunc(data, status) {
        var currentUserContext = {
            token: data.token
        };
        IzendaSynergy.setCurrentUserContext(currentUserContext);
        IzendaSynergy.renderReportPart(document.getElementById('izenda-part1'), {
            "id": "REPORT_PART_GUID_HERE"
        });
        IzendaSynergy.renderReportPart(document.getElementById('izenda-part2'), {
            "id": "REPORT_PART_GUID_HERE"
        });
    }
    this.DoRender(successFunc);
};
//IzendaSynergy.renderDashboardPage function will render the Izenda dashboard list
var izendaInitDashboard = function () {
    function successFunc(data, status) {
        var currentUserContext = {
            token: data.token
        };
        IzendaSynergy.setCurrentUserContext(currentUserContext);
        IzendaSynergy.renderDashboardPage(document.getElementById('izenda-root'));
    }
    this.DoRender(successFunc);
};
//IzendaSynergy.renderNewDashboardPage function will render the Izenda dashboard designer
var izendaInitNewDashboard = function () {
    function successFunc(data, status) {
        var currentUserContext = {
            token: data.token
        };
        IzendaSynergy.setCurrentUserContext(currentUserContext);
        IzendaSynergy.renderNewDashboardPage(document.getElementById('izenda-root'));
    }
    this.DoRender(successFunc);
};
//IzendaSynergy.renderDashboardViewerPage function renders a dashboard viewer to a <div> tag by dashboard guid
var izendaInitDashboardViewer = function () {
    function successFunc(data, status) {
        var currentUserContext = {
            token: data.token
        };
        IzendaSynergy.setCurrentUserContext(currentUserContext);
        IzendaSynergy.renderDashboardViewerPage(document.getElementById('izenda-root'), 'DASHBOARD_GUID_HERE',
           {
               p1: "10366",
               p2: "Barcelona"
           },
           {
               hideDashboardToolbar: true,
               hideCommonFilter: false
           });
    }
    this.DoRender(successFunc);
};