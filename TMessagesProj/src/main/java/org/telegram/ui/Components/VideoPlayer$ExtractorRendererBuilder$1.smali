.class Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder$1;
.super Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder;->buildRenderers(Lorg/telegram/ui/Components/VideoPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder;Landroid/content/Context;Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V
    .locals 12
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Lorg/telegram/messenger/exoplayer/SampleSource;
    .param p4, "x2"    # Lorg/telegram/messenger/exoplayer/MediaCodecSelector;
    .param p5, "x3"    # I
    .param p6, "x4"    # J
    .param p8, "x5"    # Landroid/os/Handler;
    .param p9, "x6"    # Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
    .param p10, "x7"    # I

    .prologue
    .line 76
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder$1;->this$0:Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    return-void
.end method


# virtual methods
.method protected doSomeWork(JJZ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "sourceIsReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-super/range {p0 .. p5}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->doSomeWork(JJZ)V

    .line 80
    return-void
.end method
