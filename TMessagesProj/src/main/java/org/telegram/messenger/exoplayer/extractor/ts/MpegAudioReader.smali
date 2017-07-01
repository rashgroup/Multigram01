.class final Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;
.super Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;
.source "MpegAudioReader.java"


# static fields
.field private static final HEADER_SIZE:I = 0x4

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_FRAME:I = 0x2

.field private static final STATE_READING_HEADER:I = 0x1


# instance fields
.field private frameBytesRead:I

.field private frameDurationUs:J

.field private frameSize:I

.field private hasOutputFormat:Z

.field private final header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

.field private final headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private lastByteWasFF:Z

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 3
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    .line 54
    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->state:I

    .line 56
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .line 57
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    .line 58
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    .line 59
    return-void
.end method

.method private findHeader(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 10
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 108
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    .line 109
    .local v1, "data":[B
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 110
    .local v5, "startOffset":I
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v2

    .line 111
    .local v2, "endOffset":I
    move v4, v5

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 112
    aget-byte v8, v1, v4

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_0

    move v0, v6

    .line 113
    .local v0, "byteIsFF":Z
    :goto_1
    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v8, :cond_1

    aget-byte v8, v1, v4

    and-int/lit16 v8, v8, 0xe0

    const/16 v9, 0xe0

    if-ne v8, v9, :cond_1

    move v3, v6

    .line 114
    .local v3, "found":Z
    :goto_2
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 115
    if-eqz v3, :cond_2

    .line 116
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 118
    iput-boolean v7, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 119
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    aget-byte v8, v1, v4

    aput-byte v8, v7, v6

    .line 120
    const/4 v7, 0x2

    iput v7, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 121
    iput v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->state:I

    .line 126
    .end local v0    # "byteIsFF":Z
    .end local v3    # "found":Z
    :goto_3
    return-void

    :cond_0
    move v0, v7

    .line 112
    goto :goto_1

    .restart local v0    # "byteIsFF":Z
    :cond_1
    move v3, v7

    .line 113
    goto :goto_2

    .line 111
    .restart local v3    # "found":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "byteIsFF":Z
    .end local v3    # "found":Z
    :cond_3
    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_3
.end method

.method private readFrameRemainder(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 8
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    const/4 v6, 0x0

    .line 190
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameSize:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 191
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    .line 192
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 193
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameSize:I

    if-ge v1, v2, :cond_0

    .line 202
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->timeUs:J

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 199
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->timeUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->timeUs:J

    .line 200
    iput v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 201
    iput v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->state:I

    goto :goto_0
.end method

.method private readHeaderRemainder(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 13
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    .line 145
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    rsub-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 146
    .local v10, "bytesToRead":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    invoke-virtual {p1, v0, v1, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 147
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v0, v10

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 148
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 154
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->populateHeader(ILorg/telegram/messenger/exoplayer/util/MpegAudioHeader;)Z

    move-result v12

    .line 155
    .local v12, "parsedHeader":Z
    if-nez v12, :cond_1

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 158
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->state:I

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->frameSize:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameSize:I

    .line 163
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    if-nez v0, :cond_2

    .line 164
    const-wide/32 v0, 0xf4240

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->samplesPerFrame:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameDurationUs:J

    .line 165
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->mimeType:Ljava/lang/String;

    const/4 v2, -0x1

    const/16 v3, 0x1000

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v6, v6, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->channels:I

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v7, v7, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->sampleRate:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v11

    .line 168
    .local v11, "mediaFormat":Lorg/telegram/messenger/exoplayer/MediaFormat;
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {v0, v11}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    .line 172
    .end local v11    # "mediaFormat":Lorg/telegram/messenger/exoplayer/MediaFormat;
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 173
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    .line 174
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->state:I

    goto :goto_0
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 1
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    .line 75
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->state:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->findHeader(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->readHeaderRemainder(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->readFrameRemainder(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    goto :goto_0

    .line 88
    :cond_0
    return-void

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 70
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->timeUs:J

    .line 71
    return-void
.end method

.method public seek()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->state:I

    .line 64
    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 65
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 66
    return-void
.end method
