.class public Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector$Output;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;,
        Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;,
        Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;,
        Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;
    }
.end annotation


# static fields
.field private static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field public static final ADAPTIVE_MODE_ABRUPT:I = 0x3

.field public static final ADAPTIVE_MODE_NONE:I = 0x0

.field public static final ADAPTIVE_MODE_SPLICE:I = 0x1

.field private static final BANDWIDTH_FRACTION:F = 0.8f

.field public static final DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS:J = 0x4e20L

.field public static final DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS:J = 0x1388L

.field public static final DEFAULT_PLAYLIST_BLACKLIST_MS:J = 0xea60L

.field private static final MP3_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field private static final TAG:Ljava/lang/String; = "HlsChunkSource"

.field private static final VTT_FILE_EXTENSION:Ljava/lang/String; = ".vtt"

.field private static final WEBVTT_FILE_EXTENSION:Ljava/lang/String; = ".webvtt"


# instance fields
.field private final adaptiveMode:I

.field private final bandwidthMeter:Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;

.field private final baseUri:Ljava/lang/String;

.field private final dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

.field private durationUs:J

.field private encryptionIv:[B

.field private encryptionIvString:Ljava/lang/String;

.field private encryptionKey:[B

.field private encryptionKeyUri:Landroid/net/Uri;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;

.field private fatalError:Ljava/io/IOException;

.field private final isMaster:Z

.field private live:Z

.field private final masterPlaylist:Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;

.field private final maxBufferDurationToSwitchDownUs:J

.field private final minBufferDurationToSwitchUpUs:J

.field private final playlistParser:Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;

.field private prepareCalled:Z

.field private scratchSpace:[B

.field private selectedTrackIndex:I

.field private selectedVariantIndex:I

.field private final timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;

.field private final trackSelector:Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;

.field private final tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;",
            ">;"
        }
    .end annotation
.end field

.field private variantBlacklistTimes:[J

.field private variantLastPlaylistLoadTimesMs:[J

.field private variantPlaylists:[Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

.field private variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;


# direct methods
.method public constructor <init>(ZLorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;I)V
    .locals 14
    .param p1, "isMaster"    # Z
    .param p2, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p3, "playlist"    # Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;
    .param p4, "trackSelector"    # Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;
    .param p5, "bandwidthMeter"    # Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;
    .param p6, "timestampAdjusterProvider"    # Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;
    .param p7, "adaptiveMode"    # I

    .prologue
    .line 192
    const-wide/16 v8, 0x1388

    const-wide/16 v10, 0x4e20

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v13}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;-><init>(ZLorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;IJJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;)V

    .line 195
    return-void
.end method

.method public constructor <init>(ZLorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;IJJ)V
    .locals 14
    .param p1, "isMaster"    # Z
    .param p2, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p3, "playlist"    # Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;
    .param p4, "trackSelector"    # Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;
    .param p5, "bandwidthMeter"    # Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;
    .param p6, "timestampAdjusterProvider"    # Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;
    .param p7, "adaptiveMode"    # I
    .param p8, "minBufferDurationToSwitchUpMs"    # J
    .param p10, "maxBufferDurationToSwitchDownMs"    # J

    .prologue
    .line 220
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;-><init>(ZLorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;IJJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;)V

    .line 223
    return-void
.end method

.method public constructor <init>(ZLorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;IJJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;)V
    .locals 14
    .param p1, "isMaster"    # Z
    .param p2, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p3, "playlist"    # Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;
    .param p4, "trackSelector"    # Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;
    .param p5, "bandwidthMeter"    # Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;
    .param p6, "timestampAdjusterProvider"    # Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;
    .param p7, "adaptiveMode"    # I
    .param p8, "minBufferDurationToSwitchUpMs"    # J
    .param p10, "maxBufferDurationToSwitchDownMs"    # J
    .param p12, "eventHandler"    # Landroid/os/Handler;
    .param p13, "eventListener"    # Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->isMaster:Z

    .line 253
    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    .line 254
    move-object/from16 v0, p4

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->trackSelector:Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;

    .line 255
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->bandwidthMeter:Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;

    .line 256
    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;

    .line 257
    move/from16 v0, p7

    iput v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->adaptiveMode:I

    .line 258
    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;

    .line 259
    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->eventHandler:Landroid/os/Handler;

    .line 260
    const-wide/16 v6, 0x3e8

    mul-long v6, v6, p8

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->minBufferDurationToSwitchUpUs:J

    .line 261
    const-wide/16 v6, 0x3e8

    mul-long v6, v6, p10

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->maxBufferDurationToSwitchDownUs:J

    .line 262
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;->baseUri:Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    .line 263
    new-instance v3, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->playlistParser:Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;

    .line 264
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    .line 266
    move-object/from16 v0, p3

    iget v3, v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;->type:I

    if-nez v3, :cond_0

    .line 267
    check-cast p3, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;

    .end local p3    # "playlist":Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;
    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;

    .line 276
    :goto_0
    return-void

    .line 269
    .restart local p3    # "playlist":Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;
    :cond_0
    new-instance v2, Lorg/telegram/messenger/exoplayer/chunk/Format;

    const-string/jumbo v3, "0"

    const-string/jumbo v4, "application/x-mpegURL"

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    .line 271
    .local v2, "format":Lorg/telegram/messenger/exoplayer/chunk/Format;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v5, "variants":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer/hls/Variant;>;"
    new-instance v3, Lorg/telegram/messenger/exoplayer/hls/Variant;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lorg/telegram/messenger/exoplayer/hls/Variant;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/chunk/Format;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v3, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;

    goto :goto_0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;)Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;

    return-object v0
.end method

.method private allVariantsBlacklisted()Z
    .locals 6

    .prologue
    .line 839
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 840
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 841
    const/4 v1, 0x0

    .line 844
    :goto_1
    return v1

    .line 839
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 844
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private clearEncryptionData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 825
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 826
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    .line 827
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 828
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    .line 829
    return-void
.end method

.method private clearStaleBlacklistedVariants()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 848
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 849
    .local v0, "currentTime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 850
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v4, v3, v2

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v4, v3, v2

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 852
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aput-wide v8, v3, v2

    .line 849
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 855
    :cond_1
    return-void
.end method

.method private getLiveStartChunkMediaSequence(I)I
    .locals 4
    .param p1, "variantIndex"    # I

    .prologue
    .line 786
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    aget-object v1, v2, p1

    .line 787
    .local v1, "mediaPlaylist":Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;
    iget-object v2, v1, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    iget-object v2, v1, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x3

    .line 788
    .local v0, "chunkIndex":I
    :goto_0
    iget v2, v1, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int/2addr v2, v0

    return v2

    .line 787
    .end local v0    # "chunkIndex":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNextVariantIndex(Lorg/telegram/messenger/exoplayer/hls/TsChunk;J)I
    .locals 12
    .param p1, "previousTsChunk"    # Lorg/telegram/messenger/exoplayer/hls/TsChunk;
    .param p2, "playbackPositionUs"    # J

    .prologue
    const-wide/16 v10, 0x0

    .line 722
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->clearStaleBlacklistedVariants()V

    .line 723
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->bandwidthMeter:Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v7}, Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    .line 724
    .local v0, "bitrateEstimate":J
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    iget v8, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-wide v8, v7, v8

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    .line 726
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getVariantIndexForBandwidth(J)I

    move-result v6

    .line 753
    :cond_0
    :goto_0
    return v6

    .line 728
    :cond_1
    if-nez p1, :cond_2

    .line 730
    iget v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    .line 732
    :cond_2
    const-wide/16 v8, -0x1

    cmp-long v7, v0, v8

    if-nez v7, :cond_3

    .line 734
    iget v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    .line 736
    :cond_3
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getVariantIndexForBandwidth(J)I

    move-result v6

    .line 737
    .local v6, "idealIndex":I
    iget v7, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-ne v6, v7, :cond_4

    .line 739
    iget v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    .line 743
    :cond_4
    iget v7, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->adaptiveMode:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->startTimeUs:J

    .line 745
    .local v2, "bufferedPositionUs":J
    :goto_1
    sub-long v4, v2, p2

    .line 746
    .local v4, "bufferedUs":J
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    iget v8, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-wide v8, v7, v8

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    iget v7, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-le v6, v7, :cond_5

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->maxBufferDurationToSwitchDownUs:J

    cmp-long v7, v4, v8

    if-ltz v7, :cond_0

    :cond_5
    iget v7, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-ge v6, v7, :cond_6

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->minBufferDurationToSwitchUpUs:J

    cmp-long v7, v4, v8

    if-gtz v7, :cond_0

    .line 753
    :cond_6
    iget v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    .line 743
    .end local v2    # "bufferedPositionUs":J
    .end local v4    # "bufferedUs":J
    :cond_7
    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->endTimeUs:J

    goto :goto_1
.end method

.method private getVariantIndex(Lorg/telegram/messenger/exoplayer/chunk/Format;)I
    .locals 4
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer/chunk/Format;

    .prologue
    .line 858
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 859
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    return v0

    .line 858
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 864
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getVariantIndexForBandwidth(J)I
    .locals 9
    .param p1, "bitrateEstimate"    # J

    .prologue
    .line 757
    const-wide/16 v4, -0x1

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    .line 759
    const-wide/16 p1, 0x0

    .line 761
    :cond_0
    long-to-float v3, p1

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 762
    .local v0, "effectiveBitrate":I
    const/4 v2, -0x1

    .line 763
    .local v2, "lowestQualityEnabledVariantIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 764
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v4, v3, v1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 765
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget v3, v3, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    if-gt v3, v0, :cond_1

    .line 773
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 768
    .restart local v1    # "i":I
    :cond_1
    move v2, v1

    .line 763
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 772
    :cond_3
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    move v1, v2

    .line 773
    goto :goto_1

    .line 772
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    .locals 8
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "variantIndex"    # I

    .prologue
    .line 800
    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 801
    .local v0, "dataSpec":Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    new-instance v1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    move-object v3, v0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;[BLjava/lang/String;I)V

    return-object v1
.end method

.method private newMediaPlaylistChunk(I)Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    .locals 9
    .param p1, "variantIndex"    # I

    .prologue
    .line 792
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    aget-object v3, v3, p1

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer/hls/Variant;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 793
    .local v1, "mediaPlaylistUri":Landroid/net/Uri;
    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 795
    .local v0, "dataSpec":Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    new-instance v2, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->playlistParser:Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v0

    move v7, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;[BLorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;ILjava/lang/String;)V

    return-object v2
.end method

.method private setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 7
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "secretKey"    # [B

    .prologue
    const/16 v6, 0x10

    .line 806
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 807
    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 812
    .local v3, "trimmedIv":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 813
    .local v0, "ivData":[B
    new-array v1, v6, [B

    .line 814
    .local v1, "ivDataWithPadding":[B
    array-length v4, v0

    if-le v4, v6, :cond_1

    array-length v4, v0

    add-int/lit8 v2, v4, -0x10

    .line 815
    .local v2, "offset":I
    :goto_1
    array-length v4, v1

    array-length v5, v0

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 818
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 819
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    .line 820
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 821
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    .line 822
    return-void

    .line 809
    .end local v0    # "ivData":[B
    .end local v1    # "ivDataWithPadding":[B
    .end local v2    # "offset":I
    .end local v3    # "trimmedIv":Ljava/lang/String;
    :cond_0
    move-object v3, p2

    .restart local v3    # "trimmedIv":Ljava/lang/String;
    goto :goto_0

    .line 814
    .restart local v0    # "ivData":[B
    .restart local v1    # "ivDataWithPadding":[B
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setMediaPlaylist(ILorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;)V
    .locals 4
    .param p1, "variantIndex"    # I
    .param p2, "mediaPlaylist"    # Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    .prologue
    .line 832
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, p1

    .line 833
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    aput-object p2, v0, p1

    .line 834
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->live:Z

    iget-boolean v1, p2, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->live:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->live:Z

    .line 835
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->durationUs:J

    .line 836
    return-void

    .line 835
    :cond_0
    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->durationUs:J

    goto :goto_0
.end method

.method private shouldRerequestLiveMediaPlaylist(I)Z
    .locals 8
    .param p1, "nextVariantIndex"    # I

    .prologue
    .line 778
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    aget-object v0, v1, p1

    .line 779
    .local v0, "mediaPlaylist":Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    aget-wide v6, v1, p1

    sub-long v2, v4, v6

    .line 781
    .local v2, "timeSinceLastMediaPlaylistLoadMs":J
    iget v1, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->targetDurationSecs:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adaptiveTrack(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;[Lorg/telegram/messenger/exoplayer/hls/Variant;)V
    .locals 7
    .param p1, "playlist"    # Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;
    .param p2, "variants"    # [Lorg/telegram/messenger/exoplayer/hls/Variant;

    .prologue
    .line 673
    new-instance v5, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$2;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$2;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;)V

    invoke-static {p2, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 682
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->bandwidthMeter:Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;

    invoke-virtual {p0, p1, p2, v5}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->computeDefaultVariantIndex(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;[Lorg/telegram/messenger/exoplayer/hls/Variant;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;)I

    move-result v0

    .line 683
    .local v0, "defaultVariantIndex":I
    const/4 v3, -0x1

    .line 684
    .local v3, "maxWidth":I
    const/4 v2, -0x1

    .line 686
    .local v2, "maxHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p2

    if-ge v1, v5, :cond_0

    .line 687
    aget-object v5, p2, v1

    iget-object v4, v5, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    .line 688
    .local v4, "variantFormat":Lorg/telegram/messenger/exoplayer/chunk/Format;
    iget v5, v4, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 689
    iget v5, v4, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 693
    .end local v4    # "variantFormat":Lorg/telegram/messenger/exoplayer/chunk/Format;
    :cond_0
    if-lez v3, :cond_1

    .line 694
    :goto_1
    if-lez v2, :cond_2

    .line 695
    :goto_2
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;

    invoke-direct {v6, p2, v0, v3, v2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;-><init>([Lorg/telegram/messenger/exoplayer/hls/Variant;III)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    return-void

    .line 693
    :cond_1
    const/16 v3, 0x780

    goto :goto_1

    .line 694
    :cond_2
    const/16 v2, 0x438

    goto :goto_2
.end method

.method protected computeDefaultVariantIndex(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;[Lorg/telegram/messenger/exoplayer/hls/Variant;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;)I
    .locals 6
    .param p1, "playlist"    # Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;
    .param p2, "variants"    # [Lorg/telegram/messenger/exoplayer/hls/Variant;
    .param p3, "bandwidthMeter"    # Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;

    .prologue
    .line 705
    const/4 v0, 0x0

    .line 706
    .local v0, "defaultVariantIndex":I
    const v2, 0x7fffffff

    .line 708
    .local v2, "minOriginalVariantIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_1

    .line 709
    iget-object v4, p1, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->variants:Ljava/util/List;

    aget-object v5, p2, v1

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 710
    .local v3, "originalVariantIndex":I
    if-ge v3, v2, :cond_0

    .line 711
    move v2, v3

    .line 712
    move v0, v1

    .line 708
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 716
    .end local v3    # "originalVariantIndex":I
    :cond_1
    return v0
.end method

.method public fixedTrack(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;Lorg/telegram/messenger/exoplayer/hls/Variant;)V
    .locals 2
    .param p1, "playlist"    # Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;
    .param p2, "variant"    # Lorg/telegram/messenger/exoplayer/hls/Variant;

    .prologue
    .line 700
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;

    invoke-direct {v1, p2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;-><init>(Lorg/telegram/messenger/exoplayer/hls/Variant;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    return-void
.end method

.method public getChunkOperation(Lorg/telegram/messenger/exoplayer/hls/TsChunk;JLorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;)V
    .locals 38
    .param p1, "previousTsChunk"    # Lorg/telegram/messenger/exoplayer/hls/TsChunk;
    .param p2, "playbackPositionUs"    # J
    .param p4, "out"    # Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;

    .prologue
    .line 436
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->adaptiveMode:I

    if-nez v4, :cond_1

    .line 437
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move/from16 v32, v0

    .line 438
    .local v32, "nextVariantIndex":I
    const/4 v11, 0x0

    .line 446
    .local v11, "switchingVariantSpliced":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    aget-object v31, v4, v32

    .line 447
    .local v31, "mediaPlaylist":Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;
    if-nez v31, :cond_3

    .line 449
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->newMediaPlaylistChunk(I)Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    .line 588
    :cond_0
    :goto_1
    return-void

    .line 440
    .end local v11    # "switchingVariantSpliced":Z
    .end local v31    # "mediaPlaylist":Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;
    .end local v32    # "nextVariantIndex":I
    :cond_1
    invoke-direct/range {p0 .. p3}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getNextVariantIndex(Lorg/telegram/messenger/exoplayer/hls/TsChunk;J)I

    move-result v32

    .line 441
    .restart local v32    # "nextVariantIndex":I
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    aget-object v4, v4, v32

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    invoke-virtual {v4, v12}, Lorg/telegram/messenger/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->adaptiveMode:I

    const/4 v12, 0x1

    if-ne v4, v12, :cond_2

    const/4 v11, 0x1

    .restart local v11    # "switchingVariantSpliced":Z
    :goto_2
    goto :goto_0

    .end local v11    # "switchingVariantSpliced":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 453
    .restart local v11    # "switchingVariantSpliced":Z
    .restart local v31    # "mediaPlaylist":Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;
    :cond_3
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    .line 454
    const/16 v22, 0x0

    .line 455
    .local v22, "chunkMediaSequence":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v4, :cond_7

    .line 456
    if-nez p1, :cond_5

    .line 457
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getLiveStartChunkMediaSequence(I)I

    move-result v22

    .line 477
    :cond_4
    :goto_3
    move-object/from16 v0, v31

    iget v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    sub-int v27, v22, v4

    .line 478
    .local v27, "chunkIndex":I
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v27

    if-lt v0, v4, :cond_b

    .line 479
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->live:Z

    if-nez v4, :cond_a

    .line 480
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    goto :goto_1

    .line 459
    .end local v27    # "chunkIndex":I
    :cond_5
    if-eqz v11, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->chunkIndex:I

    move/from16 v22, v0

    .line 461
    :goto_4
    move-object/from16 v0, v31

    iget v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    move/from16 v0, v22

    if-ge v0, v4, :cond_4

    .line 462
    new-instance v4, Lorg/telegram/messenger/exoplayer/BehindLiveWindowException;

    invoke-direct {v4}, Lorg/telegram/messenger/exoplayer/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_1

    .line 459
    :cond_6
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->chunkIndex:I

    add-int/lit8 v22, v4, 0x1

    goto :goto_4

    .line 468
    :cond_7
    if-nez p1, :cond_8

    .line 469
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v4, v12, v13, v14}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v4

    move-object/from16 v0, v31

    iget v12, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int v22, v4, v12

    goto :goto_3

    .line 472
    :cond_8
    if-eqz v11, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->chunkIndex:I

    move/from16 v22, v0

    :goto_5
    goto :goto_3

    :cond_9
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->chunkIndex:I

    add-int/lit8 v22, v4, 0x1

    goto :goto_5

    .line 481
    .restart local v27    # "chunkIndex":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->shouldRerequestLiveMediaPlaylist(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 482
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->newMediaPlaylistChunk(I)Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    goto/16 :goto_1

    .line 487
    :cond_b
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    move/from16 v0, v27

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;

    .line 488
    .local v33, "segment":Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v4, v12}, Lorg/telegram/messenger/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 491
    .local v3, "chunkUri":Landroid/net/Uri;
    move-object/from16 v0, v33

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->isEncrypted:Z

    if-eqz v4, :cond_e

    .line 492
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    invoke-static {v4, v12}, Lorg/telegram/messenger/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 493
    .local v29, "keyUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 495
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v4, v12}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    goto/16 :goto_1

    .line 498
    :cond_c
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    invoke-static {v4, v12}, Lorg/telegram/messenger/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 499
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v4, v12}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 506
    .end local v29    # "keyUri":Landroid/net/Uri;
    :cond_d
    :goto_6
    new-instance v2, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    move-object/from16 v0, v33

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeOffset:J

    move-object/from16 v0, v33

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 511
    .local v2, "dataSpec":Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v4, :cond_11

    .line 512
    if-nez p1, :cond_f

    .line 513
    const-wide/16 v8, 0x0

    .line 522
    .local v8, "startTimeUs":J
    :goto_7
    move-object/from16 v0, v33

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->durationSecs:D

    const-wide v14, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long v20, v8, v12

    .line 523
    .local v20, "endTimeUs":J
    const/4 v6, 0x0

    .line 524
    .local v6, "trigger":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-object v4, v4, v12

    iget-object v7, v4, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    .line 528
    .local v7, "format":Lorg/telegram/messenger/exoplayer/chunk/Format;
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v30

    .line 529
    .local v30, "lastPathSegment":Ljava/lang/String;
    const-string/jumbo v4, ".aac"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 533
    new-instance v10, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;

    invoke-direct {v10, v8, v9}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;-><init>(J)V

    .line 534
    .local v10, "extractor":Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    new-instance v5, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct/range {v5 .. v13}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;-><init>(ILorg/telegram/messenger/exoplayer/chunk/Format;JLorg/telegram/messenger/exoplayer/extractor/Extractor;ZII)V

    .line 585
    .end local v10    # "extractor":Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    .local v5, "extractorWrapper":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    :goto_8
    new-instance v13, Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    move-object/from16 v0, v33

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    move-object/from16 v26, v0

    move-object v15, v2

    move/from16 v16, v6

    move-object/from16 v17, v7

    move-wide/from16 v18, v8

    move-object/from16 v24, v5

    invoke-direct/range {v13 .. v26}, Lorg/telegram/messenger/exoplayer/hls/TsChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJIILorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;[B[B)V

    move-object/from16 v0, p4

    iput-object v13, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    goto/16 :goto_1

    .line 502
    .end local v2    # "dataSpec":Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    .end local v5    # "extractorWrapper":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    .end local v6    # "trigger":I
    .end local v7    # "format":Lorg/telegram/messenger/exoplayer/chunk/Format;
    .end local v8    # "startTimeUs":J
    .end local v20    # "endTimeUs":J
    .end local v30    # "lastPathSegment":Ljava/lang/String;
    :cond_e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->clearEncryptionData()V

    goto :goto_6

    .line 514
    .restart local v2    # "dataSpec":Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    :cond_f
    if-eqz v11, :cond_10

    .line 515
    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->startTimeUs:J

    .restart local v8    # "startTimeUs":J
    goto :goto_7

    .line 517
    .end local v8    # "startTimeUs":J
    :cond_10
    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->endTimeUs:J

    .restart local v8    # "startTimeUs":J
    goto :goto_7

    .line 520
    .end local v8    # "startTimeUs":J
    :cond_11
    move-object/from16 v0, v33

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    .restart local v8    # "startTimeUs":J
    goto :goto_7

    .line 536
    .restart local v6    # "trigger":I
    .restart local v7    # "format":Lorg/telegram/messenger/exoplayer/chunk/Format;
    .restart local v20    # "endTimeUs":J
    .restart local v30    # "lastPathSegment":Ljava/lang/String;
    :cond_12
    const-string/jumbo v4, ".mp3"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 537
    new-instance v10, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;

    invoke-direct {v10, v8, v9}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;-><init>(J)V

    .line 538
    .restart local v10    # "extractor":Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    new-instance v5, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct/range {v5 .. v13}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;-><init>(ILorg/telegram/messenger/exoplayer/chunk/Format;JLorg/telegram/messenger/exoplayer/extractor/Extractor;ZII)V

    .line 540
    .restart local v5    # "extractorWrapper":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    goto :goto_8

    .end local v5    # "extractorWrapper":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    .end local v10    # "extractor":Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    :cond_13
    const-string/jumbo v4, ".webvtt"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string/jumbo v4, ".vtt"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 542
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->isMaster:Z

    move-object/from16 v0, v33

    iget v13, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    invoke-virtual {v4, v12, v13, v8, v9}, Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;->getAdjuster(ZIJ)Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    move-result-object v35

    .line 544
    .local v35, "timestampAdjuster":Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;
    if-eqz v35, :cond_0

    .line 550
    new-instance v10, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;

    move-object/from16 v0, v35

    invoke-direct {v10, v0}, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;)V

    .line 551
    .restart local v10    # "extractor":Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    new-instance v5, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct/range {v5 .. v13}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;-><init>(ILorg/telegram/messenger/exoplayer/chunk/Format;JLorg/telegram/messenger/exoplayer/extractor/Extractor;ZII)V

    .line 553
    .restart local v5    # "extractorWrapper":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    goto/16 :goto_8

    .end local v5    # "extractorWrapper":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    .end local v10    # "extractor":Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    .end local v35    # "timestampAdjuster":Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;
    :cond_15
    if-eqz p1, :cond_16

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->discontinuitySequenceNumber:I

    move-object/from16 v0, v33

    iget v12, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    if-ne v4, v12, :cond_16

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    invoke-virtual {v7, v4}, Lorg/telegram/messenger/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 557
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->isMaster:Z

    move-object/from16 v0, v33

    iget v13, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    invoke-virtual {v4, v12, v13, v8, v9}, Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;->getAdjuster(ZIJ)Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    move-result-object v35

    .line 559
    .restart local v35    # "timestampAdjuster":Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;
    if-eqz v35, :cond_0

    .line 563
    const/16 v36, 0x0

    .line 564
    .local v36, "workaroundFlags":I
    iget-object v0, v7, Lorg/telegram/messenger/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 565
    .local v28, "codecs":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 569
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v12, "audio/mp4a-latm"

    if-eq v4, v12, :cond_17

    .line 570
    or-int/lit8 v36, v36, 0x2

    .line 572
    :cond_17
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v12, "video/avc"

    if-eq v4, v12, :cond_18

    .line 573
    or-int/lit8 v36, v36, 0x4

    .line 576
    :cond_18
    new-instance v10, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-direct {v10, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;I)V

    .line 577
    .restart local v10    # "extractor":Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedTrackIndex:I

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;

    .line 578
    .local v34, "selectedTrack":Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;
    new-instance v5, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    # getter for: Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxWidth:I
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$200(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;)I

    move-result v12

    # getter for: Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxHeight:I
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$300(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;)I

    move-result v13

    invoke-direct/range {v5 .. v13}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;-><init>(ILorg/telegram/messenger/exoplayer/chunk/Format;JLorg/telegram/messenger/exoplayer/extractor/Extractor;ZII)V

    .line 580
    .restart local v5    # "extractorWrapper":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    goto/16 :goto_8

    .line 582
    .end local v5    # "extractorWrapper":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    .end local v10    # "extractor":Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    .end local v28    # "codecs":Ljava/lang/String;
    .end local v34    # "selectedTrack":Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;
    .end local v35    # "timestampAdjuster":Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;
    .end local v36    # "workaroundFlags":I
    :cond_19
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    .restart local v5    # "extractorWrapper":Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    goto/16 :goto_8
.end method

.method public getDurationUs()J
    .locals 2

    .prologue
    .line 327
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->durationUs:J

    return-wide v0
.end method

.method public getFixedTrackVariant(I)Lorg/telegram/messenger/exoplayer/hls/Variant;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 351
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;

    # getter for: Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$000(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;)[Lorg/telegram/messenger/exoplayer/hls/Variant;

    move-result-object v0

    .line 352
    .local v0, "variants":[Lorg/telegram/messenger/exoplayer/hls/Variant;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMuxedAudioLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->muxedAudioLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getMuxedCaptionLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->muxedCaptionLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedTrackIndex()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedTrackIndex:I

    return v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->live:Z

    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 288
    :cond_0
    return-void
.end method

.method public onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer/chunk/Chunk;)V
    .locals 6
    .param p1, "chunk"    # Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    .prologue
    .line 597
    instance-of v3, p1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 598
    check-cast v1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    .line 599
    .local v1, "mediaPlaylistChunk":Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->getDataHolder()[B

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    .line 600
    iget v3, v1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->variantIndex:I

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->getResult()Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->setMediaPlaylist(ILorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;)V

    .line 601
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->eventHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;

    if-eqz v3, :cond_0

    .line 602
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->getRawResponse()[B

    move-result-object v2

    .line 603
    .local v2, "rawResponse":[B
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->eventHandler:Landroid/os/Handler;

    new-instance v4, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$1;

    invoke-direct {v4, p0, v2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$1;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;[B)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 616
    .end local v1    # "mediaPlaylistChunk":Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    .end local v2    # "rawResponse":[B
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    instance-of v3, p1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 611
    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 612
    .local v0, "encryptionKeyChunk":Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->getDataHolder()[B

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    .line 613
    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->iv:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public onChunkLoadError(Lorg/telegram/messenger/exoplayer/chunk/Chunk;Ljava/io/IOException;)Z
    .locals 12
    .param p1, "chunk"    # Lorg/telegram/messenger/exoplayer/chunk/Chunk;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 627
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_7

    instance-of v7, p1, Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    if-nez v7, :cond_0

    instance-of v7, p1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-nez v7, :cond_0

    instance-of v7, p1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v7, :cond_7

    :cond_0
    instance-of v7, p2, Lorg/telegram/messenger/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v7, :cond_7

    move-object v4, p2

    .line 631
    check-cast v4, Lorg/telegram/messenger/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 632
    .local v4, "responseCodeException":Lorg/telegram/messenger/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    iget v3, v4, Lorg/telegram/messenger/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 633
    .local v3, "responseCode":I
    const/16 v7, 0x194

    if-eq v3, v7, :cond_1

    const/16 v7, 0x19a

    if-ne v3, v7, :cond_7

    .line 635
    :cond_1
    instance-of v7, p1, Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    if-eqz v7, :cond_2

    move-object v5, p1

    .line 636
    check-cast v5, Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    .line 637
    .local v5, "tsChunk":Lorg/telegram/messenger/exoplayer/hls/TsChunk;
    iget-object v7, v5, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    invoke-direct {p0, v7}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getVariantIndex(Lorg/telegram/messenger/exoplayer/chunk/Format;)I

    move-result v6

    .line 645
    .end local v5    # "tsChunk":Lorg/telegram/messenger/exoplayer/hls/TsChunk;
    .local v6, "variantIndex":I
    :goto_0
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v8, v7, v6

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    const/4 v0, 0x1

    .line 646
    .local v0, "alreadyBlacklisted":Z
    :goto_1
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    aput-wide v8, v7, v6

    .line 647
    if-eqz v0, :cond_5

    .line 649
    const-string/jumbo v7, "HlsChunkSource"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Already blacklisted variant ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v7, 0x0

    .line 666
    .end local v0    # "alreadyBlacklisted":Z
    .end local v3    # "responseCode":I
    .end local v4    # "responseCodeException":Lorg/telegram/messenger/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    .end local v6    # "variantIndex":I
    :goto_2
    return v7

    .line 638
    .restart local v3    # "responseCode":I
    .restart local v4    # "responseCodeException":Lorg/telegram/messenger/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    :cond_2
    instance-of v7, p1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-eqz v7, :cond_3

    move-object v2, p1

    .line 639
    check-cast v2, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    .line 640
    .local v2, "playlistChunk":Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    iget v6, v2, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->variantIndex:I

    .line 641
    .restart local v6    # "variantIndex":I
    goto :goto_0

    .end local v2    # "playlistChunk":Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    .end local v6    # "variantIndex":I
    :cond_3
    move-object v1, p1

    .line 642
    check-cast v1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 643
    .local v1, "encryptionChunk":Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    iget v6, v1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->variantIndex:I

    .restart local v6    # "variantIndex":I
    goto :goto_0

    .line 645
    .end local v1    # "encryptionChunk":Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 652
    .restart local v0    # "alreadyBlacklisted":Z
    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->allVariantsBlacklisted()Z

    move-result v7

    if-nez v7, :cond_6

    .line 654
    const-string/jumbo v7, "HlsChunkSource"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Blacklisted variant ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v7, 0x1

    goto :goto_2

    .line 659
    :cond_6
    const-string/jumbo v7, "HlsChunkSource"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Final variant not blacklisted ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v6

    .line 662
    const/4 v7, 0x0

    goto :goto_2

    .line 666
    .end local v0    # "alreadyBlacklisted":Z
    .end local v3    # "responseCode":I
    .end local v4    # "responseCodeException":Lorg/telegram/messenger/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    .end local v6    # "variantIndex":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public prepare()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 296
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->prepareCalled:Z

    if-nez v3, :cond_0

    .line 297
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->prepareCalled:Z

    .line 299
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->trackSelector:Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;

    invoke-interface {v3, v4, p0}, Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;->selectTracks(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector$Output;)V

    .line 300
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectTrack(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v3, :cond_1

    :goto_1
    return v1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    move v1, v2

    .line 305
    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    .line 419
    return-void
.end method

.method public seek()V
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->isMaster:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;->reset()V

    .line 410
    :cond_0
    return-void
.end method

.method public selectTrack(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 392
    iput p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedTrackIndex:I

    .line 393
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedTrackIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;

    .line 394
    .local v0, "selectedTrack":Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;
    # getter for: Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->defaultVariantIndex:I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$100(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    .line 395
    # getter for: Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$000(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;)[Lorg/telegram/messenger/exoplayer/hls/Variant;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    .line 396
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    array-length v1, v1

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    .line 397
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    .line 398
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    .line 399
    return-void
.end method
