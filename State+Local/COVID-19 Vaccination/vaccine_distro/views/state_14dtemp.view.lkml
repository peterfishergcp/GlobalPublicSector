view: state_14dtemp {
  sql_table_name: `slg-shared-project.vaccine_distro.state_14d`
    ;;

# set: ground_truth{
#   fields: [cumulative_confirmed_ground_truth,cumulative_deaths_ground_truth,hospitalized_patients_ground_truth,intensive_care_patients_ground_truth,new_confirmed_ground_truth,new_deaths_ground_truth,recovered_documented_ground_truth,ventilator_patients_ground_truth]
# }

  dimension: cumulative_confirmed {
    type: number
    sql: ${TABLE}.cumulative_confirmed ;;
  }

  dimension: cumulative_confirmed_ground_truth {
    type: number
    sql: ${TABLE}.cumulative_confirmed_ground_truth ;;
  }

  dimension: cumulative_deaths {
    type: number
    sql: ${TABLE}.cumulative_deaths ;;
  }

  dimension: cumulative_deaths_ground_truth {
    type: number
    sql: ${TABLE}.cumulative_deaths_ground_truth ;;
  }

  dimension_group: forecast {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.forecast_date ;;
  }

  dimension: hospitalized_patients {
    type: number
    sql: ${TABLE}.hospitalized_patients ;;
  }

  dimension: hospitalized_patients_ground_truth {
    type: number
    sql: ${TABLE}.hospitalized_patients_ground_truth ;;
  }

  dimension: intensive_care_patients {
    type: number
    sql: ${TABLE}.intensive_care_patients ;;
  }

  dimension: intensive_care_patients_ground_truth {
    type: number
    sql: ${TABLE}.intensive_care_patients_ground_truth ;;
  }

  dimension: new_confirmed {
    type: number
    sql: ${TABLE}.new_confirmed ;;
  }

  dimension: new_confirmed_ground_truth {
    type: number
    sql: ${TABLE}.new_confirmed_ground_truth ;;
  }

  dimension: new_deaths {
    type: number
    sql: ${TABLE}.new_deaths ;;
  }

  dimension: new_deaths_ground_truth {
    type: number
    sql: ${TABLE}.new_deaths_ground_truth ;;
  }

  dimension_group: prediction {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.prediction_date ;;
  }

  dimension: recovered {
    type: number
    sql: ${TABLE}.recovered ;;
  }

  dimension: recovered_documented_ground_truth {
    type: number
    sql: ${TABLE}.recovered_documented_ground_truth ;;
  }

  dimension: state_fips_code {
    type: string
    sql: ${TABLE}.state_fips_code ;;
    hidden: yes
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
    label: "State"
  }

  dimension: ventilator_patients {
    type: number
    sql: ${TABLE}.ventilator_patients ;;
  }

  dimension: ventilator_patients_ground_truth {
    type: number
    sql: ${TABLE}.ventilator_patients_ground_truth ;;
  }
measure: total_ventilator_patients_ground_truth {
  type: sum
  sql: ${ventilator_patients_ground_truth} ;;
  value_format_name: decimal_0
}
  measure: count {
    type: count
    drill_fields: [state_name]
  }
}
