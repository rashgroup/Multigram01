.class Lorg/telegram/ui/VideoEditorActivity$1$1;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VideoEditorActivity$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity$1;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 137
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 138
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v5}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$300(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v6

    mul-float v4, v5, v6

    .line 139
    .local v4, "startTime":F
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v5}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$300(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v6

    mul-float v1, v5, v6

    .line 140
    .local v1, "endTime":F
    cmpl-float v5, v4, v1

    if-nez v5, :cond_0

    .line 141
    const v5, 0x3c23d70a    # 0.01f

    sub-float v4, v1, v5

    .line 143
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    sub-float v6, v1, v4

    div-float v3, v5, v6

    .line 144
    .local v3, "progress":F
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v5}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v6

    sub-float v2, v5, v6

    .line 145
    .local v2, "lrdiff":F
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v5}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v5

    mul-float v6, v2, v3

    add-float v3, v5, v6

    .line 146
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F
    invoke-static {v5}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_1

    .line 147
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;
    invoke-static {v5}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    .line 148
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F
    invoke-static {v5, v3}, Lorg/telegram/ui/VideoEditorActivity;->access$402(Lorg/telegram/ui/VideoEditorActivity;F)F

    .line 150
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v5, v1

    if-ltz v5, :cond_2

    .line 152
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->pause()V

    .line 153
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # invokes: Lorg/telegram/ui/VideoEditorActivity;->onPlayComplete()V
    invoke-static {v5}, Lorg/telegram/ui/VideoEditorActivity;->access$600(Lorg/telegram/ui/VideoEditorActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1    # "endTime":F
    .end local v2    # "lrdiff":F
    .end local v3    # "progress":F
    .end local v4    # "startTime":F
    :cond_2
    :goto_0
    return-void

    .line 154
    .restart local v1    # "endTime":F
    .restart local v2    # "lrdiff":F
    .restart local v3    # "progress":F
    .restart local v4    # "startTime":F
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
