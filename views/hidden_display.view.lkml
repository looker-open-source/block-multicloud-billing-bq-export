include: "unified_cloud_billing.view.lkml"

view: +unified_cloud_billing {

  dimension: resource_length {
    type: number
    hidden: yes
    sql: LENGTH(${service.resource_project}) ;;
  }

  dimension: icon_display {
    hidden: yes
    type: string
    sql: 1 ;;
    html: <img {% if cloud_provider.cloud_provider._value == 'AWS' %} src="https://www.amazon.com/favicon.ico"
                                                       {% elsif cloud_provider.cloud_provider._value == 'Azure' %} src="https://www.microsoft.com/favicon.ico"
                                                       {% elsif cloud_provider.cloud_provider._value == 'GCP' %} src="https://www.google.com/favicon.ico"
                                                       {% endif %}
         alt="" width="25" height="auto" display="inline-block" position="relative">  ;;
  }

  dimension: resource_display {
    hidden: yes
    type: string
    sql: ${service.resource_project} ;;
    html:
       <div style="position:relative; display:inline-block; line-height: 1em; width: 100%; height: 100%; white-space: normal; color: {% if cloud_provider.cloud_provider._value == 'AWS' %} #FF9900
                                                           {% elsif cloud_provider.cloud_provider._value == 'Azure' %} #00A2ED
                                                           {% elsif cloud_provider.cloud_provider._value == 'GCP' %} #34A853
                                                           {% else %} #FFF
                                                           {% endif %};  word-wrap: break-word; font-size:60%; font-weight: bolder; padding-top: 25%; padding-bottom: 25%;">

        {{linked_value}}
        </div>
        ;;
  }

}
