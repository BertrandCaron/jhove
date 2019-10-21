
## WAVE-HUL-1

### Message
> File does not start with RIFF header

### Details
The first four bytes of the file did not spell "RIFF" or "RF64". A Wave file should begin with a RIFF chunk header.

* Type: ErrorMessage
* Source location: [WaveModule.java L348](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L348)
* Examples: Needed

### Impact
In many cases the lack of a RIFF header at the beginning of a file indicates that the file does not belong to the RIFF family of file formats and so is not actually a Wave file. If the file format has been misnamed or misidentified as a Wave file, its content could still be accessible after its true format has been correctly identified.

In other cases, it could mean the beginning of the file has been corrupted or had extra data appended to it. If extra data has been appended to the beginning, it may still be possible to recover the content of the original Wave as long as none of its content was also modified.

### Remediation
Correct identification of the file format can be attempted using a format identification tool or manual binary inspection.

If extra data has been added to the beginning of the file, manual binary inspection could be used to discover the new location of the RIFF header by searching for the "RIFF" or "RF64" header <var>ID</var>, and then using the appropriate <var>size</var> field to extract the Wave's contents.


## WAVE-HUL-2

### Message
> Form type in RIFF header is not WAVE

### Details
The form type specified in the RIFF header was not "WAVE". RIFF-format files may be of types other than WAVE, such as AVI.

* Type: ErrorMessage
* Source location: [WaveModule.java L364](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L364)
* Examples: Needed

### Impact
In most cases this signifies the file is not a Wave file but instead some other RIFF format, such as AVI or MIDI.

### Remediation
Correct identification of the file format can be attempted using a format identification tool or manual binary inspection.


## WAVE-HUL-3

### Message
> Unexpected end of file: ...

### Details
The file size is less than the Wave's own reported size, indicating that some amount of data is missing from the file. This can occur when file creation is interrupted, such as during loss of power or when transferring over an unreliable network.

