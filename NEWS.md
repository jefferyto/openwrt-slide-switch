# News

## [1.0.0] - 2022-03-17
* **BACKWARD-INCOMPATIBLE:** Changed switch name from *switch* to
  *mode*:
  * GL.iNet GL-AR150
  * GL.iNet GL-AR300M
  * GL.iNet GL-AR750
  * GL.iNet GL-AR750S
  * GL.iNet GL-MT300A
  * GL.iNet GL-MT300N v1
  * GL.iNet GL-MT300N v2
* **BACKWARD-INCOMPATIBLE:** Changed position names from "left" and
  "right" to "clear" and "dot", respectively:
  * GL.iNet GL-AR750
  * GL.iNet GL-AR750S
* Added support for loading switch data from
  /etc/slide-switch/switch-data.json; if this file exists, it will be
  checked for switch data before the default data file
* Added support for `keys` array in switch data, in place of `labels`
  and `codes` arrays; if present, GPIO labels and key codes will be read
  from device tree information in /proc/device-tree (each element in the
  `keys` array should be a node-name under the `keys` node)
* Require user to be root for commands/actions that trigger button
  events or have other side effects
* Added logging to standard error
* Added command-line option to select logging to standard error
  (default), syslog, all (both standard error and syslog) or none
* Added command-line option to select logging verbosity
* Added command-line help message
* Removed compatibility with older (model-only) board names
* `init` command:
  * Initialize switch states only, without triggering button pressed
    events
* `update` command:
  * Require `init` command to be called beforehand
  * Accept multiple switch name and/or button arguments
  * Added command-line option to perform a forced update (trigger button
    pressed events for all switches)
* `switch` command:
  * Separate switch names with newlines instead of spaces, i.e. print
    one switch name per line
* `position` command:
  * Require exactly one switch name argument
* `clean` command:
  * Avoid removing files or directories placed in slide-switch's working
    directories by other processes
* Restored support for Buffalo WZR-HP-AG300H (requires upcoming OpenWrt
  22.0X release)
* Added support for Buffalo WZR-600DHP (requires upcoming OpenWrt 22.0X
  release)

## [0.9.7] - 2022-02-18
* Fixed support for models with spaces in their GPIO labels:
  * GL.iNet GL-AR300M
  * GL.iNet GL-AR300M-Lite
  * GL.iNet GL-AR300M16
  * TP-Link TL-WR902AC v1

## [0.9.6] - 2022-02-04
* Requires OpenWrt 21.02 or newer
* Check button values using GPIO labels instead of GPIO numbers
* Fixed support for ([#18][GH-18]):
  * GL.iNet GL-MT300N v2
  * TP-Link TL-MR3020 v3
  * TP-Link TL-WR902AC v3
* Added support for:
  * GL.iNet GL-AR300M-Lite
  * GL.iNet GL-AR300M16
  * GL.iNet GL-E750 ([#20][GH-20])
  * GL.iNet GL-MT1300
  * GL.iNet GL-MV1000
* Removed support for Buffalo WZR-HP-AG300H, as its buttons currently do
  not have GPIO labels
* Removed support for devices no longer supported by OpenWrt 21.02:
  * TP-Link TL-MR12U
  * TP-Link TL-MR13U
  * TP-Link TL-WR720N

## [0.9.5] - 2019-08-02
* Fixed state files stored in /slide-switch instead of
  /var/run/slide-switch ([#14][GH-14])
* Fixed compatibility with board names in the form "vendor,model"
  ([#14][GH-14])

## [0.9.4] - 2019-04-23
* Merged platform data to make the package architecture-independent
* Minify switch data file during installation
* Added support for TP-Link TL-MR3020 v3

## [0.9.3] - 2018-12-10
* Added support for routers with two-way switches:
  * GLI (GL.iNet) GL-AR750
  * GLI (GL.iNet) GL-AR750S
  * HooToo HT-TM02
* Added support for two-way switches in:
  * Buffalo WZR-HP-AG300H
  * Buffalo WZR-HP-G300NH

## [0.9.2] - 2018-07-18
* Added support for TP-Link TL-WR902AC v3

## [0.9.1] - 2018-01-05
* Added support for:
  * GLI (GL.iNet) GL-MT300N v2
  * TP-Link TL-WR810N v2 (unverified)
  * TP-Link TL-WR902AC v1
* Fixed ar71xx_board_name / ramips_board_name not found error
* Fixed "object" included in first-run output

## 0.9.0 - 2016-09-04
* Initial beta release

[1.0.0]: https://github.com/jefferyto/openwrt-slide-switch/compare/0.9.7...1.0.0
[0.9.7]: https://github.com/jefferyto/openwrt-slide-switch/compare/0.9.6...0.9.7
[0.9.6]: https://github.com/jefferyto/openwrt-slide-switch/compare/0.9.5...0.9.6
[0.9.5]: https://github.com/jefferyto/openwrt-slide-switch/compare/0.9.4...0.9.5
[0.9.4]: https://github.com/jefferyto/openwrt-slide-switch/compare/0.9.3...0.9.4
[0.9.3]: https://github.com/jefferyto/openwrt-slide-switch/compare/0.9.2...0.9.3
[0.9.2]: https://github.com/jefferyto/openwrt-slide-switch/compare/0.9.1...0.9.2
[0.9.1]: https://github.com/jefferyto/openwrt-slide-switch/compare/0.9.0...0.9.1

[GH-14]: https://github.com/jefferyto/openwrt-slide-switch/issues/14
[GH-18]: https://github.com/jefferyto/openwrt-slide-switch/issues/18
[GH-20]: https://github.com/jefferyto/openwrt-slide-switch/pull/20
