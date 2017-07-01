.class public final Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;
.super Ljava/lang/Object;
.source "HlsSampleSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/SampleSource;
.implements Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;
.implements Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field private static final NO_RESET_PENDING:J = -0x8000000000000000L

.field private static final PRIMARY_TYPE_AUDIO:I = 0x2

.field private static final PRIMARY_TYPE_NONE:I = 0x0

.field private static final PRIMARY_TYPE_TEXT:I = 0x1

.field private static final PRIMARY_TYPE_VIDEO:I = 0x3


# instance fields
.field private final bufferSizeContribution:I

.field private final chunkOperationHolder:Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;

.field private final chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

.field private chunkSourceTrackIndices:[I

.field private currentLoadStartTimeMs:J

.field private currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

.field private currentLoadableException:Ljava/io/IOException;

.field private currentLoadableExceptionCount:I

.field private currentLoadableExceptionTimestamp:J

.field private currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

.field private downstreamFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;

.field private downstreamMediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

.field private downstreamPositionUs:J

.field private enabledTrackCount:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

.field private final eventSourceId:I

.field private extractorTrackEnabledStates:[Z

.field private extractorTrackIndices:[I

.field private final extractors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private lastSeekPositionUs:J

.field private final loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

.field private loadControlRegistered:Z

.field private loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

.field private loadingFinished:Z

.field private final minLoadableRetryCount:I

.field private pendingDiscontinuities:[Z

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private previousTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

.field private remainingReleaseCount:I

.field private trackCount:I

.field private trackEnabledStates:[Z

.field private trackFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;Lorg/telegram/messenger/exoplayer/LoadControl;I)V
    .locals 7
    .param p1, "chunkSource"    # Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;
    .param p2, "loadControl"    # Lorg/telegram/messenger/exoplayer/LoadControl;
    .param p3, "bufferSizeContribution"    # I

    .prologue
    const/4 v4, 0x0

    .line 114
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;Lorg/telegram/messenger/exoplayer/LoadControl;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;Lorg/telegram/messenger/exoplayer/LoadControl;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;I)V
    .locals 8
    .param p1, "chunkSource"    # Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;
    .param p2, "loadControl"    # Lorg/telegram/messenger/exoplayer/LoadControl;
    .param p3, "bufferSizeContribution"    # I
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;
    .param p6, "eventSourceId"    # I

    .prologue
    .line 120
    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;Lorg/telegram/messenger/exoplayer/LoadControl;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;II)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;Lorg/telegram/messenger/exoplayer/LoadControl;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;II)V
    .locals 2
    .param p1, "chunkSource"    # Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;
    .param p2, "loadControl"    # Lorg/telegram/messenger/exoplayer/LoadControl;
    .param p3, "bufferSizeContribution"    # I
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;
    .param p6, "eventSourceId"    # I
    .param p7, "minLoadableRetryCount"    # I

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    .line 128
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    .line 129
    iput p3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->bufferSizeContribution:I

    .line 130
    iput p7, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->minLoadableRetryCount:I

    .line 131
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    .line 132
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

    .line 133
    iput p6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventSourceId:I

    .line 134
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    .line 136
    new-instance v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;

    .prologue
    .line 45
    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventSourceId:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;)Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

    return-object v0
.end method

