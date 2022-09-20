{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 3,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 847.0, 87.0, 1168.0, 965.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 513.0, 281.0, 95.0, 22.0 ],
					"text" : "prepend interval"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-5",
					"index" : 2,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 516.0, 396.466688447563115, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 265.0, 86.0, 268.0, 22.0 ],
					"text" : "t s s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 160.76054912717052, 332.000003223781505, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 160.76054912717052, 270.000003223781505, 48.0, 22.0 ],
					"text" : "change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 160.76054912717052, 237.000003223781505, 35.0, 22.0 ],
					"text" : "/ 120"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 265.0, 181.000003223781505, 143.0, 22.0 ],
					"text" : "translate notevalues ticks"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 160.76054912717052, 181.000003223781505, 40.0, 22.0 ],
					"text" : "* 480."
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-22",
					"index" : 2,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 265.0, 27.00000322378159, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"linecount" : 54,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 896.0, 32.000003223781505, 553.0, 730.0 ],
					"text" : "\nTime Value Syntax\n\nOne of the fundamental aspects of working in Max is the notion of creating processes that progress or act over a period of time. Traditionally, time values in Max have always been expressed using milliseconds as the unit. In Max, time values for many objects (see the complete list) may also be expressed in a number of human-friendly units. There are two types of time values: fixed values \n\nTicks represent 1/480th of a quarter note. In places where only tempo-relative time values are allowed, such as the quantize attribute of the metro object, values in ticks can be specified as a single number. In places where both fixed and tempo-relative units are permissible, such as the interval attribute of a metro object, a value in ticks must be followed by ticks to be interpreted as ticks instead of milliseconds. See below for a table of ticks and note value equivalents.\nNote values are symbols that abbreviate musical note time values, for example 4n for quarter-note. They may be specified by themselves (you cannot use a note value in an expression, such as 3 * 16n). See below for a table of ticks and note value equivalents.\nBars/beats/units can be specified in two ways. Where it is necessary to use a single value, bars/beats/units can be separated by periods, for example: 2.3.240, which is 2 measures (bars), 3 beats, and 240 ticks. When it is possible to pass a list of values, bars/beats/units can be specified by separate numbers, e.g., 2 3 240. To disambiguate bars/beats/units from hours/minutes/seconds where time values can be either fixed or tempo-relative, you can add the optional symbol bbu after the list.\n\nTime Offsets and Time Intervals\n\nWith tempo-relative units, particularly bars/beats/units, you can specify a time interval or a time position. A time offset or position refers to the value of a transport, so for example, the time argument to the timepoint object is considered a position. A time interval, by contrast is a distance or an amount of time. Interval, quantization, and delay attributes of objects are generally time intervals. The bars/beats/units method of specifying time will be interpreted differently depending on context. A time of 1 1 0 as a position is 0 ticks. A time of 1 1 0 as an interval in 4/4 time is (4 * 480) + 480 ticks (2400 ticks).\n\n\n1nd - Dotted whole note - 2880 ticks \n1n - Whole note - 1920 ticks \n1nt - Whole note triplet - 1280 ticks \n2nd - Dotted half note - 1440 ticks \n2n - Half note - 960 ticks \n2nt - Half note triplet - 640 ticks \n4nd - Dotted quarter note - 720 ticks \n4n - Quarter note - 480 ticks \n4nt - Quarter note triplet - 320 ticks \n8nd - Dotted eighth note - 360 ticks \n8n - Eighth note - 240 ticks \n8nt - Eighth note triplet - 160 ticks \n16nd - Dotted sixteenth note - 180 ticks \n16n - Sixteenth note - 120 ticks \n16nt - Sixteenth note triplet - 80 ticks \n32nd - Dotted thirty-second note - 90 ticks \n32n - thirty-second note - 60 ticks \n32nt - thirty-second-note triplet - 40 ticks \n64nd - Dotted sixty-fourth note - 45 ticks \n64n - Sixty-fourth note - 30 ticks \n128n - One-hundred-twenty-eighth note - 15 ticks",
					"textcolor" : [ 0.701960784313725, 0.701960784313725, 0.701960784313725, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "(Double) Raw Ticks from plugsync~",
					"id" : "obj-56",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 160.76054912717052, 27.00000322378159, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-57",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 160.76054912717052, 396.466688447563115, 30.0, 30.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
 ]
	}

}
