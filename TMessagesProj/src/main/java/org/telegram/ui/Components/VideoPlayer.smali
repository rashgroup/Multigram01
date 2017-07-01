.class public Lorg/telegram/ui/Components/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;
.implements Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoPlayer$ExtractorRendererBuilder;,
        Lorg/telegram/ui/Components/VideoPlayer$Listener;,
        Lorg/telegram/ui/Components/VideoPlayer$RendererBuilder;
    }
.end annotation


# static fields
.field private static final RENDERER_BUILDING_STATE_BUILDING:I = 0x2

.field private static final RENDERER_BUILDING_STATE_BUILT:I = 0x3

.field private static final RENDERER_BUILDING_STATE_IDLE:I = 0x1

.field public static final RENDERER_COUNT:I = 0x2

.field public static final STATE_BUFFERING:I = 0x3

.field public static final STATE_ENDED:I = 0x5

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_PREPARING:I = 0x2

.field public static final STATE_READY:I = 0x4

.field public static final TRACK_DEFAULT:I = 0x0

.field public static final TRACK_DISABLED:I = -0x1

.field public static final TYPE_AUDIO:I = 0x1

.field public static final TYPE_VIDEO:I


# instance fields
.field private backgrounded:Z

.field private lastReportedPlayWhenReady:Z

.field private lastReportedPlaybackState:I

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/telegram/ui/Components/VideoPlayer$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;

.field private final player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

.field private final playerControl:Lorg/telegram/messenger/exoplayer/util/PlayerControl;

.field private final rendererBuilder:Lorg/telegram/ui/Components/VideoPlayer$RendererBuilder;

.field private rendererBuildingState:I

.field private surface:Landroid/view/Surface;

.field private videoRenderer:Lorg/telegram/messenger/exoplayer/TrackRenderer;

