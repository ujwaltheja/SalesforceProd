{
	"id": "skuidcore",
	"namespace": "skuid",
	"customLabelNamespace": "skuid",
	"components": [
		{
			"id": "attachmentimage"
		},
		{
			"id": "basicfieldeditor",
			"alwaysLoad": true
		},
		{
			"id": "buttonset",
			"pathsToActions": [
				"buttons",
				"buttons>button>actions"
			]
		},
		{
			"id": "chatbotfulloverlay"
		},
		{
			"id": "custom"
		},
		{
			"id": "deck",
			"pathsToChildComponents": ["components"],
			"pathsToActions": ["interactions>interaction"],
			"customLabelDependencies": [
				"select_cards",
				"toggle_selected_rows_for_deletion",
				"item_selected",
				"items_selected"
			]
		},
		{
			"id": "file",
			"customLabelDependencies": [
				"error_invalid_file_upload_data_source",
				"error_could_not_find_upload_method"
			],
			"pathsToDataSourceAttributes": [
				":datasource"
			]
		},
		{
			"id": "filterset"
		},
		{
			"id" : "globalfeedback",
			"customLabelDependencies": [
				"cancel",
				"next",
				"global_feedback_attach_button_text",
				"global_feedback_breadcrumb_step_1",
				"global_feedback_breadcrumb_step_2",
				"global_feedback_close_button_text",
				"global_feedback_file_button_text",
				"global_feedback_file_help_text",
				"global_feedback_question_text",
				"global_feedback_submit_button_text",
				"global_feedback_success_emphasized_message",
				"global_feedback_success_secondary_message",
				"global_feedback_tab_icon",
				"global_feedback_tab_text",
				"global_feedback_type_text"
			]
		},
		{
			"id": "grid",
			"pathsToChildComponents": [
				"divisions>division>components"
			]
		},
		{
			"id": "image",
			"pathsToDataSourceAttributes": [
				":datasource"
			]
		},
		{
			"id": "includepanel"
		},
		{
			"id": "navigation",
			"customLabelDependencies": [
				"expand_collapse"
			]
		},
		{
			"id": "pagebuilder",
			"customLabelDependencies": [
				"add_drilldown",
				"building_page",
				"clone",
				"components",
				"day_scheduling_view",
				"edit_rows_action",
				"flag_for_delete_action",
				"invalid_data_source",
				"invalid_data_source_type",
				"mass_update_selected_rows",
				"models",
				"module",
				"month_view",
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
				"toggle_selected_rows_for_deletion",
				"week_view"
			]
		},
		{
			"id": "pageregion"
		},
		{
			"id": "pagetitle",
			"alwaysLoad": true,
			"pathsToActions": [
				"actions"
			],
			"customLabelDependencies": [
				"clone",
				"confirm_delete",
				"delete",
				"deleting",
				"edit_page",
				"no",
				"no_but_i_would_like_to_delete",
				"no_dont_delete_anything",
				"share",
				"yes"
			]
		},
		{
			"id": "panel",
			"pathsToChildComponents": ["components"]
		},
		{
			"id": "panelset",
			"pathsToChildComponents": [
				"panels>panel>components"
			]
		},
		{
			"id": "queue",
			"pathsToActions": [
				"actions",
				"interactions>interaction"
			]
		},
		{
			"id": "richtext"
		},
		{
			"id": "search",
			"pathsToActions": [
				"selectactions",
				"resultactions>action>actions",
				"objects>object>resultactions>action>actions"
			],
			"pathsToDataSourceAttributes": [
				"objects>object:datasource"
			]
		},
		{
			"id": "skoocal",
			"customLabelDependencies": [
				"add_a_new",
				"add_new",
				"add_this",
				"apply",
				"day_scheduling_view",
				"delete",
				"list_view",
				"loading_calendar_events",
				"month_view",
				"new_event",
				"required_fields_have_no_value",
				"row_selected",
				"rows_selected",
				"search",
				"select_event_type_to_create",
				"show",
				"view_more",
				"week_view"
			],
			"pathsToChildComponents": ["sources>eventsource>onclickpopup>components"]
		},
		{
			"id": "skootable",
			"alwaysLoad": true,
			"pathsToActions": [
				"actions",
				"massactions",
				"rowactions"
			],
			"customLabelDependencies": [
				"add_a_new",
				"add_all_visible_objects",
				"add_new",
				"add_this",
				"apply",
				"applying_sort_order_change",
				"cannot_find_object_question",
				"custom_action",
				"column",
				"edit_row",
				"export_data",
				"flag_for_deletion",
				"list_view",
				"mass_update_selected_rows",
				"picture_view",
				"required_fields_have_no_value",
				"row_selected",
				"rows_selected",
				"show",
				"summary_avg",
				"summary_max",
				"summary_med",
				"summary_min",
				"summary_sum",
				"toggle_selected_rows_for_deletion",
				"toggle_edit_mode_on_selected_rows",
				"table_settings",
				"view_more",
				"visible"
			]
		},
		{
			"id": "skuidfooter",
			"pathsToChildComponents": [
				"components"
			]
		},
		{
			"id": "skuidheader",
			"pathsToChildComponents": [
				"components"
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
		},
		{
			"id": "social"
		},
		{
			"id": "tabset",
			"pathsToChildComponents": [
				"tabs>tab>components"
			],
			"customLabelDependencies": [
				"loading"
			]
		},
		{
			"id": "template"
		},
		{
			"id": "themecomposer",
			"js": [
				{ "resource": "js/skuidcoreThemeList.js" },
				{ "resource": "js/skuidcoreThemeComposer.js" }
			],
			"css": [
				{ "resource": "css/themeBuilder", "path": "style.css" }
			]
		},
		{
			"id": "themelist",
			"js": [
				{ "resource": "js/skuidcoreThemeList.js" }
			]
		},
		{
			"id": "wizard",
			"pathsToChildComponents": ["steps>step>components"],
			"pathsToActions": ["steps>step>actions"]
		},
		{
			"id": "wrapper",
			"pathsToChildComponents": [
				"components"
			],
			"pathsToDataSourceAttributes": [
				"styles>styleitem:datasource"
			]
		}
	],
	"js": [
		{ "resource": "js/skuidcoreRuntime.js" }
	]
}