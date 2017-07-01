.class Lorg/telegram/ui/VideoEditorActivity$10;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VideoEditorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 728
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F
    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$300(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v4

    mul-float v2, v3, v4

    .line 729
    .local v2, "startTime":F
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F
    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$300(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v4

    mul-float v0, v3, v4

    .line 730
    .local v0, "endTime":F
    cmpl-float v3, v2, v0

    if-nez v3, :cond_0

    .line 731
    const v3, 0x3c23d70a    # 0.01f

    sub-float v2, v0, v3

    .line 733
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    sub-float v5, v0, v2

    div-float/2addr v4, v5

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F
    invoke-static {v3, v4}, Lorg/telegram/ui/VideoEditorActivity;->access$402(Lorg/telegram/ui/VideoEditorActivity;F)F

    .line 734
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v4

    sub-float v1, v3, v4

    .line 735
    .local v1, "lrdiff":F
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F
    invoke-static {v5}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F
    invoke-static {v3, v4}, Lorg/telegram/ui/VideoEditorActivity;->access$402(Lorg/telegram/ui/VideoEditorActivity;F)F

    .line 736
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F
    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    .line 737
    return-void
.end method
