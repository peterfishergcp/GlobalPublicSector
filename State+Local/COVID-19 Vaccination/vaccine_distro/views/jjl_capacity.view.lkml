view: jjl_capacity {
  sql_table_name: `slg-shared-project.vaccine_distro.jjl_capacity`
    ;;

  measure: cap_est_high {
    type: sum
    sql: ${TABLE}.cap_est_high ;;
  }

  measure: cap_est_low {
    type: sum
    sql: ${TABLE}.cap_est_low ;;
  }

  measure: cap_est_med {
    type: sum
    sql: ${TABLE}.cap_est_med ;;
  }

  dimension: count_jjl_capacity {
    type: number
    sql: ${TABLE}.count ;;
    label: "Facilities Total"
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
    can_filter: yes
  }

  #for CA ONLY
  dimension: county_fips {
    type: string
    map_layer_name:us_counties_fips
    sql: ${TABLE}.county_fips ;;
  }

  dimension: reg_cap_est_high {
    type: number
    sql: ${TABLE}.reg_cap_est_high ;;
    label: "high"
  }

  dimension: reg_cap_est_high_take_1000 {
    type: yesno
    sql: ${TABLE}.reg_cap_est_high_take_1000 ;;
    label: "high - 1000"
  }

  dimension: reg_cap_est_high_take_10000 {
    type: yesno
    sql: ${TABLE}.reg_cap_est_high_take_10000 ;;
  }

  dimension: reg_cap_est_high_take_5000 {
    type: yesno
    sql: ${TABLE}.reg_cap_est_high_take_5000 ;;
  }

  dimension: reg_cap_est_low {
    type: number
    sql: ${TABLE}.reg_cap_est_low ;;
    label: "low"
  }

  dimension: reg_cap_est_low_take_1000 {
    type: yesno
    sql: ${TABLE}.reg_cap_est_low_take_1000 ;;
    label: "low - 1000"
  }

  dimension: reg_cap_est_low_take_10000 {
    type: yesno
    sql: ${TABLE}.reg_cap_est_low_take_10000 ;;
  }

  dimension: reg_cap_est_low_take_5000 {
    type: yesno
    sql: ${TABLE}.reg_cap_est_low_take_5000 ;;
  }

  dimension: reg_cap_est_med {
    type: number
    sql: ${TABLE}.reg_cap_est_med ;;
    label: "med"
  }

  dimension: reg_cap_est_med_take_1000 {
    type: yesno
    sql: ${TABLE}.reg_cap_est_med_take_1000 ;;
    label: "med - 1000"
  }

  dimension: reg_cap_est_med_take_10000 {
    type: yesno
    sql: ${TABLE}.reg_cap_est_med_take_10000 ;;
  }

  dimension: reg_cap_est_med_take_5000 {
    type: yesno
    sql: ${TABLE}.reg_cap_est_med_take_5000 ;;
  }

  dimension: reg_count {
    type: number
    sql: ${TABLE}.reg_count ;;
  label: "Facilities Registered"
  }

  dimension: reg_percent_calculated {
    type: number
    value_format_name: percent_1
    sql:${reg_count}/${count_jjl_capacity} ;;
    label: "Registered %"
  }

  dimension: reg_percent {
    type: number
    sql: ${TABLE}.reg_percent ;;
    hidden: yes
  }

  dimension: traunch {
    type: number
    sql: ${TABLE}.traunch ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
    can_filter: yes
    label: "Facility Type"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
