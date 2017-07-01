.class final Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;
.super Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;
.source "Ac3Reader.java"


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private final headerScratchBits:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

.field private final headerScratchBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final isEac3:Z

.field private lastByteWas0B:Z

.field private mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;Z)V
    .locals 2
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;
    .param p2, "isEac3"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    .line 63
    iput-boolean p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->isEac3:Z

    .line 64
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    .line 65
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->state:I

    .line 67
    return-void
.end method

.method private continueRead(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;[BI)Z
    .locals 3
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .prologue
    .line 130
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int v2, p3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 131
    .local v0, "bytesToRead":I
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 132
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    .line 133
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseHeader()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 164
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    if-nez v1, :cond_0

    .line 165
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->isEac3:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-static {v1, v2, v4, v5, v2}, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->parseEac3SyncframeFormat(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;Ljava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    .line 168
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    .line 170
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->isEac3:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->parseEAc3SyncframeSize([B)I

    move-result v1

    :goto_1
    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->sampleSize:I

    .line 172
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->isEac3:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->parseEAc3SyncframeAudioSampleCount([B)I

    move-result v0

    .line 177
    .local v0, "audioSamplesPerSyncframe":I
    :goto_2
    const-wide/32 v2, 0xf4240

    int-to-long v4, v0

    mul-long/2addr v2, v4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget v1, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v1, v2

    int-to-long v2, v1

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->sampleDurationUs:J

    .line 179
    return-void

    .line 165
    .end local v0    # "audioSamplesPerSyncframe":I
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-static {v1, v2, v4, v5, v2}, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->parseAc3SyncframeFormat(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;Ljava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v1

    goto :goto_0

    .line 170
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->parseAc3SyncframeSize([B)I

    move-result v1

    goto :goto_1

    .line 172
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result v0

    goto :goto_2
.end method

.method private skipToNextSync(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z
    .locals 5
    .param p1, "pesBuffer"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    const/16 v4, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 144
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_4

    .line 145
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    if-nez v1, :cond_1

    .line 146
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    .line 149
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 150
    .local v0, "secondByte":I
    const/16 v1, 0x77

    if-ne v0, v1, :cond_2

    .line 151
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    .line 157
    .end local v0    # "secondByte":I
    :goto_2
    return v2

    .line 154
    .restart local v0    # "secondByte":I
    :cond_2
    if-ne v0, v4, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_3

    .end local v0    # "secondByte":I
    :cond_4
    move v2, v3

    .line 157
    goto :goto_2
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 12
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 83
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_1

    .line 84
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->state:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->skipToNextSync(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iput v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->state:I

    .line 88
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v2, 0xb

    aput-byte v2, v1, v6

    .line 89
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v2, 0x77

    aput-byte v2, v1, v4

    .line 90
    iput v10, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-direct {p0, p1, v1, v11}, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->continueRead(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->parseHeader()V

    .line 96
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 97
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-interface {v1, v2, v11}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    .line 98
    iput v10, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->state:I

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->sampleSize:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 103
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    .line 104
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    .line 105
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->sampleSize:I

    if-ne v1, v2, :cond_0

    .line 106
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->timeUs:J

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->sampleSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 107
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->timeUs:J

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->sampleDurationUs:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->timeUs:J

    .line 108
    iput v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->state:I

    goto :goto_0

    .line 113
    .end local v0    # "bytesToRead":I
    :cond_1
    return-void

    .line 84
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
    .line 118
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 78
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->timeUs:J

    .line 79
    return-void
.end method

.method public seek()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->state:I

    .line 72
    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    .line 73
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    .line 74
    return-void
.end method
