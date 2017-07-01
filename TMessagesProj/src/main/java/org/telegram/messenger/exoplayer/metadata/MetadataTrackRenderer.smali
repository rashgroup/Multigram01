.class public final Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;
.super Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;
.source "MetadataTrackRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field private static final MSG_INVOKE_RENDERER:I


# instance fields
.field private final formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

.field private inputStreamEnded:Z

.field private final metadataHandler:Landroid/os/Handler;

.field private final metadataParser:Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer/metadata/MetadataParser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final metadataRenderer:Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private pendingMetadata:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private pendingMetadataTimestamp:J

.field private final sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;Landroid/os/Looper;)V
    .locals 3
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer/SampleSource;
    .param p4, "metadataRendererLooper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/SampleSource;",
            "Lorg/telegram/messenger/exoplayer/metadata/MetadataParser",
            "<TT;>;",
            "Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer",
            "<TT;>;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;, "Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    .local p2, "metadataParser":Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;, "Lorg/telegram/messenger/exoplayer/metadata/MetadataParser<TT;>;"
    .local p3, "metadataRenderer":Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;, "Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer<TT;>;"
    const/4 v2, 0x1

    .line 81
    new-array v0, v2, [Lorg/telegram/messenger/exoplayer/SampleSource;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;-><init>([Lorg/telegram/messenger/exoplayer/SampleSource;)V

    .line 82
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->metadataParser:Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;

    .line 83
    invoke-static {p3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->metadataRenderer:Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;

    .line 84
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->metadataHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    .line 87
    new-instance v0, Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    .line 88
    return-void

    .line 84
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private invokeRenderer(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;, "Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    .local p1, "metadata":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->metadataHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->metadataHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->invokeRendererInternal(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private invokeRendererInternal(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;, "Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    .local p1, "metadata":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->metadataRenderer:Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;->onMetadata(Ljava/lang/Object;)V

    .line 167
    return-void
.end method


# virtual methods
.method protected doSomeWork(JJZ)V
    .locals 5
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "sourceIsReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;, "Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->inputStreamEnded:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 105
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/SampleHolder;->clearData()V

    .line 106
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->readSource(JLorg/telegram/messenger/exoplayer/MediaFormatHolder;Lorg/telegram/messenger/exoplayer/SampleHolder;)I

    move-result v1

    .line 107
    .local v1, "result":I
    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 108
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadataTimestamp:J

    .line 110
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->metadataParser:Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget v4, v4, Lorg/telegram/messenger/exoplayer/SampleHolder;->size:I

    invoke-interface {v2, v3, v4}, Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;->parse([BI)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1    # "result":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadataTimestamp:J

    cmp-long v2, v2, p1

    if-gtz v2, :cond_1

    .line 120
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->invokeRenderer(Ljava/lang/Object;)V

    .line 121
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    .line 123
    :cond_1
    return-void

    .line 111
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 115
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->inputStreamEnded:Z

    goto :goto_0
.end method

.method protected getBufferedPositionUs()J
    .locals 2

    .prologue
    .line 133
    .local p0, "this":Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;, "Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    const-wide/16 v0, -0x3

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 157
    .local p0, "this":Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;, "Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 162
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 159
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->invokeRendererInternal(Ljava/lang/Object;)V

    .line 160
    const/4 v0, 0x1

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected handlesTrack(Lorg/telegram/messenger/exoplayer/MediaFormat;)Z
    .locals 2
    .param p1, "mediaFormat"    # Lorg/telegram/messenger/exoplayer/MediaFormat;

    .prologue
    .line 92
    .local p0, "this":Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;, "Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->metadataParser:Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;->canParse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isEnded()Z
    .locals 1

    .prologue
    .line 138
    .local p0, "this":Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;, "Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->inputStreamEnded:Z

    return v0
.end method

.method protected isReady()Z
    .locals 1

    .prologue
    .line 143
    .local p0, "this":Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;, "Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;, "Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    .line 128
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->onDisabled()V

    .line 129
    return-void
.end method

.method protected onDiscontinuity(J)V
    .locals 1
    .param p1, "positionUs"    # J

    .prologue
    .line 97
    .local p0, "this":Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;, "Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->inputStreamEnded:Z

    .line 99
    return-void
.end method
