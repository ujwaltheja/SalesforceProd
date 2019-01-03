{
	"id": "skuidmobilecore",
	"namespace": "skuid",
	"platform": "salesforce",
	"customLabelNamespace": "skuid",
	"components": [
		{
			"id": "skuidmobile",
			"pathsToChildComponents": [
				"mobilepanels>mobilepanel>components",
				"mobilenavs>mobilenav>components"
			]
		},
		{
			"id": "mobiledeck",
			"pathsToChildComponents": [
				"components"
			]
		},
		{
			"id": "mobilegrid",
			"pathsToChildComponents": [
				"divisions"
			]
		},
		{ "id": "mobilebutton" },
		{ "id": "template" },
		{ "id": "mobiletitle" },
		{ "id": "mobileinfo" },
		{ "id": "mobilefield" },
		{
			"id": "division",
			"pathsToChildComponents": [
				"components"
			]
		},
		{
			"id": "mobilewrapper",
			"pathsToChildComponents": [
				"components"
			]
		},
		{
			"id": "mobileimage",
			"pathsToDataSourceAttributes": [":datasource"]
		},
		{ "id": "custom" },
		{
			"id": "file",
			"customLabelDependencies": [
				"error_invalid_file_upload_data_source",
				"error_could_not_find_upload_method"
			],
			"pathsToDataSourceAttributes": [":datasource"]
	    },
		{
			"id": "mobilepagebuilder",
			"customLabelDependencies": [
				"add_drilldown",
				"building_page",
				"clone",
				"components",
				"edit_rows_action",
				"file_resource",
				"flag_for_delete_action",
				"invalid_data_source",
				"invalid_data_source_type",
				"models",
				"module",
				"no_module",
				"none_option_text",
				"page_regions",
				"preview",
				"properties",
				"pb_no_properties_renderer",
				"pb_no_component_renderer",
				"remove",
				"resources",
				"toggle_edit_mode_on_selected_rows",
				"toggle_selected_rows_for_deletion"
			]
		},
		{
			"id": "skuidpage",
			"pathsToChildComponents": [
				"components",
				"pageregioncontents>pageregioncontent>components"
			],
			"pathsToActions": [
				"resources>actionsequences>actionsequence>actions",
				"interactions>interaction"
			],
			"customLabelDependencies": [
				"action",
				"actions",
				"after_this",
				"all_records_exported_to_csv",
				"all_time",
				"all_values",
				"am_pm_markers",
				"applying_filter",
				"apply",
				"before_this",
				"cancel",
				"cancelled",
				"check_all",
				"connected",
				"currently_offline",
				"day_names_long",
				"day_names_min",
				"day_names_short",
				"done",
				"edit_page",
				"end_date",
				"enter_keywords",
				"error",
				"error_performing_requested_search",
				"filter",
				"filter_could_not_be_applied",
				"first",
				"greater_than",
				"last",
				"less_than",
				"loading",
				"load_more",
				"month_names_long",
				"month_names_short",
				"next",
				"no_objects_to_display",
				"none_selected",
				"number_selected",
				"objects_per_page",
				"pagination_limit_reached",
				"previous",
				"reconnecting",
				"required_fields_have_no_value",
				"retrieving_data_for_export",
				"retrieving_records_a_to_b",
				"save",
				"save_anyway",
				"saved",
				"saving",
				"saving_offline_changes",
				"select",
				"select_option_none",
				"search",
				"searching",
				"showing_rows",
				"skuid_page_problems",
				"start",
				"start_date",
				"uncheck_all",
				"unsaved_changes_warning",
				"upload",
				"uploading",
				"upload_successful",
				"view"
			]
		}
	],
	"folders": [],
	"js": [
		{ "resource": "js/skuidmobilecoreRuntime.js" }
	]
}