* Type: ErrorMessage
* Source location: [WaveModule.java L414](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L414)
* Examples: [1](https://github.com/openpreserve/jhove/blob/rel/jhove-1.22/test-root/corpora/errors/modules/WAVE-hul/wf-pcm-44khz-8bit-mono-truncated-riff.wav), [2](https://github.com/openpreserve/jhove/blob/rel/jhove-1.22/test-root/corpora/errors/modules/WAVE-hul/wf-pcm-44khz-8bit-mono-truncated-final-chunk.wav)

### Impact
The impact will depend on how much of the file is missing and specifically which data was lost. If the Wave still contains a Format chunk, a Fact chunk where applicable, and at least some of a Data chunk, then some audio content may still be recoverable.

### Remediation
When possible, the best option is to attempt retrieval of a complete copy of the file from the original source or an equivalent backup. When not possible, manual repair of the file can allow what data remains to still be accessible.


## WAVE-HUL-4

### Message
> Exception reading file: ...

### Details
An unexpected error occurred while trying to read the file.

* Type: ErrorMessage
* Source location: [WaveModule.java L420](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L420)
* Examples: Needed

### Impact
The module was unable to complete file characterization or validation.

### Remediation
Please report the issue and circumstances to the project for investigation.


## WAVE-HUL-5

### Message
> No Format chunk found

### Details
A Format chunk was not found in the file. All Wave files must have a Format ("fmt ") chunk containing the information required to decode their audio data.

* Type: ErrorMessage
* Source location: [WaveModule.java L452](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L452)
* Examples: [1](https://github.com/openpreserve/jhove/blob/v1.22.1/test-root/corpora/errors/modules/WAVE-hul/wf-pcm-44khz-8bit-mono-fmt-chunk-missing.wav)

### Impact
Without a Format chunk software will be unable to render any audio data the file may contain, resulting in errors attempting to open or render the file in playback software.

This error may also appear if the module aborts processing a file due to format or module errors before it is able to reach the file's Format chunk.

### Remediation
Needs review


## WAVE-HUL-6

### Message
> Invalid chunk size

### Details
The chunk size reported in a chunk's header exceeds the file's remaining size. The file's remaining size is calculated based on the size reported in the RIFF header, which may not be the same as the file's actual size.

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
A chunk with the given ID was found but ignored because the module is currently unaware of how to interpret the chunk's data.

* Type: InfoMessage
* Source location: [WaveModule.java L849](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L849)
* Examples: Needed

### Impact
The module is unable to inspect the contents of the chunk.

### Remediation
To request support for an unrecognized chunk type, please report it to the project.


## WAVE-HUL-8

### Message
> Duplicate chunks found for type: ...

### Details
A chunk of the given type was found multiple times where it is expected only once.

* Type: ErrorMessage
* Source location: [WaveModule.java L896](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L896)
* Examples: [1](https://github.com/openpreserve/jhove/blob/v1.22.1/test-root/corpora/errors/modules/WAVE-hul/wf-pcm-44khz-8bit-mono-fmt-chunk-multiple.wav)

### Impact
If the repeated chunks contain different data then rendering software could act unpredictably depending on which chunk the software decides to use.

### Remediation
Remove all but one of the repeated chunks. If the data contained in each chunk is both different and deemed valuable, copies of the file could be created differing only in which of the chunks they keep. To avoid invalidating offset values stored inside certain chunks, repeated chunks can be safely removed by replacing them with Junk ("JUNK") chunks of the same size.


## WAVE-HUL-9

### Message
> Unknown list type in Associated Data List chunk

### Details
A non-standard list ("list") chunk with the given type was found but ignored because the module is currently unaware of how to interpret the chunk's data.

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
A chunk with the given ID in a non-standard Associated Data List ("list") was found but ignored because the module is currently unaware of how to interpret the chunk's data.

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
A list chunk with the given type was found but ignored because the module is currently unaware of how to interpret the chunk's data. List ("LIST") chunks consist of a type field followed by a series of chunks. The list's type dictates how the chunks contained in the list should be interpreted.

* Type: ErrorMessage
* Source location: [ListInfoChunk.java L67](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/ListInfoChunk.java#L67)
* Examples: Needed

### Impact
The module is unable to inspect the contents of the list chunk.

### Remediation
To request support for an unrecognized list type, please report it to the project.


## WAVE-HUL-16

### Message
> Ignored Info List chunk of type: ...

### Details
See [WAVE-HUL-19](#WAVE-HUL-19).

* Type: InfoMessage
* Source location: [ListInfoChunk.java L95](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/ListInfoChunk.java#L95)


## WAVE-HUL-17

### Message
> Ignored Associated Data chunk of type: ...

### Details
An Exif List chunk with the given ID was found but ignored because the module is currently unaware of how to interpret the chunk's data.

* Type: InfoMessage
* Source location: [ListInfoChunk.java L148](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/ListInfoChunk.java#L148)
* Examples: Needed

### Impact
The module is unable to inspect the contents of the chunk.

### Remediation
To request support for an unrecognized chunk type, please report it to the project.


## WAVE-HUL-18

### Message
> Ignored Associated Data chunk of type: ...

### Details
An Associated Data List chunk with the given ID was found but ignored because the module is currently unaware of how to interpret the chunk's data.

* Type: InfoMessage
* Source location: [ListInfoChunk.java L194](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/ListInfoChunk.java#L194)
* Examples: Needed

### Impact
The module is unable to inspect the contents of the chunk.

### Remediation
To request support for an unrecognized chunk type, please report it to the project.


## WAVE-HUL-19

### Message
> Ignored Info List chunk of type: ...

### Details
An Info List chunk with the given ID was found but ignored because the module is currently unaware of how to interpret the chunk's data.

* Type: InfoMessage
* Source location: [ListInfoTextChunk.java L145](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/wave/ListInfoTextChunk.java#L145)
* Examples: Needed

### Impact
The module is unable to inspect the contents of the chunk.

### Remediation
To request support for an unrecognized chunk type, please report it to the project.


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
The module is unable to process the file.

### Remediation
Consider switching to [FLAC](https://xiph.org/flac/)?


## WAVE-HUL-23

### Message
> Data Size 64 chunk not in required location

### Details
The first chunk following an RF64 header was not a Data Size 64 chunk. The Data Size 64 ("ds64") chunk must be the first chunk in an RF64 file because it may contain extended size values required to interpret the remainder of the file.

* Type: ErrorMessage
* Source location: [WaveModule.java L395](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L395)
* Examples: [1](https://github.com/openpreserve/jhove/blob/v1.22.1/test-root/corpora/errors/modules/WAVE-hul/rf64-pcm-44khz-8bit-mono-ds64-chunk-missing.wav)

### Impact
Needs review

### Remediation
Needs review


## WAVE-HUL-24

### Message
> No Data chunk found

### Details
A Data chunk was not found in the file. All Wave files must have a Data ("data") chunk containing the audio data to decode.

* Type: ErrorMessage
* Source location: [WaveModule.java L457](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L457)
* Examples: [1](https://github.com/openpreserve/jhove/blob/v1.22.1/test-root/corpora/errors/modules/WAVE-hul/wf-pcm-44khz-8bit-mono-data-chunk-missing.wav)

### Impact
Without a discoverable Data chunk there is no audio data to render, often resulting in errors attempting to open or render the file in playback software.

This error may also appear if the module aborts processing a file due to format or module errors before it is able to reach the file's Data chunk.

### Remediation
Needs review


## WAVE-HUL-25

### Message
> Data chunk appears before Format chunk

### Details
A Data chunk was found before a Format chunk. Data chunks should only appear after the Format chunk that specifies how to interpret them.

* Type: ErrorMessage
* Source location: [WaveModule.java L771](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L771)
* Examples: [1](https://github.com/openpreserve/jhove/blob/v1.22.1/test-root/corpora/errors/modules/WAVE-hul/wf-pcm-44khz-8bit-mono-data-chunk-before-fmt.wav)

### Impact
Software expecting the Format and Data chunks to be in the correct order can fail to open or render the file.

### Remediation
If both Format and Data chunks still exist in the file, they could be reordered manually, with some effort, into the correct order. Care would need to be taken to ensure any offset information stored in other chunks is not invalidated by the move. This may be impossible if there exist proprietary or unknown chunks in the file whose functions also need to be preserved but which can't be verified or updated due to a lack of knowledge about their content or format. For that reason this option may only be feasible for relatively simple Wave files.


## WAVE-HUL-26

### Message
> Ignored unrecognized data in chunk: ...

### Details
A chunk with the given ID contained more data than the module expected. The chunk may contain non-standard data or the module may have an incomplete understanding of the chunk's format.

* Type: InfoMessage
* Source location: [WaveModule.java L871](https://github.com/openpreserve/jhove/blob/rel/jhove-1.20/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WaveModule.java#L871)
* Examples: Needed

### Impact
The module is unable to process the unrecognized data.

### Remediation
The file could be submitted to the project for investigation into supporting the unrecognized data.

