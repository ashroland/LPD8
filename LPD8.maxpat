{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 41.0, 84.0, 1068.0, 699.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 44.0, 85.0, 107.0, 22.0 ],
					"text" : "join 2 @triggers -1"
				}

			}
, 			{
				"box" : 				{
					"comment" : "List of all LPD8 statuses",
					"id" : "obj-4",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 254.0, 231.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 254.0, 179.0, 107.0, 22.0 ],
					"text" : "join 2 @triggers -1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 44.0, 40.0, 68.0, 22.0 ],
					"text" : "LPD8.pads"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 189.378960233417956, 40.0, 74.0, 22.0 ],
					"text" : "LPD8.knobs"
				}

			}
, 			{
				"box" : 				{
					"comment" : "List of knob values (0-127)",
					"id" : "obj-212",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 189.378960233417956, 231.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "List of LPD statuses and velocities (S1, V1, S2, V2...)",
					"id" : "obj-210",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 44.0, 231.0, 30.0, 30.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-212", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-210", 0 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1::obj-43" : [ "number[2]", "number[2]", 0 ],
			"obj-1::obj-13" : [ "number[7]", "number[2]", 0 ],
			"obj-1::obj-12" : [ "number[5]", "number[3]", 0 ],
			"obj-1::obj-45" : [ "number[3]", "number[3]", 0 ],
			"obj-1::obj-14" : [ "number[8]", "number[1]", 0 ],
			"obj-1::obj-41" : [ "number[1]", "number[1]", 0 ],
			"obj-1::obj-15" : [ "number[6]", "number", 0 ],
			"obj-1::obj-39" : [ "number", "number", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"parameter_map" : 		{
			"midi" : 			{
				"number" : 				{
					"srcname" : "9.ctrl.7.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"number[1]" : 				{
					"srcname" : "10.ctrl.7.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"number[2]" : 				{
					"srcname" : "11.ctrl.7.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"number[3]" : 				{
					"srcname" : "12.ctrl.7.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"number[4]" : 				{
					"srcname" : "13.ctrl.7.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"number[5]" : 				{
					"srcname" : "14.ctrl.7.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"number[6]" : 				{
					"srcname" : "15.ctrl.7.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"number[7]" : 				{
					"srcname" : "16.ctrl.7.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "LPD8.knobs.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LPD8.knobs.K1.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LPD8.knobs.K2.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LPD8.knobs.K3.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LPD8.knobs.K4.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LPD8.knobs.K5.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LPD8.knobs.K6.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LPD8.knobs.K7.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LPD8.knobs.K8.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LPD8.pads.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LPD8.pads.P2.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LPD8.pads.P3.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LPD8.pads.P4.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LPD8.pads.P5.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LPD8.pads.P6.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LPD8.pads.P7.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LPD8.pads.P8.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LPD8.pads.P1.maxpat",
				"bootpath" : "~/Dropbox/projects/max_8/LPD8",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
