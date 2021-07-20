include: "unified_cloud_billing.view.lkml"

view: +unified_cloud_billing {
  ###################### Period over Period Reporting Metrics ######################

  measure: dash_nav {
    view_label: "Session"
    group_label: "Dashboard Navigation"
    label: "Navigation Bar"
    type: string
    sql: "";;
    html:
    <div style="background-color: #FFF; height:500px;width:100%;"></div>
    <div style="background-color: #FFF; height:23px;width:100%;"></div>
      <div style=" background-color: #FFF; border: solid 2px ##9AA0A6; border-radius: 5px; padding: 5px 10px; height: 60px; width:100%">
        <nav style="font-size: 16px; color: #FFF">
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 9px; color: black">NAVIGATE TO :  </a>
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 9px; color: #4285F4" href="/dashboards-next/7?">GCP SUMMARY</a>
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 9px; color: #4285F4" href="/dashboards-next/9?">AZURE SUMMARY</a>
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 9px; color: #4285F4" href="/dashboards-next/8?">AWS SUMMARY</a>
        </nav>
      </div>
    <div style="background-color: #FFF; height:500px;width:100%"></div>;;
  }
}
