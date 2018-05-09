
## TIFF-HUL-1

### Message
> Premature EOF

### Details
Needs review

* Type: TiffException
* Source location: [IFD.java L263](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/IFD.java#L263)
* Examples: Needed

### Impact
The TIFF may be truncated or incomplete.

### Remediation
Needs review


## TIFF-HUL-2

### Message
> Tag \<tag> out of sequence

### Details
Needs review

* Type: ErrorMessage
* Source location: [IFD.java L276](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/IFD.java#L276)
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
* Source location: [IFD.java L286](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/IFD.java#L286)
* Examples: [1](https://www.rawsamples.ch/raws/nikon/d60/RAW_NIKON_D60.NEF)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-4

### Message
> Value offset not word aligned: \<value>

### Details
TIFF 6.0 Specification, p. 30: Some values need to be word-aligned or even double-word-aligned.

* Type: InfoMessage
* Source location: [IFD.java L309](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/IFD.java#L309)
* Examples: [1](https://www.rawsamples.ch/raws/samsung/RAW_SAMSUNG_%20WB2000%20.SRW)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-5

### Message
> Read error

### Details
Needs review

* Type: IOException
* Source location: [IFD.java L325](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/IFD.java#L325)
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
* Source location: [IFD.java L930](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/IFD.java#L930)
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
* Source location: [IFD.java L953](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/IFD.java#L953)
* Examples: [1](https://www.rawsamples.ch/raws/nikon/RAW_NIKON_COOLPIX_P7100.NRW), [2](https://drive.google.com/open?id=0Bxn2YxzZ-3xCMEFlUmdnWVlSNWs)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-8

### Message
> Type mismatch for tag \<tag>; expecting \<type1> or ,\<type2>, saw \<type>

### Details
Needs review

* Type: TiffException
* Source location: [IFD.java L971](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/IFD.java#L971)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-9

### Message
> Invalid GeoKeyDirectory tag

### Details
Needs review

* Type: TiffException
* Source location: [TiffIFD.java L1820](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/TiffIFD.java#L1820)
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
* Source location: [TiffIFD.java L2867](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/TiffIFD.java#L2867)
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
* Source location: [TiffIFD.java L3783](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/TiffIFD.java#L3783)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-12

### Message
> Unknown TIFF IFD tag: \<tag>

### Details
Needs review

* Type: InfoMessage
* Source location: [TiffIFD.java L3795](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/TiffIFD.java#L3795)
* Examples: [1](http://www.rawsamples.ch/raws/sony/a350/RAW_SONY_A350.ARW)

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-13

### Message
> Read error for tag \<tag>

### Details
Needs review

* Type: IOException
* Source location: [TiffIFD.java L3800](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/TiffIFD.java#L3800)
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
* Source location: [TiffIFD.java L3951](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/TiffIFD.java#L3951)
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
* Source location: [InteroperabilityIFD.java L78](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/InteroperabilityIFD.java#L78)
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
* Source location: [InteroperabilityIFD.java L84](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/InteroperabilityIFD.java#L84)
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
* Source location: [GPSInfoIFD.java L658](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/GPSInfoIFD.java#L658)
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
* Source location: [GPSInfoIFD.java L662](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/GPSInfoIFD.java#L662)
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
* Source location: [GlobalParametersIFD.java L153](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/GlobalParametersIFD.java#L153)
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
* Source location: [TiffModule.java L426](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L426)
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
* Source location: [TiffModule.java L437](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L437)
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
* Source location: [TiffModule.java L602](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L602)
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
* Source location: [TiffModule.java L609](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L609)
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
* Source location: [TiffModule.java L795](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L795)
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
* Source location: [TiffModule.java L799](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L799)
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
* Source location: [TiffModule.java L808](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L808)
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
* Source location: [TiffModule.java L812](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L812)
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
* Source location: [TiffModule.java L817](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L817)
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
* Source location: [TiffModule.java L828](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L828)
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
* Source location: [TiffModule.java L837](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L837)
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
* Source location: [TiffModule.java L840](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L840)
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
* Source location: [TiffModule.java L843](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L843)
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
* Source location: [TiffModule.java L846](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L846)
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
* Source location: [TiffModule.java L850](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L850)
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
* Source location: [TiffModule.java L854](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L854)
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
* Source location: [TiffModule.java L863](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L863)
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
* Source location: [TiffModule.java L868](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L868)
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
* Source location: [TiffModule.java L873](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L873)
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
* Source location: [TiffModule.java L880](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L880)
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
* Source location: [TiffModule.java L890](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L890)
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
* Source location: [TiffModule.java L897](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L897)
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
* Source location: [TiffModule.java L909](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L909)
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
* Source location: [TiffModule.java L916](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L916)
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
* Source location: [TiffModule.java L931](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L931)
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
* Source location: [TiffModule.java L935](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L935)
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
* Source location: [TiffModule.java L940](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L940)
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
* Source location: [TiffModule.java L949](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L949)
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
* Source location: [TiffModule.java L960](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L960)
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
* Source location: [TiffModule.java L968](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L968)
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
* Source location: [TiffModule.java L982](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L982)
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
* Source location: [TiffModule.java L987](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L987)
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
* Source location: [TiffModule.java L997](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L997)
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
* Source location: [TiffModule.java L1007](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L1007)
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
* Source location: [TiffModule.java L1013](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L1013)
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
* Source location: [TiffModule.java L1026](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L1026)
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
* Source location: [TiffModule.java L1029](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L1029)
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
* Source location: [TiffModule.java L1071](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L1071)
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
* Source location: [TiffModule.java L1075](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L1075)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-59

### Message
> IFD offset not word-aligned: \<next>

### Details
Needs review

* Type: TiffException
* Source location: [TiffModule.java L1081](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L1081)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## TIFF-HUL-60

### Message
> More than 50 IFDs in chain, probably an infinite loop

### Details
Needs review

* Type: TiffException
* Source location: [TiffModule.java L1085](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L1085)
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
* Source location: [TiffModule.java L2694](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L2694)
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
* Source location: [TiffModule.java L773](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L773)
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
* Source location: [TiffModule.java L769](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L769)
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
* Source location: [TiffModule.java L777](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/TiffModule.java#L777)
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
* Source location: [TiffIFD.java L3783](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/TiffIFD.java#L3783)
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
* Source location: [IFD.java L371](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/IFD.java#L371) <-- Unreachable error?
https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/IFD.java#L401
https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/IFD.java#L439
https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/tiff/IFD.java#L470
* Examples: [1](https://www.rawsamples.ch/raws/samsung/RAW_SAMSUNG_NX300M.SRW)

### Impact
Needs review

### Remediation
Needs review

