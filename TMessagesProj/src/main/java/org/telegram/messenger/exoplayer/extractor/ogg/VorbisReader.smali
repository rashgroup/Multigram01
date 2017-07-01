.class final Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;
.super Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;
.source "VorbisReader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;
    }
.end annotation


# static fields
.field private static final LARGEST_EXPECTED_PAGE_SIZE:J = 0x1f40L


# instance fields
.field private audioStartPosition:J

.field private commentHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$CommentHeader;

.field private duration:J

.field private elapsedSamples:J

.field private inputLength:J

.field private final oggSeeker:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;

.field private previousPacketBlockSize:I

.field private seenFirstAudioPacket:Z

.field private targetGranule:J

.field private totalSamples:J

.field private vorbisIdHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

.field private vorbisSetup:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;-><init>()V

    .line 44
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->oggSeeker:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->targetGranule:J

    .line 228
    return-void
.end method

.method static appendNumberOfSamples(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)V
    .locals 7
    .param p0, "buffer"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p1, "packetSampleCount"    # J

    .prologue
    const-wide/16 v4, 0xff

    .line 188
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 191
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 192
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v2, 0x8

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 193
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 194
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 195
    return-void
.end method

.method private static decodeBlockSize(BLorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;)I
    .locals 4
    .param p0, "firstByteOfAudioPacket"    # B
    .param p1, "vorbisSetup"    # Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    .prologue
    .line 199
    iget v2, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil;->readBits(BII)I

    move-result v1

    .line 201
    .local v1, "modeNumber":I
    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$Mode;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$Mode;->blockFlag:Z

    if-nez v2, :cond_0

    .line 202
    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v0, v2, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize0:I

    .line 206
    .local v0, "currentBlockSize":I
    :goto_0
    return v0

    .line 204
    .end local v0    # "currentBlockSize":I
    :cond_0
    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v0, v2, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize1:I

    .restart local v0    # "currentBlockSize":I
    goto :goto_0
.end method

