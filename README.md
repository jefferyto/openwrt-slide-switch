# slide-switch

slide-switch translates slide switch position changes into normal button
presses and releases for OpenWrt devices.

## Usage

After installing slide-switch, follow the instructions in the [OpenWrt
User Guide][] to add scripts for each switch position. Both procd
scripts (in `/etc/rc.button`) and hotplug scripts (in
`/etc/hotplug.d/button`) are supported.

Each switch position has a corresponding button name in the form
`<switch name>-<switch position>`. For example, the TP-Link TL-MR3020
has a switch named *mode* with positions "3g", "wisp" and "ap"; button
names for the positions would be `mode-3g`, `mode-wisp` and `mode-ap`.
See [Supported Devices][] for a list of switch names
and positions.

slide-switch will trigger both button presses and releases. For example,
if the *mode* switch is moved from "3g" to "wisp", a release action will
be triggered for "3g" (`BUTTON=mode-3g ACTION=released`), and a press
action will be triggered for "wisp" (`BUTTON=mode-wisp ACTION=pressed`).
Note that the timeout action is not supported at this time.

On boot, slide-switch will also trigger a button press for the active
position of each switch. To disable or re-enable this behaviour, run
`slide-switch boot disable` or `slide-switch boot enable`, respectively.

[OpenWrt User Guide]: https://openwrt.org/docs/guide-user/hardware/hardware.button
[Supported Devices]: #supported-devices

## Supported Devices

| Device                         | Switch Name  | Switch Positions               | Verified           | Notes |
| ------------------------------ | :----------: | :----------------------------: | :----------------: | ----- |
| [Buffalo WZR-600DHP][]         | movie-engine | on / off                       |                    |       |
| [Buffalo WZR-600DHP][]         | router       | on / off / auto                |                    |       |
| [Buffalo WZR-HP-AG300H][]      | movie-engine | on / off                       |                    |       |
| [Buffalo WZR-HP-AG300H][]      | router       | on / off / auto                |                    |       |
| [Buffalo WZR-HP-G300NH][]      | movie-engine | on / off                       | :heavy_check_mark: |       |
| [Buffalo WZR-HP-G300NH][]      | router       | on / off / auto                | :heavy_check_mark: |       |
| [GL.iNet GL-AR150][]           | mode         | left / center / right          |                    |       |
| [GL.iNet GL-AR300M][]          | mode         | left / center / right          | :heavy_check_mark: |       |
| [GL.iNet GL-AR300M-Lite][]     | mode         | left / center / right          |                    |       |
| [GL.iNet GL-AR300M16][]        | mode         | left / center / right          | :heavy_check_mark: |       |
| [GL.iNet GL-AR750][]           | mode         | dot / clear                    | :heavy_check_mark: |       |
| [GL.iNet GL-AR750S][]          | mode         | dot / clear                    | :heavy_check_mark: |       |
| [GL.iNet GL-E750][]            | mode         | dot / clear                    | :heavy_check_mark: |       |
| [GL.iNet GL-MT1300][]          | mode         | dot / clear                    | :heavy_check_mark: |       |
| [GL.iNet GL-MT3000][]          | mode         | dot / clear                    | :heavy_check_mark: |       |
| [GL.iNet GL-MT300A][]          | mode         | left / center / right          | :heavy_check_mark: |       |
| [GL.iNet GL-MT300N v1][]       | mode         | left / center / right          |                    |       |
| [GL.iNet GL-MT300N v2][]       | mode         | left / center / right          | :heavy_check_mark: |       |
| [GL.iNet GL-MV1000][]          | mode         | dot / clear                    |                    |       |
| [HooToo HT-TM02][]             | mode         | wired / wireless               | :heavy_check_mark: |       |
| [TP-Link TL-MR3020 v1][]       | mode         | 3g / wisp / ap                 | :heavy_check_mark: |       |
| [TP-Link TL-MR3020 v3][]       | mode         | 3g / wisp / ap                 | :heavy_check_mark: |       |
| [TP-Link TL-MR3040 v2][]       | mode         | 3g / wisp / ap                 | :heavy_check_mark: |       |
| [TP-Link TL-WR810N(EU) v1.1][] | mode         | router-ap / repeater / client  | :heavy_check_mark: |       |
| [TP-Link TL-WR810N(EU) v2][]   | mode         | router-ap / repeater / client  |                    |       |
| [TP-Link TL-WR902AC v1][]      | mode         | share-eth / share-hotspot / ap | :heavy_check_mark: |       |
| [TP-Link TL-WR902AC v3][]      | mode         | share-eth / share-hotspot / ap | :heavy_check_mark: |       |

