
## TIFF-HUL-1

### Message
> Premature EOF

### Details
Needs review

* Type: TiffException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_1&type=code)
* Examples: Needed

### Impact
The TIFF may be truncated or incomplete.

### Remediation
Needs review


## TIFF-HUL-2

### Message
> Tag `<tag-number>` out of sequence

### Details
Needs review

* Type: ErrorMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_2&type=code)
* Examples: [1](http://www.rawsamples.ch/raws/sony/a350/RAW_SONY_A350.ARW)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-3

### Message
> Unknown data type

### Details
Needs review

* Type: ErrorMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_3&type=code)
* Examples: [1](https://www.rawsamples.ch/raws/nikon/d60/RAW_NIKON_D60.NEF)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-4

### Message
> Value offset not word aligned: `<word-aligned-offset-value>`

### Details
TIFF 6.0 Specification, page 15: value offsets are "expected" to point to values which begin on word boundaries. Page 30: "Rows must begin on byte boundaries."

Storing data at word and byte boundaries allows CPUs to more efficiently read and process the data. When it is unaligned, CPUs can require additional attempts at reading the data.

When the parameter byteoffset=true is set in [Link to the jhove configuration byteoffset](https://jhove.openpreservation.org/modules/tiff/), this error is ignored and becomes an InfoMessage. The status also becomes "Well-Formed and valid".

* Type: ErrorMessage or InfoMessage ([configurable](https://jhove.openpreservation.org/modules/tiff/))
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_4&type=code)
* Examples: [1](https://www.rawsamples.ch/raws/samsung/RAW_SAMSUNG_%20WB2000%20.SRW)

### Impact
Minor. Most viewers don't care and will happily display files despite this error. But of course, it still violates the TIFF specification. Further more, systems may suffer a performance penalty while reading or processing the TIFF. The penalty will depend on the architecture of the individual system, which data in the TIFF is unaligned, and how much of it there is.

### Remediation
Options:

* Add pad bytes and adapt pointers where necessary, either manually in a hex editor (tedious and *very* error-prone) or with a script.
* Write any metadata with [ExifTool](https://exiftool.org/) (either "really" or using some dummy operation like copying a tag to itself: `exiftool '-XResolution<XResolution' a.tif`); this will silently fix this error.


## TIFF-HUL-5

### Message
> Read error

### Details
Needs review

* Type: IOException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_5&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-6

### Message
> Count mismatch for tag \<tag>; expecting \<minCount>, saw \<count>

### Details
Needs review

* Type: TiffException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_6&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-7

### Message
> Type mismatch for tag \<tag>; expecting \<expected>, saw \<type>

### Details
Needs review

* Type: TiffException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_7&type=code)
* Examples: [1](https://www.rawsamples.ch/raws/nikon/RAW_NIKON_COOLPIX_P7100.NRW), [2](https://drive.google.com/open?id=0Bxn2YxzZ-3xCMEFlUmdnWVlSNWs)

### Impact
It depends, but at least medium.

Each TIFF tag has a type (like BYTE, ASCII, SHORT, ...) that determines how its content should be interpreted. Generally, if the type of a tag is set to the wrong value its content cannot be interpreted correctly meaning that a viewer will read nonsense from the tag.    Depending on the significance of a tag this may or may not prevent the file from being displayed.

However, since the types of the common TIFF tags are well-known from the respective specifications ([TIFF](https://www.adobe.io/content/dam/udp/en/open/standards/tiff/TIFF6.pdf) of course, but also other specifications like [XMP](https://www.adobe.com/devnet/xmp.html))  some viewers might just (silently) ignore wrong types in a TIFF file and use the correct types from the specifications instead, thus being able to display files despite this error. But obviously, this is nothing one should rely on in the long run ...

### Remediation
Options:

* In the affected IFD entry, set the type to the correct value, if necessary adapt the count value (because values of different types may differ in size), and watch out for pad bytes. This can be done in a hex editor (tedious and *very* error-prone) or with a script     (slightly less tedious and error-prone).
* Copy the affected tag to itself with [ExifTool](https://exiftool.org/) (`exiftool '-XResolution<XResolution' a.tif`); in many cases this will set the correct type. (But not in all cases: some tags are not writable by ExifTool.)


## TIFF-HUL-8

### Message
> Type mismatch for tag \<tag>; expecting \<type1> or ,\<type2>, saw \<type>

### Details
Needs review

* Type: TiffException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_8&type=code)
* Examples: Needed

### Impact
Same as [TIFF-HUL-7](https://github.com/openpreserve/jhove/wiki/TIFF-hul-Messages#tiff-hul-7).

### Remediation
Same as [TIFF-HUL-7](https://github.com/openpreserve/jhove/wiki/TIFF-hul-Messages#tiff-hul-7).


## TIFF-HUL-9

### Message
> Invalid GeoKeyDirectory tag

### Details
Needs review

* Type: TiffException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_9&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-10

### Message
> GeoKey \<key> out of sequence

### Details
Needs review

* Type: TiffException 
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_10&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-11

### Message
> Undocumented TIFF tag ShadowScale (50739)

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_11&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-12

### Message
> Unknown TIFF IFD tag: \<tag>

### Details
An IFD tag of the given type was found but ignored because the module is currently unaware of how to interpret the tag's data.

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_12&type=code)
* Examples: [1](http://www.rawsamples.ch/raws/sony/a350/RAW_SONY_A350.ARW)

### Impact
The module is unable to inspect the contents of the IFD tag.

### Remediation
To request support for an unrecognized IFD tag, please report it to the project.


## TIFF-HUL-13

### Message
> Read error for tag \<tag>

### Details
Needs review

* Type: IOException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_13&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-14

### Message
> Invalid or ill-formed XMP metadata

### Details
Needs review

* Type: TiffException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_14&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-15

### Message
> Unknown Exif Interoperability IFD tag

### Details
Needs review

* Type: ErrorMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_15&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-16

### Message
> Read error for tag \<tag>

### Details
Needs review

* Type: IOException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_16&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-17

### Message
> Unknown GPSInfo IFD tag

### Details
Needs review

* Type: ErrorMessage 
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_17&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-18

### Message
> Read error for tag \<tag>

### Details
Needs review

* Type: IOException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_18&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-19

### Message
> Read error for tag \<tag>

### Details
Needs review

* Type: IOException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_19&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-20

### Message
> No TIFF header: \<char0> \<char1>

### Details
Needs review

* Type: TiffException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_20&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-21

### Message
> No TIFF magic number: \<magic>

### Details
The header is 8 bytes long, the magic bytes contain of the number 42 and the description of the byte order that serves to identify the format because of internal signatures. Plus, there is an offset of the first IDF (Image File Directory).

* Type: TiffException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_21&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-22

### Message
> No TIFF header: \<char0> \<char1>

### Details
Needs review

* Type: TiffException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_22&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-23

### Message
> No TIFF magic number: \<magic>

### Details
Needs review

* Type: TiffException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_23&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-24

### Message
> Strips and tiles defined together

### Details
TIFF 6.0 Specification, p. 103, chapter "Strips and tiles".

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_24&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-25

### Message
> Neither strips nor tiles defined

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_25&type=code)
* Examples: [1](http://www.rawsamples.ch/raws/sony/a350/RAW_SONY_A350.ARW)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-26

### Message
> StripOffsets not defined

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_26&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-27

### Message
> StripByteCounts not defined

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_27&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-28

### Message
> StripOffsets inconsistent with StripByteCounts: \<len> != \<stripByteCounts.length>

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_28&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-29

### Message
> Invalid strip offset

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_29&type=code)
* Examples: [1](http://www.rawsamples.ch/raws/hasselblad/RAW_HASSELBLAD_IXPRESS_CF132.3FR)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-30

### Message
> TileWidth not defined

### Details
TIFF 6.0 Specification, p. 109: datatype "short", has to be defined with a multiple of 8.

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_30&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-31

### Message
> TileLength not defined

### Details
TIFF 6.0 Specification, p. 109: datatype "short", has to be defined with a multiple of 8.

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_31&type=code)
* Examples: [1](http://www.rawsamples.ch/raws/leaf/RAW_APTUS_75.MOS)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-32

### Message
> TileOffsets not defined

### Details
TIFF 6.0 Specification, p. 109, data type Long, length number of tiles.

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_32&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-33

### Message
> TileByteCounts not defined

### Details
TIFF 6.0 Specification, p. 109, data type Long, length number of tiles.

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_33&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-34

### Message
> TileWidth not a multiple of 16: \<tileWidth>

### Details
TileWidth must be a multiple of 16. This restriction improves performance in some graphics environments and enhances compatibility with compression schemes such as JPEG. TIFF 6.0 Specification, p. 67.

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_34&type=code)
* Examples: [1](http://www.rawsamples.ch/raws/leaf/RAW_APTUS_75.MOS)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-35

### Message
> TileLength not a multiple of 16: \<tileLength>

### Details
TileLength must be a multiple of 16 for compatibility with compression schemes such as JPEG. TIFF 6.0 Specification, p. 68.

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_35&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-36

### Message
> Insufficient values for TileOffsets: \<tileOffsets.length> \< \<spp\_tpi>

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_36&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-37

### Message
> Insufficient values for TileByteCountts: \<tileByteCounts.length> \< \<spp\_tpi>

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_37&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-38

### Message
> Insufficient values for TileOffsets: \<tileOffsets.length> \< \<tilesPerImage>

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_38&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-39

### Message
> Insufficient values for TileByteCounts: \<tileByteCounts.length> \< \<tilesPerImage>

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_39&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-40

### Message
> PhotometricInterpretation and NewSubfileType must agree on transparency mask

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_40&type=code)
* Examples: [1](http://www.rawsamples.ch/raws/sony/a350/RAW_SONY_A350.ARW)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-41

### Message
> For transparency mask BitsPerSample must be 1

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_41&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-42

### Message
> For PhotometricInterpretation, SamplesPerPixel must be >= 1, equals \<samplesPerPixel>

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_42&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-43

### Message
> For PhotometricInterpretation, SamplesPerPixel must be >= 3, equals \<samplesPerPixel>

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_43&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-44

### Message
> ColorMap not defined for palette-color

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_44&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-45

### Message
> For palette-color SamplesPerPixel must be 1:  \<samplesPerPixel>

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_45&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-46

### Message
> Insufficient ColorMap values for palette-color: \<colormapBitCodeValue.length> \< \<len>

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_46&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-47

### Message
> CellLength tag not permitted when Threshholding not 2

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_47&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-48

### Message
> DotRange out of range specified by BitsPerSample

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_48&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-49

### Message
> JPEGProc not defined for JPEG compression

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_49&type=code)
* Examples: [1](https://www.rawsamples.ch/raws/canon/g9/RAW_CANON_G9.CR2)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-50

### Message
> SamplesPerPixel-ExtraSamples not 1 or 3: \<samplesPerPixel> - \<len>

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_50&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-51

### Message
> BitsPerSample not 8 or 16 for CIE L\*a\*b\*

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_51&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-52

### Message
> XClipPathUnits not defined for ClipPath

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_52&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-53

### Message
> Invalid DateTime length: \<dateTime>

### Details
Number of values must be 20.

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_53&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-54

### Message
> Invalid DateTime separator: \<dateTime>

### Details
The date-time format is incompatible with the baseline TIFF specification.

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_54&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
TIFF date formatting could be corrected using ExifTool.


## TIFF-HUL-55

### Message
> Invalid DateTime digit: \<dateTime>

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_55&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-56

### Message
> Invalid DateTime digit: \<dateTime>

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_56&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-57

### Message
> Premature EOF

### Details
Needs review

* Type: IOException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_57&type=code)
* Examples: [1](https://www.rawsamples.ch/raws/nikon/RAW_NIKON_D5000.NEF)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-58

### Message
> No IFD in file

### Details
An IFD (Image File directory) is mandatory in each TIFF file.

* Type: TiffException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_58&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-59

### Message
> IFD offset not word-aligned: \<next>

### Details
TIFF 6.0 Specification, page 13: "The [first IFD] may be at any location in the file after the header but _must begin on a word boundary_."

Storing data at word boundaries allows CPUs to more efficiently read and process the data. When it is unaligned, CPUs can require additional attempts at reading the data.

When the parameter byteoffset=true is set in [Link to the jhove configuration byteoffset](https://jhove.openpreservation.org/modules/tiff/), this error is ignored and becomes an InfoMessage. The status also becomes Well-Formed and valid.

* Type: TiffException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_59&type=code)
* Examples: Needed

### Impact
Systems may suffer a performance penalty while reading or processing the TIFF. The penalty will depend on the architecture of the individual system, which data in the TIFF is unaligned, and how much of it there is.

### Remediation
Needs review


## TIFF-HUL-60

### Message
> More than 50 IFDs in chain, probably an infinite loop

### Details
Needs review

* Type: TiffException
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_60&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-61

### Message
> TIFF compression scheme 6 is deprecated

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_61&type=code)
* Examples: [1](https://www.rawsamples.ch/raws/nikon/d60/RAW_NIKON_D60.NEF)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-62

### Message
> ImageWidth not defined

### Details
TIFF 6.0 Specification, p. 17: datatype short or long, contains the number of columns in the image, i.e. the number of pixels per scanline.

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_62&type=code)
* Examples: [1](http://www.rawsamples.ch/raws/sony/a350/RAW_SONY_A350.ARW)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-63

### Message
> PhotometricInterpretation not defined

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_63&type=code)
* Examples: [1](http://www.rawsamples.ch/raws/sony/a350/RAW_SONY_A350.ARW)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-64

### Message
> ImageLength not defined

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_64&type=code)
* Examples: [1](http://www.rawsamples.ch/raws/sony/a350/RAW_SONY_A350.ARW)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-65

### Message
> Undocumented TIFF tag 

### Details
Needs review

* Type: InfoMessage
* Source location:[Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_65&type=code)
* Examples: [1](https://www.rawsamples.ch/raws/leica/RAW_LEICA_M240.DNG)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-66

### Message
> \<Tag> value out of range: \<value>

### Details
The value found for the given tag is outside the range of expected values for that tag.

* Type: ErrorMessage
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_66&type=code)
* Examples: [1](https://www.rawsamples.ch/raws/samsung/RAW_SAMSUNG_NX300M.SRW)

### Impact
Needs review

### Remediation
Needs review

## TIFF-HUL-67

### Message
> File is too short

### Details
Needs Review

* Type: ErrorMessage
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_67&type=code)
* Examples: Needs Review

### Impact
Needs review

### Remediation
Needs review

## TIFF-HUL-68

### Message
> Unexpected Exception: {0}

### Details
Needs Review

* Type: ErrorMessage
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_68&type=code)
* Examples: Needs Review

### Impact
Needs review

### Remediation
Needs review

## TIFF-HUL-69

### Message
> Unexpected Exception: {0}

### Details
Needs Review

* Type: ErrorMessage
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_69&type=code)
* Examples: Needs Review

### Impact
Needs review

### Remediation
Needs review

## TIFF-HUL-70

### Message
> Embedded Exif block is too short

### Details
Needs Review

* Type: ErrorMessage
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_70&type=code)
* Examples: Needs Review

### Impact
Needs review

### Remediation
Needs review

## TIFF-HUL-71

### Message
> Bad ICCProfile in tag {0,number,#}; message {1}

### Details
Needs Review

* Type: ErrorMessage
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20TIFF_HUL_71&type=code)
* Examples: Needs Review

### Impact
Needs review

### Remediation
Needs review
