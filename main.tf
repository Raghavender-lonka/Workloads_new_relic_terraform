resource "newrelic_workload" "foo" {
    name = "Synethic Workload" #(Required) The workload's name.
    account_id = 3627436 #(Required) The New Relic account ID where you want to create the workload.

    entity_guids = [for id in var.guids : id] #(Optional) A list of entity GUIDs manually assigned to this workload.

    # entity_search_query {
    #     query = "name like '%Example application%'"
    # } #(Optional) A list of search queries that define a dynamic workload.

    scope_account_ids =  [3627436] #Optional A list of account IDs that will be used to get entities from.
}