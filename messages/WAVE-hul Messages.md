
## WAVE-HUL-1

### Message
> File does not start with RIFF header

### Details
The first four bytes of the file did not spell "RIFF" or "RF64". A WAVE file should begin with a RIFF chunk header.

* Type: ErrorMessage
* Source location: [WaveModule.java L348](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L348)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-2

### Message
> Form type in RIFF header is not WAVE

### Details
The form specified in the RIFF header was not "WAVE". RIFF-format files may be of types other than WAVE, such as AVI.

* Type: ErrorMessage
* Source location: [WaveModule.java L364](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L364)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-3

### Message
> Unexpected end of file

### Details
Needs review

* Type: ErrorMessage
* Source location: [WaveModule.java L414](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L414)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-4

### Message
> Exception reading file: ...

### Details
Needs review

* Type: ErrorMessage
* Source location: [WaveModule.java L420](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L420)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-5

### Message
> No Format chunk found

### Details
A Format chunk was not found in the file. All WAVE files must have a Format ("fmt ") chunk, which contains information required to decode the audio data.

* Type: ErrorMessage
* Source location: [WaveModule.java L452](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L452)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-6

### Message
> Invalid chunk size

### Details
The chunk size reported in a chunk's header exceeds the file's remaining size. The file's remaining size is calculated based on the file size reported in the RIFF header, which may not be the same as the file's actual size.

* Type: ErrorMessage
* Source location: [WaveModule.java L759](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L759)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-7

### Message
> Ignored unrecognized chunk: ...

### Details
A chunk with the given ID was found and ignored.

* Type: InfoMessage
* Source location: [WaveModule.java L849](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L849)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-8

### Message
> Duplicate chunks found for type: ...

### Details
A chunk with the given ID was found multiple times where it should appear only once.

* Type: ErrorMessage
* Source location: [WaveModule.java L896](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L896)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-9

### Message
> Unknown list type in Associated Data List chunk

### Details
Needs review

* Type: ErrorMessage
* Source location: [AssocDataListChunk.java L58](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/AssocDataListChunk.java#L58)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-10

### Message
> Ignored Associated Data chunk of type: ...

### Details
Needs review

* Type: InfoMessage
* Source location: [AssocDataListChunk.java L86](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/AssocDataListChunk.java#L86)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-11

### Message
> Exif User Comment chunk is too short

### Details
Needs review

* Type: ErrorMessage
* Source location: [ExifUserCommentChunk.java L56](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/ExifUserCommentChunk.java#L56)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-12

### Message
> Incorrect length for Exif Version chunk

### Details
Needs review

* Type: ErrorMessage
* Source location: [ExifVersionChunk.java L47](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/ExifVersionChunk.java#L47)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-13

### Message
> SAXException in reading Link chunk

### Details
Needs review

* Type: ErrorMessage
* Source location: [LinkChunk.java L96](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/LinkChunk.java#L96)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-14

### Message
> ParserConfigurationException in reading Link chunk

### Details
Needs review

* Type: ErrorMessage
* Source location: [LinkChunk.java L102](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/LinkChunk.java#L102)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-15

### Message
> List chunk contains unknown type: ...

### Details
Needs review

* Type: ErrorMessage
* Source location: [ListInfoChunk.java L67](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/ListInfoChunk.java#L67)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-16

### Message
> Ignored Info List chunk of type: ...

### Details
Needs review

* Type: InfoMessage
* Source location: [ListInfoChunk.java L95](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/ListInfoChunk.java#L95)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-17

### Message
> Ignored Associated Data chunk of type: ...

### Details
Needs review

* Type: InfoMessage
* Source location: [ListInfoChunk.java L148](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/ListInfoChunk.java#L148)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-18

### Message
> Ignored Associated Data chunk of type: ...

### Details
Needs review

* Type: InfoMessage
* Source location: [ListInfoChunk.java L194](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/ListInfoChunk.java#L194)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-19

### Message
> Ignored Info List chunk of type: ...

### Details
Needs review

* Type: InfoMessage
* Source location: [ListInfoTextChunk.java L145](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/ListInfoTextChunk.java#L145)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-20

### Message
> Invalid format value in Peak Envelope chunk

### Details
Needs review

* Type: ErrorMessage
* Source location: [PeakEnvelopeChunk.java L78](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/PeakEnvelopeChunk.java#L78)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-21

### Message
> Invalid pointsPerValue in Peak Envelope chunk

### Details
Needs review

* Type: ErrorMessage
* Source location: [PeakEnvelopeChunk.java L89](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/PeakEnvelopeChunk.java#L89)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-22

### Message
> File too large to validate

### Details
The RIFF size exceeded what the module can currently handle, approximately 9.22 exabytes.

* Type: InfoMessage
* Source location: [WaveModule.java L383](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L383)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-23

### Message
> Data Size 64 chunk not in required location

### Details
The first chunk following an RF64 header was not a Data Size 64 chunk. The Data Size 64 ("ds64") chunk must be the first chunk in an RF64 file because it may contain extended size values required to interpret the remainder of the file.

* Type: ErrorMessage
* Source location: [WaveModule.java L395](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L395)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-24

### Message
> No Data chunk found

### Details
A Data chunk was not found in the file. All WAVE files must have a Data ("data") chunk, which contains the audio data to decode.

* Type: ErrorMessage
* Source location: [WaveModule.java L457](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L457)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-25

### Message
> Data chunk appears before Format chunk

### Details
A Data chunk was found before any Format chunks. Data chunks should only appear after the Format chunks that specify how to interpret them.

* Type: ErrorMessage
* Source location: [WaveModule.java L771](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L771)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-26

### Message
> Ignored unrecognized data in chunk: ...

### Details
A chunk with the given ID contained more data than the module expected. The chunk may contain non-standard data or the module may have an incomplete understanding of the chunk's format.

* Type: InfoMessage
* Source location: [WaveModule.java L871](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L871)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review

