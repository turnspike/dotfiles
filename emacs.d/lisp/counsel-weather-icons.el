(defun counsel-weather-icons--propertize (glyph)
  (propertize glyph
              'face '(:family "weather icons")))

(defun counsel-weather-icons--construct-candidates ()
  (mapcar (lambda (fontawesome)
            (cons
             (format "%06X  %-30s\t%s"
                     ;; (substring (cdr fontawesome) 1)
                     (string-to-char (cdr fontawesome))
                     (car fontawesome)
                     (counsel-weather-icons--propertize
                      (cdr fontawesome))
                     )
             (cdr fontawesome)))
          counsel-weather-icons-alist))

(defun counsel-weather-icons ()
  (interactive)
  (ivy-read "[Weather Icons] "
            (counsel-weather-icons--construct-candidates)
            :action (lambda (font)
                      (insert (cdr font)))))

(defvar counsel-weather-icons-alist
  '(("wi-day-sunny" . "\x00f00d")
    ("wi-day-cloudy" . "\x00f002")
    ("wi-day-cloudy-gusts" . "\x00f000")
    ("wi-day-cloudy-windy" . "\x00f001")
    ("wi-day-fog" . "\x00f003")
    ("wi-day-hail" . "\x00f004")
    ("wi-day-haze" . "\x00f0b6")
    ("wi-day-lightning" . "\x00f005")
    ("wi-day-rain" . "\x00f008")
    ("wi-day-rain-mix" . "\x00f006")
    ("wi-day-rain-wind" . "\x00f007")
    ("wi-day-showers" . "\x00f009")
    ("wi-day-sleet" . "\x00f0b2")
    ("wi-day-sleet-storm" . "\x00f068")
    ("wi-day-snow" . "\x00f00a")
    ("wi-day-snow-thunderstorm" . "\x00f06b")
    ("wi-day-snow-wind" . "\x00f065")
    ("wi-day-sprinkle" . "\x00f00b")
    ("wi-day-storm-showers" . "\x00f00e")
    ("wi-day-sunny-overcast" . "\x00f00c")
    ("wi-day-thunderstorm" . "\x00f010")
    ("wi-day-windy" . "\x00f085")
    ("wi-solar-eclipse" . "\x00f06e")
    ("wi-hot" . "\x00f072")
    ("wi-day-cloudy-high" . "\x00f07d")
    ("wi-day-light-wind" . "\x00f0c4")
    ("wi-night-clear" . "\x00f02e")
    ("wi-night-alt-cloudy" . "\x00f086")
    ("wi-night-alt-cloudy-gusts" . "\x00f022")
    ("wi-night-alt-cloudy-windy" . "\x00f023")
    ("wi-night-alt-hail" . "\x00f024")
    ("wi-night-alt-lightning" . "\x00f025")
    ("wi-night-alt-rain" . "\x00f028")
    ("wi-night-alt-rain-mix" . "\x00f026")
    ("wi-night-alt-rain-wind" . "\x00f027")
    ("wi-night-alt-showers" . "\x00f029")
    ("wi-night-alt-sleet" . "\x00f0b4")
    ("wi-night-alt-sleet-storm" . "\x00f06a")
    ("wi-night-alt-snow" . "\x00f02a")
    ("wi-night-alt-snow-thunderstorm" . "\x00f06d")
    ("wi-night-alt-snow-wind" . "\x00f067")
    ("wi-night-alt-sprinkle" . "\x00f02b")
    ("wi-night-alt-storm-showers" . "\x00f02c")
    ("wi-night-alt-thunderstorm" . "\x00f02d")
    ("wi-night-cloudy" . "\x00f031")
    ("wi-night-cloudy-gusts" . "\x00f02f")
    ("wi-night-cloudy-windy" . "\x00f030")
    ("wi-night-fog" . "\x00f04a")
    ("wi-night-hail" . "\x00f032")
    ("wi-night-lightning" . "\x00f033")
    ("wi-night-partly-cloudy" . "\x00f083")
    ("wi-night-rain" . "\x00f036")
    ("wi-night-rain-mix" . "\x00f034")
    ("wi-night-rain-wind" . "\x00f035")
    ("wi-night-showers" . "\x00f037")
    ("wi-night-sleet" . "\x00f0b3")
    ("wi-night-sleet-storm" . "\x00f069")
    ("wi-night-snow" . "\x00f038")
    ("wi-night-snow-thunderstorm" . "\x00f06c")
    ("wi-night-snow-wind" . "\x00f066")
    ("wi-night-sprinkle" . "\x00f039")
    ("wi-night-storm-showers" . "\x00f03a")
    ("wi-night-thunderstorm" . "\x00f03b")
    ("wi-lunar-eclipse" . "\x00f070")
    ("wi-stars" . "\x00f077")
    ("wi-storm-showers" . "\x00f01d")
    ("wi-thunderstorm" . "\x00f01e")
    ("wi-night-alt-cloudy-high" . "\x00f07e")
    ("wi-night-cloudy-high" . "\x00f080")
    ("wi-night-alt-partly-cloudy" . "\x00f081")
    ("wi-cloud" . "\x00f041")
    ("wi-cloudy" . "\x00f013")
    ("wi-cloudy-gusts" . "\x00f011")
    ("wi-cloudy-windy" . "\x00f012")
    ("wi-fog" . "\x00f014")
    ("wi-hail" . "\x00f015")
    ("wi-rain" . "\x00f019")
    ("wi-rain-mix" . "\x00f017")
    ("wi-rain-wind" . "\x00f018")
    ("wi-showers" . "\x00f01a")
    ("wi-sleet" . "\x00f0b5")
    ("wi-snow" . "\x00f01b")
    ("wi-sprinkle" . "\x00f01c")
    ("wi-storm-showers" . "\x00f01d")
    ("wi-thunderstorm" . "\x00f01e")
    ("wi-snow-wind" . "\x00f064")
    ("wi-snow" . "\x00f01b")
    ("wi-smog" . "\x00f074")
    ("wi-smoke" . "\x00f062")
    ("wi-lightning" . "\x00f016")
    ("wi-raindrops" . "\x00f04e")
    ("wi-raindrop" . "\x00f078")
    ("wi-dust" . "\x00f063")
    ("wi-snowflake-cold" . "\x00f076")
    ("wi-windy" . "\x00f021")
    ("wi-strong-wind" . "\x00f050")
    ("wi-sandstorm" . "\x00f082")
    ("wi-earthquake" . "\x00f0c6")
    ("wi-fire" . "\x00f0c7")
    ("wi-flood" . "\x00f07c")
    ("wi-meteor" . "\x00f071")
    ("wi-tsunami" . "\x00f0c5")
    ("wi-volcano" . "\x00f0c8")
    ("wi-hurricane" . "\x00f073")
    ("wi-tornado" . "\x00f056")
    ("wi-small-craft-advisory" . "\x00f0cc")
    ("wi-gale-warning" . "\x00f0cd")
    ("wi-storm-warning" . "\x00f0ce")
    ("wi-hurricane-warning" . "\x00f0cf")
    ("wi-wind-direction" . "\x00f0b1")
    ("wi-alien" . "\x00f075")
    ("wi-celsius" . "\x00f03c")
    ("wi-fahrenheit" . "\x00f045")
    ("wi-degrees" . "\x00f042")
    ("wi-thermometer" . "\x00f055")
    ("wi-thermometer-exterior" . "\x00f053")
    ("wi-thermometer-internal" . "\x00f054")
    ("wi-cloud-down" . "\x00f03d")
    ("wi-cloud-up" . "\x00f040")
    ("wi-cloud-refresh" . "\x00f03e")
    ("wi-horizon" . "\x00f047")
    ("wi-horizon-alt" . "\x00f046")
    ("wi-sunrise" . "\x00f051")
    ("wi-sunset" . "\x00f052")
    ("wi-moonrise" . "\x00f0c9")
    ("wi-moonset" . "\x00f0ca")
    ("wi-refresh" . "\x00f04c")
    ("wi-refresh-alt" . "\x00f04b")
    ("wi-umbrella" . "\x00f084")
    ("wi-barometer" . "\x00f079")
    ("wi-humidity" . "\x00f07a")
    ("wi-na" . "\x00f07b")
    ("wi-train" . "\x00f0cb")
    ("wi-moon-new" . "\x00f095")
    ("wi-moon-waxing-crescent-1" . "\x00f096")
    ("wi-moon-waxing-crescent-2" . "\x00f097")
    ("wi-moon-waxing-crescent-3" . "\x00f098")
    ("wi-moon-waxing-crescent-4" . "\x00f099")
    ("wi-moon-waxing-crescent-5" . "\x00f09a")
    ("wi-moon-waxing-crescent-6" . "\x00f09b")
    ("wi-moon-first-quarter" . "\x00f09c")
    ("wi-moon-waxing-gibbous-1" . "\x00f09d")
    ("wi-moon-waxing-gibbous-2" . "\x00f09e")
    ("wi-moon-waxing-gibbous-3" . "\x00f09f")
    ("wi-moon-waxing-gibbous-4" . "\x00f0a0")
    ("wi-moon-waxing-gibbous-5" . "\x00f0a1")
    ("wi-moon-waxing-gibbous-6" . "\x00f0a2")
    ("wi-moon-full" . "\x00f0a3")
    ("wi-moon-waning-gibbous-1" . "\x00f0a4")
    ("wi-moon-waning-gibbous-2" . "\x00f0a5")
    ("wi-moon-waning-gibbous-3" . "\x00f0a6")
    ("wi-moon-waning-gibbous-4" . "\x00f0a7")
    ("wi-moon-waning-gibbous-5" . "\x00f0a8")
    ("wi-moon-waning-gibbous-6" . "\x00f0a9")
    ("wi-moon-third-quarter" . "\x00f0aa")
    ("wi-moon-waning-crescent-1" . "\x00f0ab")
    ("wi-moon-waning-crescent-2" . "\x00f0ac")
    ("wi-moon-waning-crescent-3" . "\x00f0ad")
    ("wi-moon-waning-crescent-4" . "\x00f0ae")
    ("wi-moon-waning-crescent-5" . "\x00f0af")
    ("wi-moon-waning-crescent-6" . "\x00f0b0")
    ("wi-moon-alt-new" . "\x00f0eb")
    ("wi-moon-alt-waxing-crescent-1" . "\x00f0d0")
    ("wi-moon-alt-waxing-crescent-2" . "\x00f0d1")
    ("wi-moon-alt-waxing-crescent-3" . "\x00f0d2")
    ("wi-moon-alt-waxing-crescent-4" . "\x00f0d3")
    ("wi-moon-alt-waxing-crescent-5" . "\x00f0d4")
    ("wi-moon-alt-waxing-crescent-6" . "\x00f0d5")
    ("wi-moon-alt-first-quarter" . "\x00f0d6")
    ("wi-moon-alt-waxing-gibbous-1" . "\x00f0d7")
    ("wi-moon-alt-waxing-gibbous-2" . "\x00f0d8")
    ("wi-moon-alt-waxing-gibbous-3" . "\x00f0d9")
    ("wi-moon-alt-waxing-gibbous-4" . "\x00f0da")
    ("wi-moon-alt-waxing-gibbous-5" . "\x00f0db")
    ("wi-moon-alt-waxing-gibbous-6" . "\x00f0dc")
    ("wi-moon-alt-full" . "\x00f0dd")
    ("wi-moon-alt-waning-gibbous-1" . "\x00f0de")
    ("wi-moon-alt-waning-gibbous-2" . "\x00f0df")
    ("wi-moon-alt-waning-gibbous-3" . "\x00f0e0")
    ("wi-moon-alt-waning-gibbous-4" . "\x00f0e1")
    ("wi-moon-alt-waning-gibbous-5" . "\x00f0e2")
    ("wi-moon-alt-waning-gibbous-6" . "\x00f0e3")
    ("wi-moon-alt-third-quarter" . "\x00f0e4")
    ("wi-moon-alt-waning-crescent-1" . "\x00f0e5")
    ("wi-moon-alt-waning-crescent-2" . "\x00f0e6")
    ("wi-moon-alt-waning-crescent-3" . "\x00f0e7")
    ("wi-moon-alt-waning-crescent-4" . "\x00f0e8")
    ("wi-moon-alt-waning-crescent-5" . "\x00f0e9")
    ("wi-moon-alt-waning-crescent-6" . "\x00f0ea")
    ("wi-time-1" . "\x00f08a")
    ("wi-time-2" . "\x00f08b")
    ("wi-time-3" . "\x00f08c")
    ("wi-time-4" . "\x00f08d")
    ("wi-time-5" . "\x00f08e")
    ("wi-time-6" . "\x00f08f")
    ("wi-time-7" . "\x00f090")
    ("wi-time-8" . "\x00f091")
    ("wi-time-9" . "\x00f092")
    ("wi-time-10" . "\x00f093")
    ("wi-time-11" . "\x00f094")
    ("wi-time-12" . "\x00f089")
    ("wi-direction-up" . "\x00f058")
    ("wi-direction-up-right" . "\x00f057")
    ("wi-direction-right" . "\x00f04d")
    ("wi-direction-down-right" . "\x00f088")
    ("wi-direction-down" . "\x00f044")
    ("wi-direction-down-left" . "\x00f043")
    ("wi-direction-left" . "\x00f048")
    ("wi-direction-up-left" . "\x00f087")
    ("towards-0-deg" . "\x00f0b1")
    ("towards-23-deg" . "\x00f0b1")
    ("towards-45-deg" . "\x00f0b1")
    ("towards-68-deg" . "\x00f0b1")
    ("towards-90-deg" . "\x00f0b1")
    ("towards-113-deg" . "\x00f0b1")
    ("towards-135-deg" . "\x00f0b1")
    ("towards-158-deg" . "\x00f0b1")
    ("towards-180-deg" . "\x00f0b1")
    ("towards-203-deg" . "\x00f0b1")
    ("towards-225-deg" . "\x00f0b1")
    ("towards-248-deg" . "\x00f0b1")
    ("towards-270-deg" . "\x00f0b1")
    ("towards-293-deg" . "\x00f0b1")
    ("towards-313-deg" . "\x00f0b1")
    ("towards-336-deg" . "\x00f0b1")
    ("from-180-deg" . "\x00f0b1")
    ("from-203-deg" . "\x00f0b1")
    ("from-225-deg" . "\x00f0b1")
    ("from-248-deg" . "\x00f0b1")
    ("from-270-deg" . "\x00f0b1")
    ("from-293-deg" . "\x00f0b1")
    ("from-313-deg" . "\x00f0b1")
    ("from-336-deg" . "\x00f0b1")
    ("from-0-deg" . "\x00f0b1")
    ("from-23-deg" . "\x00f0b1")
    ("from-45-deg" . "\x00f0b1")
    ("from-68-deg" . "\x00f0b1")
    ("from-90-deg" . "\x00f0b1")
    ("from-113-deg" . "\x00f0b1")
    ("from-135-deg" . "\x00f0b1")
    ("from-158-deg" . "\x00f0b1")
    ("wi-towards-n" . "\x00f0b1")
    ("wi-towards-nne" . "\x00f0b1")
    ("wi-towards-ne" . "\x00f0b1")
    ("wi-towards-ene" . "\x00f0b1")
    ("wi-towards-e" . "\x00f0b1")
    ("wi-towards-ese" . "\x00f0b1")
    ("wi-towards-se" . "\x00f0b1")
    ("wi-towards-sse" . "\x00f0b1")
    ("wi-towards-s" . "\x00f0b1")
    ("wi-towards-ssw" . "\x00f0b1")
    ("wi-towards-sw" . "\x00f0b1")
    ("wi-towards-wsw" . "\x00f0b1")
    ("wi-towards-w" . "\x00f0b1")
    ("wi-towards-wnw" . "\x00f0b1")
    ("wi-towards-nw" . "\x00f0b1")
    ("wi-towards-nnw" . "\x00f0b1")
    ("wi-from-n" . "\x00f0b1")
    ("wi-from-nne" . "\x00f0b1")
    ("wi-from-ne" . "\x00f0b1")
    ("wi-from-ene" . "\x00f0b1")
    ("wi-from-e" . "\x00f0b1")
    ("wi-from-ese" . "\x00f0b1")
    ("wi-from-se" . "\x00f0b1")
    ("wi-from-sse" . "\x00f0b1")
    ("wi-from-s" . "\x00f0b1")
    ("wi-from-ssw" . "\x00f0b1")
    ("wi-from-sw" . "\x00f0b1")
    ("wi-from-wsw" . "\x00f0b1")
    ("wi-from-w" . "\x00f0b1")
    ("wi-from-wnw" . "\x00f0b1")
    ("wi-from-nw" . "\x00f0b1")
    ("wi-from-nnw" . "\x00f0b1")
    ("wi-wind-beaufort-0" . "\x00f0b7")
    ("wi-wind-beaufort-1" . "\x00f0b8")
    ("wi-wind-beaufort-2" . "\x00f0b9")
    ("wi-wind-beaufort-3" . "\x00f0ba")
    ("wi-wind-beaufort-4" . "\x00f0bb")
    ("wi-wind-beaufort-5" . "\x00f0bc")
    ("wi-wind-beaufort-6" . "\x00f0bd")
    ("wi-wind-beaufort-7" . "\x00f0be")
    ("wi-wind-beaufort-8" . "\x00f0bf")
    ("wi-wind-beaufort-9" . "\x00f0c0")
    ("wi-wind-beaufort-10" . "\x00f0c1")
    ("wi-wind-beaufort-11" . "\x00f0c2")
    ("wi-wind-beaufort-12" . "\x00f0c3")))
