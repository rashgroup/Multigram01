.class public Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;
.super Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;
.source "MediaCodecAudioTrackRenderer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/MediaClock;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
    }
.end annotation


# static fields
.field public static final MSG_SET_PLAYBACK_PARAMS:I = 0x2

.field public static final MSG_SET_VOLUME:I = 0x1


# instance fields
.field private allowPositionDiscontinuity:Z

.field private audioSessionId:I

.field private final audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

.field private audioTrackHasData:Z

.field private currentPositionUs:J

.field private final eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

.field private lastFeedElapsedRealtimeMs:J

.field private passthroughEnabled:Z

.field private passthroughMediaFormat:Landroid/media/MediaFormat;

.field private pcmEncoding:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;)V
    .locals 2
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer/MediaCodecSelector;

    .prologue
    .line 107
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;Z)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V
    .locals 7
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer/MediaCodecSelector;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    .prologue
    .line 135
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;Z)V
    .locals 7
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer/MediaCodecSelector;
    .param p3, "drmSessionManager"    # Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;
    .param p4, "playClearSamplesWithoutKeys"    # Z

    .prologue
    const/4 v5, 0x0

    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V
    .locals 9
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer/MediaCodecSelector;
    .param p3, "drmSessionManager"    # Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    .prologue
    .line 155
    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;I)V
    .locals 9
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer/MediaCodecSelector;
    .param p3, "drmSessionManager"    # Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
    .param p7, "audioCapabilities"    # Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;
    .param p8, "streamType"    # I

    .prologue
    .line 180
    const/4 v0, 0x1

    new-array v1, v0, [Lorg/telegram/messenger/exoplayer/SampleSource;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;-><init>([Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;I)V

    .line 182
    return-void
.end method

.method public constructor <init>([Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;I)V
    .locals 1
    .param p1, "sources"    # [Lorg/telegram/messenger/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer/MediaCodecSelector;
    .param p3, "drmSessionManager"    # Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
    .param p7, "audioCapabilities"    # Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;
    .param p8, "streamType"    # I

    .prologue
    .line 205
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;-><init>([Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;)V

    .line 207
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    .line 209
    new-instance v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-direct {v0, p7, p8}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;-><init>(Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    .line 210
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;)Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    return-object v0
.end method

.method private notifyAudioTrackInitializationError(Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException;)V
    .locals 2
    .param p1, "e"    # Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException;

    .prologue
    .line 453
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$1;-><init>(Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    :cond_0
    return-void
.end method

.method private notifyAudioTrackUnderrun(IJJ)V
    .locals 8
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    .line 476
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$3;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$3;-><init>(Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 484
    :cond_0
    return-void
.end method

.method private notifyAudioTrackWriteError(Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;)V
    .locals 2
    .param p1, "e"    # Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;

    .prologue
    .line 464
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$2;-><init>(Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 472
    :cond_0
    return-void
.end method


# virtual methods
.method protected allowPassthrough(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->isPassthroughSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected configureCodec(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 5
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "codecIsAdaptive"    # Z
    .param p3, "format"    # Landroid/media/MediaFormat;
    .param p4, "crypto"    # Landroid/media/MediaCrypto;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 250
    const-string/jumbo v1, "mime"

    invoke-virtual {p3, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "mimeType":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughEnabled:Z

    if-eqz v1, :cond_0

    .line 253
    const-string/jumbo v1, "mime"

    const-string/jumbo v2, "audio/raw"

    invoke-virtual {p3, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1, p3, v3, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 255
    const-string/jumbo v1, "mime"

    invoke-virtual {p3, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    .line 261
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {p1, p3, v3, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 259
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    goto :goto_0
.end method

.method protected getDecoderInfo(Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer/DecoderInfo;
    .locals 2
    .param p1, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer/MediaCodecSelector;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "requiresSecureDecoder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/MediaCodecSelector;->getPassthroughDecoderInfo()Lorg/telegram/messenger/exoplayer/DecoderInfo;

    move-result-object v0

    .line 226
    .local v0, "passthroughDecoderInfo":Lorg/telegram/messenger/exoplayer/DecoderInfo;
    if-eqz v0, :cond_0

    .line 227
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughEnabled:Z

    .line 232
    .end local v0    # "passthroughDecoderInfo":Lorg/telegram/messenger/exoplayer/DecoderInfo;
    :goto_0
    return-object v0

    .line 231
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughEnabled:Z

    .line 232
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->getDecoderInfo(Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer/DecoderInfo;

    move-result-object v0

    goto :goto_0
.end method

.method protected getMediaClock()Lorg/telegram/messenger/exoplayer/MediaClock;
    .locals 0

    .prologue
    .line 265
    return-object p0
.end method

.method public getPositionUs()J
    .locals 4

    .prologue
    .line 329
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->isEnded()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 330
    .local v0, "newCurrentPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 331
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_1

    .end local v0    # "newCurrentPositionUs":J
    :goto_0
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->currentPositionUs:J

    .line 333
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->allowPositionDiscontinuity:Z

    .line 335
    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->currentPositionUs:J

    return-wide v2

    .line 331
    .restart local v0    # "newCurrentPositionUs":J
    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->currentPositionUs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected handleAudioTrackDiscontinuity()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 439
    packed-switch p1, :pswitch_data_0

    .line 447
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 450
    .end local p2    # "message":Ljava/lang/Object;
    :goto_0
    return-void

    .line 441
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->setVolume(F)V

    goto :goto_0

    .line 444
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    check-cast p2, Landroid/media/PlaybackParams;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    goto :goto_0

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handlesTrack(Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/MediaFormat;)Z
    .locals 3
    .param p1, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer/MediaCodecSelector;
    .param p2, "mediaFormat"    # Lorg/telegram/messenger/exoplayer/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p2, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    .line 216
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "audio/x-unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/MediaCodecSelector;->getPassthroughDecoderInfo()Lorg/telegram/messenger/exoplayer/DecoderInfo;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/exoplayer/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer/DecoderInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected isEnded()Z
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReady()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAudioSessionId(I)V
    .locals 0
    .param p1, "audioSessionId"    # I

    .prologue
    .line 303
    return-void
.end method

.method protected onDisabled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    .line 342
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onDisabled()V

    .line 346
    return-void

    .line 344
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onDisabled()V

    throw v0
.end method

.method protected onDiscontinuity(J)V
    .locals 1
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onDiscontinuity(J)V

    .line 351
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->reset()V

    .line 352
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->currentPositionUs:J

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->allowPositionDiscontinuity:Z

    .line 354
    return-void
.end method

.method protected onInputFormatChanged(Lorg/telegram/messenger/exoplayer/MediaFormatHolder;)V
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/exoplayer/MediaFormatHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onInputFormatChanged(Lorg/telegram/messenger/exoplayer/MediaFormatHolder;)V

    .line 273
    const-string/jumbo v0, "audio/raw"

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pcmEncoding:I

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->pcmEncoding:I

    .line 275
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 7
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "outputFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 279
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 280
    .local v3, "passthrough":Z
    :goto_0
    if-eqz v3, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    const-string/jumbo v6, "mime"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "mimeType":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    .line 284
    .local v1, "format":Landroid/media/MediaFormat;
    :goto_2
    const-string/jumbo v5, "channel-count"

    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 285
    .local v0, "channelCount":I
    const-string/jumbo v5, "sample-rate"

    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 286
    .local v4, "sampleRate":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    iget v6, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->pcmEncoding:I

    invoke-virtual {v5, v2, v0, v4, v6}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->configure(Ljava/lang/String;III)V

    .line 287
    return-void

    .line 279
    .end local v0    # "channelCount":I
    .end local v1    # "format":Landroid/media/MediaFormat;
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "passthrough":Z
    .end local v4    # "sampleRate":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 280
    .restart local v3    # "passthrough":Z
    :cond_1
    const-string/jumbo v2, "audio/raw"

    goto :goto_1

    .restart local v2    # "mimeType":Ljava/lang/String;
    :cond_2
    move-object v1, p2

    .line 283
    goto :goto_2
.end method

.method protected onOutputStreamEnded()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->handleEndOfStream()V

    .line 431
    return-void
.end method

.method protected onStarted()V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onStarted()V

    .line 308
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->play()V

    .line 309
    return-void
.end method

.method protected onStopped()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->pause()V

    .line 314
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onStopped()V

    .line 315
    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .locals 19
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "codec"    # Landroid/media/MediaCodec;
    .param p6, "buffer"    # Ljava/nio/ByteBuffer;
    .param p7, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;
    .param p8, "bufferIndex"    # I
    .param p9, "shouldSkip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 360
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughEnabled:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p7

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 362
    const/4 v2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 363
    const/4 v2, 0x1

    .line 425
    :goto_0
    return v2

    .line 366
    :cond_0
    if-eqz p9, :cond_1

    .line 367
    const/4 v2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

    iget v3, v2, Lorg/telegram/messenger/exoplayer/CodecCounters;->skippedOutputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/telegram/messenger/exoplayer/CodecCounters;->skippedOutputBufferCount:I

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->handleDiscontinuity()V

    .line 370
    const/4 v2, 0x1

    goto :goto_0

    .line 373
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5

    .line 376
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    if-eqz v2, :cond_4

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->initialize(I)I

    .line 382
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrackHasData:Z
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->play()V

    .line 404
    :cond_2
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    move-object/from16 v0, p7

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, p7

    iget v11, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, p7

    iget-wide v12, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v9, p6

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->handleBuffer(Ljava/nio/ByteBuffer;IIJ)I

    move-result v18

    .line 406
    .local v18, "handleBufferResult":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->lastFeedElapsedRealtimeMs:J
    :try_end_1
    .catch Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 413
    and-int/lit8 v2, v18, 0x1

    if-eqz v2, :cond_3

    .line 414
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->handleAudioTrackDiscontinuity()V

    .line 415
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->allowPositionDiscontinuity:Z

    .line 419
    :cond_3
    and-int/lit8 v2, v18, 0x2

    if-eqz v2, :cond_7

    .line 420
    const/4 v2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

    iget v3, v2, Lorg/telegram/messenger/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/telegram/messenger/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    .line 422
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 379
    .end local v18    # "handleBufferResult":I
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->initialize()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    .line 380
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->onAudioSessionId(I)V
    :try_end_2
    .catch Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 383
    :catch_0
    move-exception v15

    .line 384
    .local v15, "e":Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->notifyAudioTrackInitializationError(Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException;)V

    .line 385
    new-instance v2, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;

    invoke-direct {v2, v15}, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 392
    .end local v15    # "e":Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrackHasData:Z

    .line 393
    .local v14, "audioTrackHadData":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->hasPendingData()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrackHasData:Z

    .line 394
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrackHasData:Z

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->lastFeedElapsedRealtimeMs:J

    sub-long v6, v2, v8

    .line 396
    .local v6, "elapsedSinceLastFeedMs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->getBufferSizeUs()J

    move-result-wide v16

    .line 397
    .local v16, "bufferSizeUs":J
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_6

    const-wide/16 v4, -0x1

    .line 398
    .local v4, "bufferSizeMs":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->getBufferSize()I

    move-result v3

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->notifyAudioTrackUnderrun(IJJ)V

    goto/16 :goto_2

    .line 397
    .end local v4    # "bufferSizeMs":J
    :cond_6
    const-wide/16 v2, 0x3e8

    div-long v4, v16, v2

    goto :goto_3

    .line 407
    .end local v6    # "elapsedSinceLastFeedMs":J
    .end local v14    # "audioTrackHadData":Z
    .end local v16    # "bufferSizeUs":J
    :catch_1
    move-exception v15

    .line 408
    .local v15, "e":Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->notifyAudioTrackWriteError(Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;)V

    .line 409
    new-instance v2, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;

    invoke-direct {v2, v15}, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 425
    .end local v15    # "e":Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;
    .restart local v18    # "handleBufferResult":I
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
