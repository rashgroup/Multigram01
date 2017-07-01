.class public final Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;
.super Ljava/lang/Object;
.source "DebugTextViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper$Provider;
    }
.end annotation


# static fields
.field private static final REFRESH_INTERVAL_MS:I = 0x3e8


# instance fields
.field private final debuggable:Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper$Provider;

.field private final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper$Provider;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "debuggable"    # Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper$Provider;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;->debuggable:Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper$Provider;

    .line 67
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    .line 68
    return-void
.end method

.method private getBandwidthString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 111
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;->debuggable:Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper$Provider;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper$Provider;->getBandwidthMeter()Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;

    move-result-object v0

    .line 112
    .local v0, "bandwidthMeter":Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 114
    :cond_0
    const-string/jumbo v1, "bw:?"

    .line 116
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bw:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getQualityString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;->debuggable:Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper$Provider;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper$Provider;->getFormat()Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-result-object v0

    .line 106
    .local v0, "format":Lorg/telegram/messenger/exoplayer/chunk/Format;
    if-nez v0, :cond_0

    const-string/jumbo v1, "id:? br:? h:?"

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " br:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getRenderString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;->getTimeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;->getQualityString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;->getBandwidthString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;->getVideoCodecCountersString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ms("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;->debuggable:Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper$Provider;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper$Provider;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVideoCodecCountersString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;->debuggable:Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper$Provider;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper$Provider;->getCodecCounters()Lorg/telegram/messenger/exoplayer/CodecCounters;

    move-result-object v0

    .line 122
    .local v0, "codecCounters":Lorg/telegram/messenger/exoplayer/CodecCounters;
    if-nez v0, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/CodecCounters;->getDebugString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;->getRenderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;->stop()V

    .line 77
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;->run()V

    .line 78
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method
