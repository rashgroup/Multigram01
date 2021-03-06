.class public Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;
.super Ljava/lang/Object;
.source "DefaultTrackOutput.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;


# instance fields
.field private volatile format:Lorg/telegram/messenger/exoplayer/MediaFormat;

.field private volatile largestParsedTimestampUs:J

.field private lastReadTimeUs:J

.field private needKeyframe:Z

.field private final rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

.field private final sampleInfoHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

.field private spliceOutTimeUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/Allocator;)V
    .locals 4
    .param p1, "allocator"    # Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;-><init>(Lorg/telegram/messenger/exoplayer/upstream/Allocator;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    .line 51
    new-instance v0, Lorg/telegram/messenger/exoplayer/SampleHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->needKeyframe:Z

    .line 53
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->lastReadTimeUs:J

    .line 54
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->spliceOutTimeUs:J

    .line 55
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    .line 56
    return-void
.end method

.method private advanceToEligibleSample()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->peekSample(Lorg/telegram/messenger/exoplayer/SampleHolder;)Z

    move-result v0

    .line 213
    .local v0, "haveNext":Z
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->needKeyframe:Z

    if-eqz v2, :cond_0

    .line 214
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/SampleHolder;->isSyncFrame()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->skipSample()V

    .line 216
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->peekSample(Lorg/telegram/messenger/exoplayer/SampleHolder;)Z

    move-result v0

    goto :goto_0

    .line 219
    :cond_0
    if-nez v0, :cond_2

    .line 225
    :cond_1
    :goto_1
    return v1

    .line 222
    :cond_2
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->spliceOutTimeUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->spliceOutTimeUs:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 225
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 64
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->clear()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->needKeyframe:Z

    .line 66
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->lastReadTimeUs:J

    .line 67
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->spliceOutTimeUs:J

    .line 68
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    .line 69
    return-void
.end method

.method public configureSpliceTo(Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;)Z
    .locals 8
    .param p1, "nextQueue"    # Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    .prologue
    const/4 v3, 0x1

    .line 179
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->spliceOutTimeUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 202
    :goto_0
    return v3

    .line 184
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->peekSample(Lorg/telegram/messenger/exoplayer/SampleHolder;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 185
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-wide v0, v4, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    .line 189
    .local v0, "firstPossibleSpliceTime":J
    :goto_1
    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    .line 191
    .local v2, "nextRollingBuffer":Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;
    :goto_2
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->peekSample(Lorg/telegram/messenger/exoplayer/SampleHolder;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    cmp-long v4, v4, v0

    if-ltz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/SampleHolder;->isSyncFrame()Z

    move-result v4

    if-nez v4, :cond_3

    .line 194
    :cond_1
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->skipSample()V

    goto :goto_2

    .line 187
    .end local v0    # "firstPossibleSpliceTime":J
    .end local v2    # "nextRollingBuffer":Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;
    :cond_2
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->lastReadTimeUs:J

    const-wide/16 v6, 0x1

    add-long v0, v4, v6

    .restart local v0    # "firstPossibleSpliceTime":J
    goto :goto_1

    .line 196
    .restart local v2    # "nextRollingBuffer":Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->peekSample(Lorg/telegram/messenger/exoplayer/SampleHolder;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 199
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->spliceOutTimeUs:J

    goto :goto_0

    .line 202
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public discardUntil(J)V
    .locals 3
    .param p1, "timeUs"    # J

    .prologue
    .line 154
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->peekSample(Lorg/telegram/messenger/exoplayer/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->skipSample()V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->needKeyframe:Z

    goto :goto_0

    .line 159
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->lastReadTimeUs:J

    .line 160
    return-void
.end method

.method public discardUpstreamSamples(I)V
    .locals 2
    .param p1, "discardFromIndex"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->discardUpstreamSamples(I)V

    .line 85
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->peekSample(Lorg/telegram/messenger/exoplayer/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    :goto_0
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    .line 87
    return-void

    .line 85
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V
    .locals 0
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer/MediaFormat;

    .prologue
    .line 250
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    .line 251
    return-void
.end method

.method public getFormat()Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    return-object v0
.end method

.method public getLargestParsedTimestampUs()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    return-wide v0
.end method

.method public getReadIndex()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->getReadIndex()I

    move-result v0

    return v0
.end method

.method public getSample(Lorg/telegram/messenger/exoplayer/SampleHolder;)Z
    .locals 4
    .param p1, "holder"    # Lorg/telegram/messenger/exoplayer/SampleHolder;

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->advanceToEligibleSample()Z

    move-result v0

    .line 138
    .local v0, "foundEligibleSample":Z
    if-nez v0, :cond_0

    .line 145
    :goto_0
    return v1

    .line 142
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->readSample(Lorg/telegram/messenger/exoplayer/SampleHolder;)Z

    .line 143
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->needKeyframe:Z

    .line 144
    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->lastReadTimeUs:J

    .line 145
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getWriteIndex()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->getWriteIndex()I

    move-result v0

    return v0
.end method

.method public hasFormat()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->advanceToEligibleSample()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I
    .locals 1
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->appendData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    return v0
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer/upstream/DataSource;IZ)I
    .locals 1
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->appendData(Lorg/telegram/messenger/exoplayer/upstream/DataSource;IZ)I

    move-result v0

    return v0
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V
    .locals 1
    .param p1, "buffer"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->appendData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    .line 262
    return-void
.end method

.method public sampleMetadata(JIII[B)V
    .locals 9
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "encryptionKey"    # [B

    .prologue
    .line 266
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    .line 267
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->getWritePosition()J

    move-result-wide v2

    int-to-long v4, p4

    sub-long/2addr v2, v4

    int-to-long v4, p5

    sub-long v4, v2, v4

    move-wide v1, p1

    move v3, p3

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->commitSample(JIJI[B)V

    .line 269
    return-void
.end method

.method public skipToKeyframeBefore(J)Z
    .locals 1
    .param p1, "timeUs"    # J

    .prologue
    .line 169
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->skipToKeyframeBefore(J)Z

    move-result v0

    return v0
.end method
