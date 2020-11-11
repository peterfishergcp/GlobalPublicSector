view: chain_pharmacy {
  sql_table_name: `slg-shared-project.vaccine_distro.chain_pharmacy`
    ;;

  measure: chainpharmacies {
    type: sum
    # sql: ${TABLE}.chainpharmacies ;;
    label: "Chain Pharmacies"
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
