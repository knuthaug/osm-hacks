SELECT
    *
  FROM
    (SELECT
        way, prio,
        ('highway_' || (CASE WHEN substr(highway, length(highway)-3, 4) = 'link' THEN substr(highway, 0, length(highway)-4) ELSE highway END)) AS feature,
        horse, foot, bicycle, tracktype, "mtb:scale" as mtb_scale, "class:bicycle:mtb" as class_bicycle_mtb, "mtb:name" AS mtb_name,
        CASE WHEN access IN ('destination') THEN 'destination'::text WHEN access IN ('no', 'private') THEN 'no'::text ELSE NULL END AS access, construction,
        CASE WHEN oneway IN ('yes', '-1') THEN oneway ELSE NULL END AS oneway,
        CASE WHEN substr(highway, length(highway)-3, 4) = 'link' THEN 'yes' ELSE 'no' END AS link
      FROM planet_osm_line
        JOIN (VALUES
          ('highway_track',110),
          ('highway_path',100),
          ('highway_bridleway',100),
          ('highway_cycleway',100),
          ('highway_construction',10)
        ) AS ordertable (feature, prio)
          ON ('highway_' || planet_osm_line.highway) = ordertable.feature
    ) AS features
        
  ORDER BY prio
