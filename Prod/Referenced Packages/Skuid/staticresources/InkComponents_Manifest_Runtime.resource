{
	"id": "skuid",
	"requiresFeature": "INK Design System Components",
	"namespace": "skuid",
	"components": [
		{
			"id": "autocomplete"
		},
		{
			"id": "slider"
		},
		{
			"id": "tabContainer",
			"pathsToChildComponents": [
				"tabs"
			]
		},
		{
			"id": "tabSet",
			"pathsToChildComponents": [
				"tabs"
			]
		},
		{
			"id": "tabPanel",
			"pathsToActions": [
				"actions"
			],
			"pathsToChildComponents": [
				"components"
			]
		},
		{
			"id": "buttonSet",
			"pathsToChildComponents": [
				"groups"
			]
		},
		{
			"id": "buttonGroup",
			"pathsToChildComponents": [
				"buttons"
			]
		},
		{
			"id": "button",
			"pathsToActions": [
				"actions"
			]
		},
		{
			"id": "accordion"
		},
		{
			"id": "avatar",
			"pathsToDataSourceAttributes": [
				":datasource"
			]
		},
		{
			"id": "chatbotFullOverlay"
		},
		{
			"id": "badge"
		},
		{
			"id": "deck",
			"pathsToChildComponents": ["components"]
		},
		{
			"id": "icon"
		},
		{
			"id": "image",
			"pathsToDataSourceAttributes": [
				":datasource"
			]
		},
		{
			"id": "feedbackBlock"
		},
		{
			"id": "field"
		},
		{
			"id": "grid",
			"pathsToChildComponents": [
				"divisions>division>components"
			]
		},
		{
			"id": "heading"
		},
		{
			"id": "header"
		},
		{
			"id": "masthead",
			"pathsToChildComponents": [
				"divisions>division>components"
			]
		},
		{
			"id": "pageHeader"
		},
		{
			"id": "sectionHeader"
		},
		{
			"id": "inputText"
		},
		{
			"id": "inputTextArea"
		},
		{
			"id": "select"
		},
		{
			"id": "checkboxList"
		},
		{
			"id": "checkbox"
		},
		{
			"id": "radioList"
		},
		{
			"id": "list"
		},
		{
			"id": "modal"
		},
		{
			"id": "navigation"
		},
		{
			"id": "search",
			"pathsToActions": [
				"selectActions",
				"resultActions>action>actions",
				"objects>object>resultActions>action>actions"
			],
			"pathsToDataSourceAttributes": [
				"objects>object:datasource"
			]
		},
		{
			"id": "table",
			"pathsToActions": [
				"actions",
				"massActions",
				"rowActions"
			]
		},
		{
			"id": "text"
		},
		{
			"id": "toast"
		},
		{
			"id": "tooltip"
		},
		{
			"id": "buttonIndices"
		},
		{
			"id": "form",
			"pathsToChildComponents": ["sections>section>rows>row>fields"]
		},
		{
			"id": "filter"
		},
		{
			"id": "filterSet",
			"pathsToChildComponents": [
				"filters"
			]
		},
		{
			"id": "chart",
			"js": [
				{ "resource": "js/lib/highcharts.js" },
				{ "resource": "js/skuidvisRuntime.js" },
				{ "resource": "js/skuidvisCharts.js" }
			]
		},
		{
			"id": "chartSet",
			"js": [
				{ "resource": "js/lib/highcharts.js" },
				{ "resource": "js/skuidvisRuntime.js" },
				{ "resource": "js/skuidvisCharts.js" }
			]
		},
		{
			"id": "geochart",
			"folderId": "ink",
			"js": [
				{ "resource": "js/lib/highcharts.js" },
				{ "resource": "js/lib/highmaps.js" },
				{ "resource": "js/skuidvisRuntime.js" },
				{ "resource": "js/skuidvisCharts.js" },
				{ "resource": "js/skuidvisGeoChart.js" }
			]
		},
		{
			"id": "wizard",
			"pathsToChildComponents": [
				"steps>step>components"
			],
			"pathsToActions": [
				"steps>step>buttons>button>actions"
			]
		},
		{
			"id": "designSystemManager"
		},
		{
			"id": "chatter",
			"pathsToActions": [
				"actions"
			]
		}
	],
	"js": [
		{ "resource": "js/lib/moment.js" },
		{ "resource": "js/skuidRuntime.js" }
	]
}
