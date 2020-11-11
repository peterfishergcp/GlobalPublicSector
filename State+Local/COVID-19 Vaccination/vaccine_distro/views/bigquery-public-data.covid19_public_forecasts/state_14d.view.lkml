view: state_14d {
  sql_table_name: `bigquery-public-data.covid19_public_forecasts.state_14d`
    ;;

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

  # dimension: new_deaths {
  #   type: number
  #   sql: ${TABLE}.new_deaths ;;
  # }
  measure: new_deaths {
    type: sum
    # sql: ${TABLE}.new_deceased ;;
  }


  # dimension: new_deaths_ground_truth {
  #   type: number
  #   sql: ${TABLE}.new_deaths_ground_truth ;;
  # }

measure: new_deaths_ground_truth {
  type: sum
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
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: ventilator_patients {
    type: number
    sql: ${TABLE}.ventilator_patients ;;
  }

  dimension: ventilator_patients_ground_truth {
    type: number
    sql: ${TABLE}.ventilator_patients_ground_truth ;;
  }

  measure: count {
    type: count
    drill_fields: [state_name]
  }
}
