{
	"title": "Disk usage in percent",
	"graph_args": "--upper-limit 100 -l 0",
	"vlabel": "%",
	"scale": "no",
	"category": "disk",
	"warning": 92,
	"critical": 98,
	"values": 
		[
		 "_dev_mapper_vg_root": 
		 {
			 "label": "/",
			 "current": 100,
		 },
		 "_dev_mapper_vg_home": 
		 {
			 "label": "/home",
			 "warning": 99,
			 "critical": 98,
			 "current": 100,
		 }
		 ]
}