.method private buildTracks(Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;)V
    .locals 20
    .param p1, "extractor"    # Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    .prologue
    .line 505
    const/4 v14, 0x0

    .line 506
    .local v14, "primaryExtractorTrackType":I
    const/4 v13, -0x1

    .line 507
    .local v13, "primaryExtractorTrackIndex":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->getTrackCount()I

    move-result v6

    .line 508
    .local v6, "extractorTrackCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_5

    .line 509
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->getMediaFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    .line 511
    .local v12, "mimeType":Ljava/lang/String;
    invoke-static {v12}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 512
    const/16 v17, 0x3

    .line 520
    .local v17, "trackType":I
    :goto_1
    move/from16 v0, v17

    if-le v0, v14, :cond_4

    .line 521
    move/from16 v14, v17

    .line 522
    move v13, v9

    .line 508
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 513
    .end local v17    # "trackType":I
    :cond_1
    invoke-static {v12}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 514
    const/16 v17, 0x2

    .restart local v17    # "trackType":I
    goto :goto_1

    .line 515
    .end local v17    # "trackType":I
    :cond_2
    invoke-static {v12}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 516
    const/16 v17, 0x1

    .restart local v17    # "trackType":I
    goto :goto_1

    .line 518
    .end local v17    # "trackType":I
    :cond_3
    const/16 v17, 0x0

    .restart local v17    # "trackType":I
    goto :goto_1

    .line 523
    :cond_4
    move/from16 v0, v17

    if-ne v0, v14, :cond_0

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_0

    .line 526
    const/4 v13, -0x1

    goto :goto_2

    .line 531
    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v17    # "trackType":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getTrackCount()I

    move-result v2

    .line 532
    .local v2, "chunkSourceTrackCount":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_8

    const/4 v3, 0x1

    .line 533
    .local v3, "expandPrimaryExtractorTrack":Z
    :goto_3
    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    .line 534
    if-eqz v3, :cond_6

    .line 535
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v2, -0x1

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    .line 539
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    .line 540
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Z

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackEnabledStates:[Z

    .line 541
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Z

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    .line 542
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    .line 543
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSourceTrackIndices:[I

    .line 544
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    .line 545
    new-array v0, v6, [Z

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getDurationUs()J

    move-result-wide v4

    .line 549
    .local v4, "durationUs":J
    const/4 v15, 0x0

    .line 550
    .local v15, "trackIndex":I
    const/4 v9, 0x0

    move/from16 v16, v15

    .end local v15    # "trackIndex":I
    .local v16, "trackIndex":I
    :goto_4
    if-ge v9, v6, :cond_d

    .line 551
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->getMediaFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyWithDurationUs(J)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v8

    .line 552
    .local v8, "format":Lorg/telegram/messenger/exoplayer/MediaFormat;
    const/4 v11, 0x0

    .line 553
    .local v11, "language":Ljava/lang/String;
    iget-object v0, v8, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getMuxedAudioLanguage()Ljava/lang/String;

    move-result-object v11

    .line 558
    :cond_7
    :goto_5
    if-ne v9, v13, :cond_c

    .line 559
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_6
    if-ge v10, v2, :cond_b

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    move-object/from16 v18, v0

    aput v9, v18, v16

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSourceTrackIndices:[I

    move-object/from16 v18, v0

    aput v10, v18, v16

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getFixedTrackVariant(I)Lorg/telegram/messenger/exoplayer/hls/Variant;

    move-result-object v7

    .line 563
    .local v7, "fixedTrackVariant":Lorg/telegram/messenger/exoplayer/hls/Variant;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v19, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "trackIndex":I
    .restart local v15    # "trackIndex":I
    if-nez v7, :cond_a

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyAsAdaptive(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v18

    :goto_7
    aput-object v18, v19, v16

    .line 559
    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v15

    .end local v15    # "trackIndex":I
    .restart local v16    # "trackIndex":I
    goto :goto_6

    .line 532
    .end local v3    # "expandPrimaryExtractorTrack":Z
    .end local v4    # "durationUs":J
    .end local v7    # "fixedTrackVariant":Lorg/telegram/messenger/exoplayer/hls/Variant;
    .end local v8    # "format":Lorg/telegram/messenger/exoplayer/MediaFormat;
    .end local v10    # "j":I
    .end local v11    # "language":Ljava/lang/String;
    .end local v16    # "trackIndex":I
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 555
    .restart local v3    # "expandPrimaryExtractorTrack":Z
    .restart local v4    # "durationUs":J
    .restart local v8    # "format":Lorg/telegram/messenger/exoplayer/MediaFormat;
    .restart local v11    # "language":Ljava/lang/String;
    .restart local v16    # "trackIndex":I
    :cond_9
    const-string/jumbo v18, "application/eia-608"

    iget-object v0, v8, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getMuxedCaptionLanguage()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 563
    .end local v16    # "trackIndex":I
    .restart local v7    # "fixedTrackVariant":Lorg/telegram/messenger/exoplayer/hls/Variant;
    .restart local v10    # "j":I
    .restart local v15    # "trackIndex":I
    :cond_a
    iget-object v0, v7, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v8, v0, v11}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->copyWithFixedTrackInfo(Lorg/telegram/messenger/exoplayer/MediaFormat;Lorg/telegram/messenger/exoplayer/chunk/Format;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v18

    goto :goto_7

    .end local v7    # "fixedTrackVariant":Lorg/telegram/messenger/exoplayer/hls/Variant;
    .end local v15    # "trackIndex":I
    .restart local v16    # "trackIndex":I
    :cond_b
    move/from16 v15, v16

    .line 550
    .end local v10    # "j":I
    .end local v16    # "trackIndex":I
    .restart local v15    # "trackIndex":I
    :goto_8
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v15

    .end local v15    # "trackIndex":I
    .restart local v16    # "trackIndex":I
    goto/16 :goto_4

    .line 567
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    move-object/from16 v18, v0

    aput v9, v18, v16

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSourceTrackIndices:[I

    move-object/from16 v18, v0

    const/16 v19, -0x1

    aput v19, v18, v16

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v18, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "trackIndex":I
    .restart local v15    # "trackIndex":I
    invoke-virtual {v8, v11}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyWithLanguage(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v19

    aput-object v19, v18, v16

    goto :goto_8

    .line 572
    .end local v8    # "format":Lorg/telegram/messenger/exoplayer/MediaFormat;
    .end local v11    # "language":Ljava/lang/String;
    .end local v15    # "trackIndex":I
    .restart local v16    # "trackIndex":I
    :cond_d
    return-void
.end method

.method private clearCurrentLoadable()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 683
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    .line 684
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    .line 685
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 686
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    .line 687
    return-void
.end method

.method private clearState()V
    .locals 2

    .prologue
    .line 674
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 675
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->clear()V

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 677
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 678
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->clearCurrentLoadable()V

    .line 679
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    .line 680
    return-void
.end method

.method private static copyWithFixedTrackInfo(Lorg/telegram/messenger/exoplayer/MediaFormat;Lorg/telegram/messenger/exoplayer/chunk/Format;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 6
    .param p0, "format"    # Lorg/telegram/messenger/exoplayer/MediaFormat;
    .param p1, "fixedTrackFormat"    # Lorg/telegram/messenger/exoplayer/chunk/Format;
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 600
    iget v1, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    if-ne v1, v0, :cond_0

    move v3, v0

    .line 601
    .local v3, "width":I
    :goto_0
    iget v1, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    if-ne v1, v0, :cond_1

    move v4, v0

    .line 602
    .local v4, "height":I
    :goto_1
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget v2, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyWithFixedTrackInfo(Ljava/lang/String;IIILjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0

    .line 600
    .end local v3    # "width":I
    .end local v4    # "height":I
    :cond_0
    iget v3, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    goto :goto_0

    .line 601
    .restart local v3    # "width":I
    :cond_1
    iget v4, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    goto :goto_1
.end method

.method private discardSamplesForDisabledTracks(Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;J)V
    .locals 2
    .param p1, "extractor"    # Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    .param p2, "timeUs"    # J

    .prologue
    .line 640
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_1

    .line 648
    :cond_0
    return-void

    .line 643
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 644
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_2

    .line 645
    invoke-virtual {p1, v0, p2, p3}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->discardUntil(IJ)V

    .line 643
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getCurrentExtractor()Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    .locals 3

    .prologue
    .line 630
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    .line 631
    .local v0, "extractor":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->haveSamplesForEnabledTracks(Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->clear()V

    .line 634
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "extractor":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    .restart local v0    # "extractor":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    goto :goto_0

    .line 636
    :cond_0
    return-object v0
.end method

.method private getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 755
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 758
    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-nez v0, :cond_2

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->endTimeUs:J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->endTimeUs:J

    goto :goto_0
.end method

.method private getRetryDelayMillis(J)J
    .locals 5
    .param p1, "errorCount"    # J

    .prologue
    .line 772
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private haveSamplesForEnabledTracks(Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;)Z
    .locals 3
    .param p1, "extractor"    # Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    .prologue
    const/4 v1, 0x0

    .line 651
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v2

    if-nez v2, :cond_1

    .line 659
    :cond_0
    :goto_0
    return v1

    .line 654
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 655
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->hasSamples(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 656
    const/4 v1, 0x1

    goto :goto_0

    .line 654
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isPendingReset()Z
    .locals 4

    .prologue
    .line 768
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTsChunk(Lorg/telegram/messenger/exoplayer/chunk/Chunk;)Z
    .locals 1
    .param p1, "chunk"    # Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    .prologue
    .line 764
    instance-of v0, p1, Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    return v0
.end method

.method private maybeStartLoading()V
    .locals 31

    .prologue
    .line 690
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    .line 691
    .local v28, "now":J
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->getNextLoadPositionUs()J

    move-result-wide v8

    .line 692
    .local v8, "nextLoadPositionUs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v4, :cond_2

    const/16 v25, 0x1

    .line 693
    .local v25, "isBackedOff":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v25, :cond_3

    :cond_0
    const/4 v10, 0x1

    .line 696
    .local v10, "loadingOrBackedOff":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    move-object/from16 v5, p0

    invoke-interface/range {v4 .. v10}, Lorg/telegram/messenger/exoplayer/LoadControl;->update(Ljava/lang/Object;JJZ)Z

    move-result v27

    .line 699
    .local v27, "nextLoader":Z
    if-eqz v25, :cond_4

    .line 700
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionTimestamp:J

    sub-long v22, v28, v4

    .line 701
    .local v22, "elapsedMillis":J
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->getRetryDelayMillis(J)J

    move-result-wide v4

    cmp-long v4, v22, v4

    if-ltz v4, :cond_1

    .line 702
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 703
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V

    .line 748
    .end local v22    # "elapsedMillis":J
    :cond_1
    :goto_2
    return-void

    .line 692
    .end local v10    # "loadingOrBackedOff":Z
    .end local v25    # "isBackedOff":Z
    .end local v27    # "nextLoader":Z
    :cond_2
    const/16 v25, 0x0

    goto :goto_0

    .line 693
    .restart local v25    # "isBackedOff":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 708
    .restart local v10    # "loadingOrBackedOff":Z
    .restart local v27    # "nextLoader":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-eqz v4, :cond_1

    .line 712
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v4, v4, v12

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;

    invoke-virtual {v6, v7, v4, v5, v12}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getChunkOperation(Lorg/telegram/messenger/exoplayer/hls/TsChunk;JLorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;

    iget-boolean v11, v4, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    .line 716
    .local v11, "endOfStream":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    move-object/from16 v26, v0

    .line 717
    .local v26, "nextLoadable":Lorg/telegram/messenger/exoplayer/chunk/Chunk;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->clear()V

    .line 719
    if-eqz v11, :cond_7

    .line 720
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    .line 721
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    move-object/from16 v13, p0

    invoke-interface/range {v12 .. v18}, Lorg/telegram/messenger/exoplayer/LoadControl;->update(Ljava/lang/Object;JJZ)Z

    goto :goto_2

    .line 712
    .end local v11    # "endOfStream":Z
    .end local v26    # "nextLoadable":Lorg/telegram/messenger/exoplayer/chunk/Chunk;
    :cond_6
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    goto :goto_3

    .line 724
    .restart local v11    # "endOfStream":Z
    .restart local v26    # "nextLoadable":Lorg/telegram/messenger/exoplayer/chunk/Chunk;
    :cond_7
    if-eqz v26, :cond_1

    .line 728
    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadStartTimeMs:J

    .line 729
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    .line 730
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isTsChunk(Lorg/telegram/messenger/exoplayer/chunk/Chunk;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    move-object/from16 v30, v0

    check-cast v30, Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    .line 732
    .local v30, "tsChunk":Lorg/telegram/messenger/exoplayer/hls/TsChunk;
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 733
    const-wide/high16 v4, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 735
    :cond_8
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    move-object/from16 v24, v0

    .line 736
    .local v24, "extractorWrapper":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v24

    if-eq v4, v0, :cond_a

    .line 737
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer/LoadControl;->getAllocator()Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->init(Lorg/telegram/messenger/exoplayer/upstream/Allocator;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 740
    :cond_a
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-wide v13, v4, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->length:J

    move-object/from16 v0, v30

    iget v15, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->type:I

    move-object/from16 v0, v30

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->trigger:I

    move/from16 v16, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-object/from16 v17, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->startTimeUs:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->endTimeUs:J

    move-wide/from16 v20, v0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v21}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->notifyLoadStarted(JIILorg/telegram/messenger/exoplayer/chunk/Format;JJ)V

    .line 742
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    .line 747
    .end local v24    # "extractorWrapper":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    .end local v30    # "tsChunk":Lorg/telegram/messenger/exoplayer/hls/TsChunk;
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V

    goto/16 :goto_2

    .line 744
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-wide v13, v4, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->length:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget v15, v4, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget v0, v4, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->trigger:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-object/from16 v17, v0

    const-wide/16 v18, -0x1

    const-wide/16 v20, -0x1

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v21}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->notifyLoadStarted(JIILorg/telegram/messenger/exoplayer/chunk/Format;JJ)V

    goto :goto_4
.end method

.method private notifyDownstreamFormatChanged(Lorg/telegram/messenger/exoplayer/chunk/Format;IJ)V
    .locals 7
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer/chunk/Format;
    .param p2, "trigger"    # I
    .param p3, "positionUs"    # J

    .prologue
    .line 830
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 831
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$5;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;Lorg/telegram/messenger/exoplayer/chunk/Format;IJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 839
    :cond_0
    return-void
.end method

.method private notifyLoadCanceled(J)V
    .locals 3
    .param p1, "bytesLoaded"    # J

    .prologue
    .line 807
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$3;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 815
    :cond_0
    return-void
.end method

.method private notifyLoadCompleted(JIILorg/telegram/messenger/exoplayer/chunk/Format;JJJJ)V
    .locals 18
    .param p1, "bytesLoaded"    # J
    .param p3, "type"    # I
    .param p4, "trigger"    # I
    .param p5, "format"    # Lorg/telegram/messenger/exoplayer/chunk/Format;
    .param p6, "mediaStartTimeUs"    # J
    .param p8, "mediaEndTimeUs"    # J
    .param p10, "elapsedRealtimeMs"    # J
    .param p12, "loadDurationMs"    # J

    .prologue
    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v2, :cond_0

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v3, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$2;

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v3 .. v17}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$2;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;JIILorg/telegram/messenger/exoplayer/chunk/Format;JJJJ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 804
    :cond_0
    return-void
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 818
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$4;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 826
    :cond_0
    return-void
.end method

.method private notifyLoadStarted(JIILorg/telegram/messenger/exoplayer/chunk/Format;JJ)V
    .locals 12
    .param p1, "length"    # J
    .param p3, "type"    # I
    .param p4, "trigger"    # I
    .param p5, "format"    # Lorg/telegram/messenger/exoplayer/chunk/Format;
    .param p6, "mediaStartTimeUs"    # J
    .param p8, "mediaEndTimeUs"    # J

    .prologue
    .line 781
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$1;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$1;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;JIILorg/telegram/messenger/exoplayer/chunk/Format;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 790
    :cond_0
    return-void
.end method

.method private restartFrom(J)V
    .locals 1
    .param p1, "positionUs"    # J

    .prologue
    .line 663
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    .line 665
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->cancelLoading()V

    .line 671
    :goto_0
    return-void

    .line 668
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->clearState()V

    .line 669
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    goto :goto_0
.end method

.method private seekToInternal(J)V
    .locals 3
    .param p1, "positionUs"    # J

    .prologue
    .line 612
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    .line 613
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 614
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 615
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->seek()V

    .line 616
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->restartFrom(J)V

    .line 617
    return-void
.end method

.method private setTrackEnabledState(IZ)V
    .locals 4
    .param p1, "track"    # I
    .param p2, "enabledState"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 581
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackEnabledStates:[Z

    aget-boolean v1, v1, p1

    if-eq v1, p2, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 582
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    aget v0, v1, p1

    .line 583
    .local v0, "extractorTrack":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    aget-boolean v1, v1, v0

    if-eq v1, p2, :cond_0

    move v3, v2

    :cond_0
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 584
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackEnabledStates:[Z

    aput-boolean p2, v1, p1

    .line 585
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    aput-boolean p2, v1, v0

    .line 586
    iget v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-eqz p2, :cond_2

    :goto_1
    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    .line 587
    return-void

    .end local v0    # "extractorTrack":I
    :cond_1
    move v1, v3

    .line 581
    goto :goto_0

    .line 586
    .restart local v0    # "extractorTrack":I
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method


# virtual methods
.method public continueBuffering(IJ)Z
    .locals 8
    .param p1, "track"    # I
    .param p2, "playbackPositionUs"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 258
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 259
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackEnabledStates:[Z

    aget-boolean v5, v5, p1

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 260
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 261
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 262
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->getCurrentExtractor()Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    invoke-direct {p0, v5, v6, v7}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->discardSamplesForDisabledTracks(Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;J)V

    .line 264
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    .line 265
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    if-eqz v5, :cond_2

    .line 281
    :cond_1
    :goto_0
    return v3

    .line 268
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v3, v4

    .line 269
    goto :goto_0

    .line 271
    :cond_4
    const/4 v1, 0x0

    .local v1, "extractorIndex":I
    :goto_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 272
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    .line 273
    .local v0, "extractor":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v5

    if-nez v5, :cond_6

    .end local v0    # "extractor":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    :cond_5
    move v3, v4

    .line 281
    goto :goto_0

    .line 276
    .restart local v0    # "extractor":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    :cond_6
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    aget v2, v5, p1

    .line 277
    .local v2, "extractorTrack":I
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->hasSamples(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public disable(I)V
    .locals 3
    .param p1, "track"    # I

    .prologue
    const/4 v2, 0x0

    .line 238
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 239
    invoke-direct {p0, p1, v2}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->setTrackEnabledState(IZ)V

    .line 240
    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->reset()V

    .line 242
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 243
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer/LoadControl;->unregister(Ljava/lang/Object;)V

    .line 245
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->cancelLoading()V

    .line 254
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->clearState()V

    .line 251
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/LoadControl;->trimAllocator()V

    goto :goto_0
.end method

.method public enable(IJ)V
    .locals 6
    .param p1, "track"    # I
    .param p2, "positionUs"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 199
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 200
    invoke-direct {p0, p1, v4}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->setTrackEnabledState(IZ)V

    .line 201
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aput-object v5, v2, p1

    .line 202
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    .line 203
    iput-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;

    .line 204
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    .line 205
    .local v1, "wasLoadControlRegistered":Z
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    if-nez v2, :cond_0

    .line 206
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    iget v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->bufferSizeContribution:I

    invoke-interface {v2, p0, v3}, Lorg/telegram/messenger/exoplayer/LoadControl;->register(Ljava/lang/Object;I)V

    .line 207
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    .line 210
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->isLive()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 p2, 0x0

    .line 211
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSourceTrackIndices:[I

    aget v0, v2, p1

    .line 212
    .local v0, "chunkSourceTrack":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getSelectedTrackIndex()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 217
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectTrack(I)V

    .line 218
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->seekToInternal(J)V

    .line 234
    :cond_2
    :goto_0
    return-void

    .line 221
    :cond_3
    iget v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-ne v2, v4, :cond_2

    .line 222
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    .line 223
    if-eqz v1, :cond_4

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_4

    .line 228
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    goto :goto_0

    .line 230
    :cond_4
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 231
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->restartFrom(J)V

    goto :goto_0
.end method

.method public getBufferedPositionUs()J
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 387
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 388
    iget v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-lez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 389
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 401
    :cond_0
    :goto_1
    return-wide v0

    .line 388
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 391
    :cond_2
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    if-eqz v2, :cond_3

    .line 392
    const-wide/16 v0, -0x3

    goto :goto_1

    .line 394
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->getLargestParsedTimestampUs()J

    move-result-wide v0

    .line 395
    .local v0, "largestParsedTimestampUs":J
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v3, :cond_4

    .line 398
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->getLargestParsedTimestampUs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 401
    :cond_4
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    goto :goto_1
.end method

.method public getFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 1
    .param p1, "track"    # I

    .prologue
    .line 193
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 194
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 188
    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    return v0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->minLoadableRetryCount:I

    if-le v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    throw v0

    .line 362
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    if-nez v0, :cond_1

    .line 363
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->maybeThrowError()V

    .line 365
    :cond_1
    return-void
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 2
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 443
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->notifyLoadCanceled(J)V

    .line 444
    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-lez v0, :cond_0

    .line 445
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->restartFrom(J)V

    .line 450
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->clearState()V

    .line 448
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/LoadControl;->trimAllocator()V

    goto :goto_0
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 14
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 423
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 424
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 425
    .local v10, "now":J
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadStartTimeMs:J

    sub-long v12, v10, v4

    .line 426
    .local v12, "loadDurationMs":J
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer/chunk/Chunk;)V

    .line 427
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isTsChunk(Lorg/telegram/messenger/exoplayer/chunk/Chunk;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    if-ne v0, v3, :cond_1

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 429
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    .line 430
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iget v3, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->type:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iget v4, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->trigger:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->startTimeUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->endTimeUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->notifyLoadCompleted(JIILorg/telegram/messenger/exoplayer/chunk/Format;JJJJ)V

    .line 437
    :goto_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->clearCurrentLoadable()V

    .line 438
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    .line 439
    return-void

    .end local v10    # "now":J
    .end local v12    # "loadDurationMs":J
    :cond_0
    move v0, v2

    .line 423
    goto :goto_0

    .restart local v10    # "now":J
    .restart local v12    # "loadDurationMs":J
    :cond_1
    move v1, v2

    .line 428
    goto :goto_1

    .line 434
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget v3, v0, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->type:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget v4, v0, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->trigger:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-object v0, p0

    move-wide v8, v6

    invoke-direct/range {v0 .. v13}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->notifyLoadCompleted(JIILorg/telegram/messenger/exoplayer/chunk/Format;JJJJ)V

    goto :goto_2
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 454
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    invoke-virtual {v0, v1, p2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->onChunkLoadError(Lorg/telegram/messenger/exoplayer/chunk/Chunk;Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 459
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->clearCurrentLoadable()V

    .line 465
    :goto_0
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->notifyLoadError(Ljava/io/IOException;)V

    .line 466
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    .line 467
    return-void

    .line 461
    :cond_1
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 462
    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    .line 463
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionTimestamp:J

    goto :goto_0
.end method

.method public prepare(J)Z
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 147
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    if-eqz v1, :cond_0

    move v1, v2

    .line 182
    :goto_0
    return v1

    .line 149
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->prepare()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    .line 150
    goto :goto_0

    .line 152
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 155
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    .line 156
    .local v0, "extractor":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->buildTracks(Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;)V

    .line 158
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    .line 159
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    move v1, v2

    .line 160
    goto :goto_0

    .line 161
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 162
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->clear()V

    goto :goto_1

    .line 169
    .end local v0    # "extractor":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    if-nez v1, :cond_4

    .line 170
    new-instance v1, Lorg/telegram/messenger/exoplayer/upstream/Loader;

    const-string/jumbo v4, "Loader:HLS"

    invoke-direct {v1, v4}, Lorg/telegram/messenger/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    .line 171
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    iget v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->bufferSizeContribution:I

    invoke-interface {v1, p0, v4}, Lorg/telegram/messenger/exoplayer/LoadControl;->register(Ljava/lang/Object;I)V

    .line 172
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    .line 174
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_5

    .line 178
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 179
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 181
    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    move v1, v3

    .line 182
    goto :goto_0
.end method

.method public readData(IJLorg/telegram/messenger/exoplayer/MediaFormatHolder;Lorg/telegram/messenger/exoplayer/SampleHolder;)I
    .locals 10
    .param p1, "track"    # I
    .param p2, "playbackPositionUs"    # J
    .param p4, "formatHolder"    # Lorg/telegram/messenger/exoplayer/MediaFormatHolder;
    .param p5, "sampleHolder"    # Lorg/telegram/messenger/exoplayer/SampleHolder;

    .prologue
    .line 296
    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v6}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 297
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 299
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v6, v6, p1

    if-nez v6, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 300
    :cond_0
    const/4 v6, -0x2

    .line 355
    :goto_0
    return v6

    .line 303
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->getCurrentExtractor()Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    move-result-object v1

    .line 304
    .local v1, "extractor":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v6

    if-nez v6, :cond_2

    .line 305
    const/4 v6, -0x2

    goto :goto_0

    .line 308
    :cond_2
    iget-object v4, v1, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    .line 309
    .local v4, "format":Lorg/telegram/messenger/exoplayer/chunk/Format;
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 310
    iget v6, v1, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->trigger:I

    iget-wide v8, v1, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->startTimeUs:J

    invoke-direct {p0, v4, v6, v8, v9}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->notifyDownstreamFormatChanged(Lorg/telegram/messenger/exoplayer/chunk/Format;IJ)V

    .line 312
    :cond_3
    iput-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;

    .line 314
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_4

    .line 317
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->configureSpliceTo(Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;)V

    .line 320
    :cond_4
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    aget v3, v6, p1

    .line 321
    .local v3, "extractorTrack":I
    const/4 v2, 0x0

    .line 322
    .local v2, "extractorIndex":I
    :cond_5
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    add-int/lit8 v7, v2, 0x1

    if-le v6, v7, :cond_6

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->hasSamples(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 325
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "extractor":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    check-cast v1, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    .line 326
    .restart local v1    # "extractor":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v6

    if-nez v6, :cond_5

    .line 327
    const/4 v6, -0x2

    goto :goto_0

    .line 331
    :cond_6
    invoke-virtual {v1, v3}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->getMediaFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v5

    .line 332
    .local v5, "mediaFormat":Lorg/telegram/messenger/exoplayer/MediaFormat;
    if-eqz v5, :cond_8

    .line 333
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer/MediaFormat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 334
    iput-object v5, p4, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    .line 335
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aput-object v5, v6, p1

    .line 336
    const/4 v6, -0x4

    goto :goto_0

    .line 342
    :cond_7
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aput-object v5, v6, p1

    .line 345
    :cond_8
    invoke-virtual {v1, v3, p5}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->getSample(ILorg/telegram/messenger/exoplayer/SampleHolder;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 346
    iget-wide v6, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_9

    const/4 v0, 0x1

    .line 347
    .local v0, "decodeOnly":Z
    :goto_1
    iget v7, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->flags:I

    if-eqz v0, :cond_a

    const/high16 v6, 0x8000000

    :goto_2
    or-int/2addr v6, v7

    iput v6, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->flags:I

    .line 348
    const/4 v6, -0x3

    goto/16 :goto_0

    .line 346
    .end local v0    # "decodeOnly":Z
    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 347
    .restart local v0    # "decodeOnly":Z
    :cond_a
    const/4 v6, 0x0

    goto :goto_2

    .line 351
    .end local v0    # "decodeOnly":Z
    :cond_b
    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    if-eqz v6, :cond_c

    .line 352
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 355
    :cond_c
    const/4 v6, -0x2

    goto/16 :goto_0
.end method

.method public readDiscontinuity(I)J
    .locals 2
    .param p1, "track"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 288
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    .line 290
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public register()Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    .line 142
    return-object p0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 409
    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    if-eqz v0, :cond_1

    .line 410
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer/LoadControl;->unregister(Ljava/lang/Object;)V

    .line 412
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    .line 414
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->release()V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    .line 417
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 408
    goto :goto_0
.end method

.method public seekToUs(J)V
    .locals 3
    .param p1, "positionUs"    # J

    .prologue
    .line 369
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 370
    iget v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 372
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->isLive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 p1, 0x0

    .line 375
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 376
    .local v0, "currentPositionUs":J
    :goto_1
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 377
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    .line 378
    cmp-long v2, v0, p1

    if-nez v2, :cond_3

    .line 383
    :goto_2
    return-void

    .line 370
    .end local v0    # "currentPositionUs":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 375
    :cond_2
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    goto :goto_1

    .line 382
    .restart local v0    # "currentPositionUs":J
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->seekToInternal(J)V

    goto :goto_2
.end method

.method usToMs(J)J
    .locals 3
    .param p1, "timeUs"    # J

    .prologue
    .line 776
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method