For most devices, switch data is initially collected from the OpenWrt
wiki and from OpenWrt's source code. The Verified column indicates cases
where the switch data has been tested and verified correct by users.

[Buffalo WZR-600DHP]: https://openwrt.org/toh/buffalo/wzr-600dhp
[Buffalo WZR-HP-AG300H]: https://openwrt.org/toh/buffalo/wzr-hp-ag300h
[Buffalo WZR-HP-G300NH]: https://openwrt.org/toh/buffalo/wzr-hp-g300h
[GL.iNet GL-AR150]: https://openwrt.org/toh/gl.inet/gl-ar150
[GL.iNet GL-AR300M]: https://openwrt.org/toh/gl.inet/gl-ar300m
[GL.iNet GL-AR300M-Lite]: https://openwrt.org/toh/gl.inet/gl-ar300m_lite
[GL.iNet GL-AR300M16]: https://openwrt.org/toh/gl.inet/gl-ar300m
[GL.iNet GL-AR750]: https://openwrt.org/toh/gl.inet/gl-ar750
[GL.iNet GL-AR750S]: https://openwrt.org/toh/gl.inet/gl-ar750s
[GL.iNet GL-E750]: https://openwrt.org/toh/gl.inet/gl-e750
[GL.iNet GL-MT1300]: https://openwrt.org/toh/gl.inet/gl-mt1300_v1
[GL.iNet GL-MT3000]: https://openwrt.org/toh/gl.inet/gl-mt3000
[GL.iNet GL-MT300A]: https://openwrt.org/toh/gl.inet/gl-mt300a
[GL.iNet GL-MT300N v1]: https://openwrt.org/toh/gl.inet/gl-mt300n_v1
[GL.iNet GL-MT300N v2]: https://openwrt.org/toh/gl.inet/gl-mt300n_v2
[GL.iNet GL-MV1000]: https://openwrt.org/toh/gl.inet/gl-mv1000
[HooToo HT-TM02]: https://openwrt.org/toh/hootoo/tripmate-nano
[TP-Link TL-MR3020 v1]: https://openwrt.org/toh/tp-link/tl-mr3020
[TP-Link TL-MR3020 v3]: https://openwrt.org/toh/tp-link/tl-mr3020_v3
[TP-Link TL-MR3040 v2]: https://openwrt.org/toh/tp-link/tl-mr3040
[TP-Link TL-WR810N(EU) v1.1]: https://openwrt.org/toh/tp-link/tl-wr810n
[TP-Link TL-WR810N(EU) v2]: https://openwrt.org/toh/tp-link/tl-wr810n
[TP-Link TL-WR902AC v1]: https://openwrt.org/toh/tp-link/tl-wr902ac_v1
[TP-Link TL-WR902AC v3]: https://openwrt.org/toh/tp-link/tl-wr902ac_v3

## Changelog

See [NEWS][].

### Backward-Incompatible Changes

#### 1.0.0

* GL.iNet GL-AR150,  
  GL.iNet GL-AR300M,  
  GL.iNet GL-MT300A,  
  GL.iNet GL-MT300N v1,  
  GL.iNet GL-MT300N v2:
  * Changed switch name from *switch* to *mode*
* GL.iNet GL-AR750,  
  GL.iNet GL-AR750S:
  * Changed switch name from *switch* to *mode*
  * Changed position names from "left" and "right" to "clear" and "dot",
    respectively

[NEWS]: NEWS.md

## Contributing

Beyond code for bug fixes or new features, any help to verify switch
data or add data for new devices would be greatly appreciated.

## License

Copyright (C) 2016-2019, 2022 The slide-switch authors  
<https://github.com/jefferyto/openwrt-slide-switch>

slide-switch is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
version 2 as published by the Free Software Foundation.

slide-switch is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with slide-switch.  If not, see <http://www.gnu.org/licenses/>.
