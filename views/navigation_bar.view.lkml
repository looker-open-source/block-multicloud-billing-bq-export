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
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 9px; color: #4285F4" href="/dashboards/gcp_billing_block::gcp_summary">GCP SUMMARY</a>
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 9px; color: #4285F4" href="/dashboards/azure_billing_block::azure_summary">AZURE SUMMARY</a>
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 9px; color: #4285F4" href="/dashboards/aws_billing_block::aws_summary">AWS SUMMARY</a>
        </nav>
      </div>
    <div style="background-color: #FFF; height:500px;width:100%"></div>;;
  }
}
