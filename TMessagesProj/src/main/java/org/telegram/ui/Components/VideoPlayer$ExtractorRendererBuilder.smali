.class public Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$RendererBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtractorRendererBuilder"
.end annotation


# static fields
.field private static final BUFFER_SEGMENT_COUNT:I = 0x100

.field private static final BUFFER_SEGMENT_SIZE:I = 0x40000


# instance fields
.field private final context:Landroid/content/Context;

.field private final uri:Landroid/net/Uri;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder;->context:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder;->userAgent:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder;->uri:Landroid/net/Uri;

    .line 66
    return-void
.end method


# virtual methods
.method public buildRenderers(Lorg/telegram/ui/Components/VideoPlayer;)V
    .locals 20
    .param p1, "player"    # Lorg/telegram/ui/Components/VideoPlayer;

    .prologue
    .line 70
    new-instance v5, Lorg/telegram/messenger/exoplayer/upstream/DefaultAllocator;

    const/high16 v3, 0x40000

    invoke-direct {v5, v3}, Lorg/telegram/messenger/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    .line 71
    .local v5, "allocator":Lorg/telegram/messenger/exoplayer/upstream/Allocator;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/VideoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v7

    .line 73
    .local v7, "mainHandler":Landroid/os/Handler;
    const/4 v3, 0x2

    new-array v0, v3, [Lorg/telegram/messenger/exoplayer/TrackRenderer;

    move-object/from16 v19, v0

    .line 74
    .local v19, "renderers":[Lorg/telegram/messenger/exoplayer/TrackRenderer;
    new-instance v4, Lorg/telegram/messenger/exoplayer/upstream/DefaultUriDataSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-direct {v4, v3, v6}, Lorg/telegram/messenger/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    .local v4, "dataSource":Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    new-instance v2, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder;->uri:Landroid/net/Uri;

    const/high16 v6, 0x4000000

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-direct/range {v2 .. v10}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;I[Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V

    .line 76
    .local v2, "sampleSource":Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;
    const/4 v3, 0x0

    new-instance v8, Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder$1;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder;->context:Landroid/content/Context;

    sget-object v12, Lorg/telegram/messenger/exoplayer/MediaCodecSelector;->DEFAULT:Lorg/telegram/messenger/exoplayer/MediaCodecSelector;

    const/4 v13, 0x1

    const-wide/16 v14, 0x1388

    const/16 v18, 0x32

    move-object/from16 v9, p0

    move-object v11, v2

    move-object/from16 v16, v7

    move-object/from16 v17, p1

    invoke-direct/range {v8 .. v18}, Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder$1;-><init>(Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder;Landroid/content/Context;Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    aput-object v8, v19, v3

    .line 82
    const/4 v3, 0x1

    new-instance v8, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;

    sget-object v10, Lorg/telegram/messenger/exoplayer/MediaCodecSelector;->DEFAULT:Lorg/telegram/messenger/exoplayer/MediaCodecSelector;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder;->context:Landroid/content/Context;

    invoke-static {v6}, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;

    move-result-object v15

    const/16 v16, 0x3

    move-object v9, v2

    move-object v13, v7

    invoke-direct/range {v8 .. v16}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;I)V

    aput-object v8, v19, v3

    .line 83
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->onRenderers([Lorg/telegram/messenger/exoplayer/TrackRenderer;)V

    .line 84
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method