.method static verifyBitstreamType(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z
    .locals 3
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    .line 56
    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, p0, v2}, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)Z
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 58
    :goto_0
    return v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lorg/telegram/messenger/exoplayer/ParserException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPosition(J)J
    .locals 7
    .param p1, "timeUs"    # J

    .prologue
    .line 216
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 217
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->targetGranule:J

    .line 218
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->audioStartPosition:J

    .line 221
    :goto_0
    return-wide v0

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->sampleRate:J

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->targetGranule:J

    .line 221
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->audioStartPosition:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->inputLength:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->audioStartPosition:J

    sub-long/2addr v2, v4

    mul-long/2addr v2, p1

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->duration:J

    div-long/2addr v2, v4

    const-wide/16 v4, 0xfa0

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public isSeekable()Z
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->inputLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 20
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 75
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->totalSamples:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    if-nez v2, :cond_0

    .line 77
    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->inputLength:J

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->readSetupHeaders(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    .line 79
    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->audioStartPosition:J

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    .line 81
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->inputLength:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 83
    const-wide/16 v2, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v6

    const-wide/16 v8, 0x1f40

    sub-long/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object/from16 v0, p2

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;->position:J

    .line 84
    const/4 v2, 0x1

    .line 151
    :goto_0
    return v2

    .line 87
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->inputLength:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    const-wide/16 v2, -0x1

    :goto_1
    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->totalSamples:J

    .line 90
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v10, "codecInitialisationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->data:[B

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->inputLength:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    const-wide/16 v2, -0x1

    :goto_2
    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->duration:J

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const-string/jumbo v3, "audio/vorbis"

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v4, v6, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    const v5, 0xfe01

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->duration:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v8, v8, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->channels:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-wide v0, v9, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->sampleRate:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v9, v0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    .line 101
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->inputLength:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->oggSeeker:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->inputLength:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->audioStartPosition:J

    sub-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->totalSamples:J

    invoke-virtual {v2, v6, v7, v8, v9}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;->setup(JJ)V

    .line 104
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->audioStartPosition:J

    move-object/from16 v0, p2

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;->position:J

    .line 105
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 87
    .end local v10    # "codecInitialisationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->oggParser:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->readGranuleOfLastPage(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v2

    goto/16 :goto_1

    .line 94
    .restart local v10    # "codecInitialisationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->totalSamples:J

    const-wide/32 v6, 0xf4240

    mul-long/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-wide v6, v6, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->sampleRate:J

    div-long/2addr v2, v6

    goto/16 :goto_2

    .line 110
    .end local v10    # "codecInitialisationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->targetGranule:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    .line 111
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil;->skipToNextPage(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->oggSeeker:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->targetGranule:J

    move-object/from16 v0, p1

    invoke-virtual {v2, v6, v7, v0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;->getNextSeekPosition(JLorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v14

    .line 113
    .local v14, "position":J
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-eqz v2, :cond_4

    .line 114
    move-object/from16 v0, p2

    iput-wide v14, v0, Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;->position:J

    .line 115
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 117
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->oggParser:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->targetGranule:J

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v6, v7}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->skipToPageOfGranule(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->elapsedSamples:J

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->vorbisIdHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize0:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 120
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 125
    .end local v14    # "position":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->oggParser:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->readPacket(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->decodeBlockSize(BLorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;)I

    move-result v12

    .line 132
    .local v12, "packetBlockSize":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    add-int/2addr v2, v12

    div-int/lit8 v13, v2, 0x4

    .line 134
    .local v13, "samplesInPacket":I
    :goto_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->elapsedSamples:J

    int-to-long v6, v13

    add-long/2addr v2, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->targetGranule:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_6

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    int-to-long v6, v13

    invoke-static {v2, v6, v7}, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->appendNumberOfSamples(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)V

    .line 138
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->elapsedSamples:J

    const-wide/32 v6, 0xf4240

    mul-long/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-wide v6, v6, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->sampleRate:J

    div-long v4, v2, v6

    .line 139
    .local v4, "timeUs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v6

    invoke-interface {v2, v3, v6}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 141
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->targetGranule:J

    .line 144
    .end local v4    # "timeUs":J
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 145
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->elapsedSamples:J

    int-to-long v6, v13

    add-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->elapsedSamples:J

    .line 146
    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 148
    .end local v12    # "packetBlockSize":I
    .end local v13    # "samplesInPacket":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset()V

    .line 149
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 132
    .restart local v12    # "packetBlockSize":I
    :cond_8
    const/4 v13, 0x0

    goto :goto_3

    .line 151
    .end local v12    # "packetBlockSize":I
    :cond_9
    const/4 v2, -0x1

    goto/16 :goto_0
.end method

.method readSetupHeaders(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;
    .locals 6
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .param p2, "scratch"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->vorbisIdHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->oggParser:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->readPacket(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z

    .line 160
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil;->readVorbisIdentificationHeader(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->vorbisIdHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    .line 161
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset()V

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->commentHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$CommentHeader;

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->oggParser:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->readPacket(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z

    .line 166
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil;->readVorbisCommentHeader(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$CommentHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->commentHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$CommentHeader;

    .line 167
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset()V

    .line 170
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->oggParser:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->readPacket(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z

    .line 172
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v0

    new-array v3, v0, [B

    .line 174
    .local v3, "setupHeaderData":[B
    iget-object v0, p2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->vorbisIdHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->channels:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil;->readVorbisModes(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)[Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$Mode;

    move-result-object v4

    .line 178
    .local v4, "modes":[Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$Mode;
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v5

    .line 179
    .local v5, "iLogModes":I
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset()V

    .line 181
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->vorbisIdHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->commentHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$CommentHeader;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$CommentHeader;[B[Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisUtil$Mode;I)V

    return-object v0
.end method

.method public seek()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;->seek()V

    .line 65
    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->elapsedSamples:J

    .line 67
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 68
    return-void
.end method