.field private videoTrackToRestore:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/VideoPlayer$RendererBuilder;)V
    .locals 4
    .param p1, "rendererBuilder"    # Lorg/telegram/ui/Components/VideoPlayer$RendererBuilder;

    .prologue
    const/4 v3, 0x1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->rendererBuilder:Lorg/telegram/ui/Components/VideoPlayer$RendererBuilder;

    .line 126
    const/4 v0, 0x2

    const/16 v1, 0x3e8

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/ExoPlayer$Factory;->newInstance(III)Lorg/telegram/messenger/exoplayer/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->addListener(Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;)V

    .line 128
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/PlayerControl;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/PlayerControl;-><init>(Lorg/telegram/messenger/exoplayer/ExoPlayer;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->playerControl:Lorg/telegram/messenger/exoplayer/util/PlayerControl;

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    .line 130
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 131
    iput v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    .line 132
    iput v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->rendererBuildingState:I

    .line 133
    return-void
.end method

.method private maybeReportPlayerState()V
    .locals 5

    .prologue
    .line 331
    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v2

    .line 332
    .local v2, "playWhenReady":Z
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getPlaybackState()I

    move-result v3

    .line 333
    .local v3, "playbackState":I
    iget-boolean v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlayWhenReady:Z

    if-ne v4, v2, :cond_0

    iget v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    if-eq v4, v3, :cond_2

    .line 334
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoPlayer$Listener;

    .line 335
    .local v1, "listener":Lorg/telegram/ui/Components/VideoPlayer$Listener;
    invoke-interface {v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer$Listener;->onStateChanged(ZI)V

    goto :goto_0

    .line 337
    .end local v1    # "listener":Lorg/telegram/ui/Components/VideoPlayer$Listener;
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlayWhenReady:Z

    .line 338
    iput v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    .line 340
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private pushSurface(Z)V
    .locals 4
    .param p1, "blockForSurfacePush"    # Z

    .prologue
    const/4 v3, 0x1

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoRenderer:Lorg/telegram/messenger/exoplayer/TrackRenderer;

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 347
    :cond_0
    if-eqz p1, :cond_1

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoRenderer:Lorg/telegram/messenger/exoplayer/TrackRenderer;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->surface:Landroid/view/Surface;

    invoke-interface {v0, v1, v3, v2}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->blockingSendMessage(Lorg/telegram/messenger/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoRenderer:Lorg/telegram/messenger/exoplayer/TrackRenderer;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->surface:Landroid/view/Surface;

    invoke-interface {v0, v1, v3, v2}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->sendMessage(Lorg/telegram/messenger/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lorg/telegram/ui/Components/VideoPlayer$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/ui/Components/VideoPlayer$Listener;

    .prologue
    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public blockingClearSurface()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->surface:Landroid/view/Surface;

    .line 158
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/VideoPlayer;->pushSurface(Z)V

    .line 159
    return-void
.end method

.method public getBackgrounded()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->backgrounded:Z

    return v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 242
    iget v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->rendererBuildingState:I

    if-ne v2, v1, :cond_1

    move v0, v1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v0

    .line 246
    .local v0, "playerState":I
    iget v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->rendererBuildingState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 247
    goto :goto_0
.end method

.method public getPlayerControl()Lorg/telegram/messenger/exoplayer/util/PlayerControl;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->playerControl:Lorg/telegram/messenger/exoplayer/util/PlayerControl;

    return-object v0
.end method

.method public getSelectedTrack(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->getSelectedTrack(I)I

    move-result v0

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public getTrackCount(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->getTrackCount(I)I

    move-result v0

    return v0
.end method

.method public getTrackFormat(II)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 1
    .param p1, "type"    # I
    .param p2, "index"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->getTrackFormat(II)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public onCryptoError(Landroid/media/MediaCodec$CryptoException;)V
    .locals 3
    .param p1, "e"    # Landroid/media/MediaCodec$CryptoException;

    .prologue
    .line 325
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoPlayer$Listener;

    .line 326
    .local v1, "listener":Lorg/telegram/ui/Components/VideoPlayer$Listener;
    invoke-interface {v1, p1}, Lorg/telegram/ui/Components/VideoPlayer$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 328
    .end local v1    # "listener":Lorg/telegram/ui/Components/VideoPlayer$Listener;
    :cond_0
    return-void
.end method

.method public onDecoderInitializationError(Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 3
    .param p1, "e"    # Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    .prologue
    .line 303
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoPlayer$Listener;

    .line 304
    .local v1, "listener":Lorg/telegram/ui/Components/VideoPlayer$Listener;
    invoke-interface {v1, p1}, Lorg/telegram/ui/Components/VideoPlayer$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 306
    .end local v1    # "listener":Lorg/telegram/ui/Components/VideoPlayer$Listener;
    :cond_0
    return-void
.end method

.method public onDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    .line 311
    return-void
.end method

.method public onDrawnToSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 321
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "elapsed"    # J

    .prologue
    .line 299
    return-void
.end method

.method public onPlayWhenReadyCommitted()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public onPlayerError(Lorg/telegram/messenger/exoplayer/ExoPlaybackException;)V
    .locals 3
    .param p1, "exception"    # Lorg/telegram/messenger/exoplayer/ExoPlaybackException;

    .prologue
    .line 283
    const/4 v2, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->rendererBuildingState:I

    .line 284
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoPlayer$Listener;

    .line 285
    .local v1, "listener":Lorg/telegram/ui/Components/VideoPlayer$Listener;
    invoke-interface {v1, p1}, Lorg/telegram/ui/Components/VideoPlayer$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 287
    .end local v1    # "listener":Lorg/telegram/ui/Components/VideoPlayer$Listener;
    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0
    .param p1, "playWhenReady"    # Z
    .param p2, "state"    # I

    .prologue
    .line 278
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->maybeReportPlayerState()V

    .line 279
    return-void
.end method

.method onRenderers([Lorg/telegram/messenger/exoplayer/TrackRenderer;)V
    .locals 3
    .param p1, "renderers"    # [Lorg/telegram/messenger/exoplayer/TrackRenderer;

    .prologue
    const/4 v2, 0x0

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 208
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    .line 209
    new-instance v1, Lorg/telegram/messenger/exoplayer/DummyTrackRenderer;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer/DummyTrackRenderer;-><init>()V

    aput-object v1, p1, v0

    .line 207
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_1
    aget-object v1, p1, v2

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoRenderer:Lorg/telegram/messenger/exoplayer/TrackRenderer;

    .line 213
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->pushSurface(Z)V

    .line 214
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v1, p1}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->prepare([Lorg/telegram/messenger/exoplayer/TrackRenderer;)V

    .line 215
    const/4 v1, 0x3

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->rendererBuildingState:I

    .line 216
    return-void
.end method

.method onRenderersError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 219
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoPlayer$Listener;

    .line 220
    .local v1, "listener":Lorg/telegram/ui/Components/VideoPlayer$Listener;
    invoke-interface {v1, p1}, Lorg/telegram/ui/Components/VideoPlayer$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 222
    .end local v1    # "listener":Lorg/telegram/ui/Components/VideoPlayer$Listener;
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->rendererBuildingState:I

    .line 223
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->maybeReportPlayerState()V

    .line 224
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 291
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoPlayer$Listener;

    .line 292
    .local v1, "listener":Lorg/telegram/ui/Components/VideoPlayer$Listener;
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/telegram/ui/Components/VideoPlayer$Listener;->onVideoSizeChanged(IIIF)V

    goto :goto_0

    .line 294
    .end local v1    # "listener":Lorg/telegram/ui/Components/VideoPlayer$Listener;
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->rendererBuildingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->stop()V

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->rendererBuilder:Lorg/telegram/ui/Components/VideoPlayer$RendererBuilder;

    invoke-interface {v0}, Lorg/telegram/ui/Components/VideoPlayer$RendererBuilder;->cancel()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoRenderer:Lorg/telegram/messenger/exoplayer/TrackRenderer;

    .line 201
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->rendererBuildingState:I

    .line 202
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->maybeReportPlayerState()V

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->rendererBuilder:Lorg/telegram/ui/Components/VideoPlayer$RendererBuilder;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/VideoPlayer$RendererBuilder;->buildRenderers(Lorg/telegram/ui/Components/VideoPlayer;)V

    .line 204
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->rendererBuilder:Lorg/telegram/ui/Components/VideoPlayer$RendererBuilder;

    invoke-interface {v0}, Lorg/telegram/ui/Components/VideoPlayer$RendererBuilder;->cancel()V

    .line 236
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->rendererBuildingState:I

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->surface:Landroid/view/Surface;

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->release()V

    .line 239
    return-void
.end method

.method public removeListener(Lorg/telegram/ui/Components/VideoPlayer$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/ui/Components/VideoPlayer$Listener;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .prologue
    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->seekTo(J)V

    .line 232
    return-void
.end method

.method public setBackgrounded(Z)V
    .locals 2
    .param p1, "backgrounded"    # Z

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->backgrounded:Z

    if-ne v0, p1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 185
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->backgrounded:Z

    .line 186
    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->getSelectedTrack(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoTrackToRestore:I

    .line 188
    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setSelectedTrack(II)V

    .line 189
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->blockingClearSurface()V

    goto :goto_0

    .line 191
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoTrackToRestore:I

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setSelectedTrack(II)V

    goto :goto_0
.end method

.method public setPlayWhenReady(Z)V
    .locals 1
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 228
    return-void
.end method

.method public setSelectedTrack(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "index"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->setSelectedTrack(II)V

    .line 175
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 148
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->surface:Landroid/view/Surface;

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/VideoPlayer;->pushSurface(Z)V

    .line 150
    return-void
.end method
