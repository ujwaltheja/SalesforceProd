{
	"id": "skuidvis",
	"namespace": "skuid",
	"components": [
		{
			"id": "chartset",
			"pathsToChildComponents": [
				"charts"
			],
			"js": [
				{ "resource": "js/skuidvisCharts.js" }
			]
		},
		{
			"id": "chart",
			"pathsToActions": [
				"serieslist>series>actions"
			],
			"js": [
				{ "resource": "js/skuidvisCharts.js" }
			]
		},
		{
			"id": "geochart",
			"pathsToActions": [
				"serieslist>series>actions"
			],
			"js": [
				{ "resource": "js/lib/highmaps.js" },
				{ "resource": "js/skuidvisGeoChart.js" }
			]
		}
	],
	"js": [
		{ "resource": "js/lib/highcharts.js" },
		{ "resource": "js/skuidvisRuntime.js" }
	]
}