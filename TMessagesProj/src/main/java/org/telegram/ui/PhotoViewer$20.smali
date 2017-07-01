.class Lorg/telegram/ui/PhotoViewer$20;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .prologue
    .line 1783
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1816
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1817
    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 4
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 1786
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1812
    :goto_0
    return-void

    .line 1789
    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1790
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->setVisibility(I)V

    .line 1792
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getPlayerControl()Lorg/telegram/messenger/exoplayer/util/PlayerControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/PlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eq p2, v2, :cond_3

    .line 1793
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->isPlaying:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1794
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/PhotoViewer;->isPlaying:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$402(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1795
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$6600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020193

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1796
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$500(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1811
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->updateVideoPlayerTime()V
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$300(Lorg/telegram/ui/PhotoViewer;)V

    goto :goto_0

    .line 1798
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->isPlaying:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1799
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->isPlaying:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$402(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1800
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$6600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020194

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1801
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$500(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1802
    if-ne p2, v2, :cond_2

    .line 1803
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBar;->isDragging()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1804
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    .line 1805
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1806
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 1807
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getPlayerControl()Lorg/telegram/messenger/exoplayer/util/PlayerControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/PlayerControl;->pause()V

    goto :goto_1
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 1821
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1822
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$20;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;

    move-result-object v1

    if-nez p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 1824
    :cond_0
    return-void

    .line 1822
    :cond_1
    int-to-float v0, p1

    mul-float/2addr v0, p4

    int-to-float v2, p2

    div-float/2addr v0, v2

    goto :goto_0
.end method
