.class public final Lorg/telegram/messenger/exoplayer/hls/TsChunk;
.super Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;
.source "TsChunk.java"


# instance fields
.field private bytesLoaded:I

.field public final discontinuitySequenceNumber:I

.field public final extractorWrapper:Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

.field private final isEncrypted:Z

.field private volatile loadCanceled:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJIILorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;[B[B)V
    .locals 13
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    .param p3, "trigger"    # I
    .param p4, "format"    # Lorg/telegram/messenger/exoplayer/chunk/Format;
    .param p5, "startTimeUs"    # J
    .param p7, "endTimeUs"    # J
    .param p9, "chunkIndex"    # I
    .param p10, "discontinuitySequenceNumber"    # I
    .param p11, "extractorWrapper"    # Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    .param p12, "encryptionKey"    # [B
    .param p13, "encryptionIv"    # [B

    .prologue
    .line 65
    move-object/from16 v0, p12

    move-object/from16 v1, p13

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->buildDataSource(Lorg/telegram/messenger/exoplayer/upstream/DataSource;[B[B)Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    move-result-object v4

    move-object v3, p0

    move-object v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    invoke-direct/range {v3 .. v12}, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJI)V

    .line 67
    move/from16 v0, p10

    iput v0, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->discontinuitySequenceNumber:I

    .line 68
    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    .line 70
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    instance-of v2, v2, Lorg/telegram/messenger/exoplayer/hls/Aes128DataSource;

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->isEncrypted:Z

    .line 71
    return-void
.end method

.method private static buildDataSource(Lorg/telegram/messenger/exoplayer/upstream/DataSource;[B[B)Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .locals 1
    .param p0, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p1, "encryptionKey"    # [B
    .param p2, "encryptionIv"    # [B

    .prologue
    .line 133
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 136
    .end local p0    # "dataSource":Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "dataSource":Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    :cond_1
    new-instance v0, Lorg/telegram/messenger/exoplayer/hls/Aes128DataSource;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/exoplayer/hls/Aes128DataSource;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;[B[B)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancelLoad()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->loadCanceled:Z

    .line 83
    return-void
.end method

.method public isLoadCanceled()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->loadCanceled:Z

    return v0
.end method

.method public load()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 98
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->isEncrypted:Z

    if-eqz v1, :cond_2

    .line 99
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    .line 100
    .local v6, "loadDataSpec":Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    iget v1, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->bytesLoaded:I

    if-eqz v1, :cond_1

    const/4 v8, 0x1

    .line 107
    .local v8, "skipLoadedBytes":Z
    :goto_0
    :try_start_0
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-wide v2, v6, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v4, v6}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;JJ)V

    .line 109
    .local v0, "input":Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    if-eqz v8, :cond_0

    .line 110
    iget v1, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->bytesLoaded:I

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    :cond_0
    const/4 v7, 0x0

    .line 114
    .local v7, "result":I
    :goto_1
    if-nez v7, :cond_3

    :try_start_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->loadCanceled:Z

    if-nez v1, :cond_3

    .line 115
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    goto :goto_1

    .line 100
    .end local v0    # "input":Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .end local v7    # "result":I
    .end local v8    # "skipLoadedBytes":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 102
    .end local v6    # "loadDataSpec":Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->bytesLoaded:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getRemainderDataSpec(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;I)Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    move-result-object v6

    .line 103
    .restart local v6    # "loadDataSpec":Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    const/4 v8, 0x0

    .restart local v8    # "skipLoadedBytes":Z
    goto :goto_0

    .line 118
    .restart local v0    # "input":Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .restart local v7    # "result":I
    :cond_3
    :try_start_2
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-wide v4, v1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->bytesLoaded:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    .line 123
    return-void

    .line 118
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->bytesLoaded:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    .end local v0    # "input":Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .end local v7    # "result":I
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    throw v1
.end method
