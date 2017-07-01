.class public Lorg/telegram/ui/VideoEditorActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;
    }
.end annotation


# instance fields
.field private audioFramesSize:J

.field private bitrate:I

.field private compressVideo:Landroid/widget/CheckBox;

.field private controlView:Landroid/view/View;

.field private created:Z

.field ctx:Landroid/content/Context;

.field private delegate:Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

.field private editedSizeTextView:Landroid/widget/TextView;

.field private emojiButton:Landroid/widget/ImageView;

.field private endTime:J

.field private esimatedDuration:J

.field private estimatedSize:I

.field private lastProgress:F

.field private messageEditText:Landroid/widget/EditText;

.field private needSeek:Z

.field private originalBitrate:I

.field private originalHeight:I

.field private originalSize:J

.field private originalSizeTextView:Landroid/widget/TextView;

.field private originalWidth:I

.field private playButton:Landroid/widget/ImageView;

.field private playerPrepared:Z

.field private progressRunnable:Ljava/lang/Runnable;

.field private resultHeight:I

.field private resultWidth:I

.field private rotationValue:I

.field private startTime:J

.field private final sync:Ljava/lang/Object;

.field private textContainerView:Landroid/view/View;

.field private textFieldContainer:Landroid/widget/LinearLayout;

.field private textureView:Landroid/view/TextureView;

.field private thread:Ljava/lang/Thread;

.field private videoContainerView:Landroid/view/View;

.field private videoDuration:F

.field private videoFramesSize:J

.field private videoPath:Ljava/lang/String;

.field private videoPlayer:Landroid/media/MediaPlayer;

.field private videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

.field private videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 68
    iput-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->created:Z

    .line 69
    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    .line 70
    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    .line 71
    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoContainerView:Landroid/view/View;

    .line 72
    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->originalSizeTextView:Landroid/widget/TextView;

    .line 73
    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->editedSizeTextView:Landroid/widget/TextView;

    .line 74
    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->textContainerView:Landroid/view/View;

    .line 75
    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    .line 76
    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    .line 77
    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    .line 78
    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->controlView:Landroid/view/View;

    .line 79
    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    .line 80
    iput-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z

    .line 82
    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    .line 83
    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F

    .line 84
    iput-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->needSeek:Z

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->sync:Ljava/lang/Object;

    .line 88
    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->thread:Ljava/lang/Thread;

    .line 90
    iput v2, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    .line 91
    iput v2, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    .line 92
    iput v2, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    .line 93
    iput v2, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    .line 94
    iput v2, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    .line 95
    iput v2, p0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    .line 96
    iput v2, p0, Lorg/telegram/ui/VideoEditorActivity;->originalBitrate:I

    .line 97
    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    .line 98
    iput-wide v4, p0, Lorg/telegram/ui/VideoEditorActivity;->startTime:J

    .line 99
    iput-wide v4, p0, Lorg/telegram/ui/VideoEditorActivity;->endTime:J

    .line 100
    iput-wide v4, p0, Lorg/telegram/ui/VideoEditorActivity;->audioFramesSize:J

    .line 101
    iput-wide v4, p0, Lorg/telegram/ui/VideoEditorActivity;->videoFramesSize:J

    .line 102
    iput v2, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    .line 103
    iput-wide v4, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    .line 104
    iput-wide v4, p0, Lorg/telegram/ui/VideoEditorActivity;->originalSize:J

    .line 117
    new-instance v0, Lorg/telegram/ui/VideoEditorActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VideoEditorActivity$1;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressRunnable:Ljava/lang/Runnable;

    .line 175
    const-string/jumbo v0, "videoPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/VideoEditorActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/VideoEditorActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/telegram/ui/VideoEditorActivity;->startTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/VideoEditorActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/telegram/ui/VideoEditorActivity;->endTime:J

    return-wide v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalBitrate:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/VideoEditorActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->textFieldContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/VideoEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateVideoEditedInfo()V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/VideoEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lorg/telegram/ui/VideoEditorActivity;->needSeek:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/VideoEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->play()V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/VideoEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->fixLayoutInternal()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/VideoEditorActivity;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/VideoEditorActivity;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/VideoEditorActivity;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # F

    .prologue
    .line 66
    iput p1, p0, Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/VideoEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->onPlayComplete()V

    return-void
.end method

.method static synthetic access$702(Lorg/telegram/ui/VideoEditorActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->thread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/VideoEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/VideoEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->delegate:Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

    return-object v0
.end method

.method private calculateEstimatedSize(F)I
    .locals 6
    .param p1, "timeDelta"    # F

    .prologue
    .line 851
    iget-wide v2, p0, Lorg/telegram/ui/VideoEditorActivity;->audioFramesSize:J

    iget-wide v4, p0, Lorg/telegram/ui/VideoEditorActivity;->videoFramesSize:J

    add-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 852
    .local v0, "size":I
    const v1, 0x8000

    div-int v1, v0, v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 853
    return v0
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 708
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$9;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private fixLayoutInternal()V
    .locals 8

    .prologue
    const/16 v2, 0x14

    const/high16 v7, 0x42000000    # 32.0f

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/high16 v5, 0x41800000    # 16.0f

    .line 639
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 689
    :goto_0
    return-void

    .line 642
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 643
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 644
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 645
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 646
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x3

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 647
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 648
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoContainerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->controlView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 651
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 652
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 653
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 654
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 655
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 656
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->controlView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 658
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->textContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 659
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 660
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 661
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 662
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 663
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->textContainerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 687
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->fixVideoSize()V

    .line 688
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->clearFrames()V

    goto/16 :goto_0

    .line 665
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 666
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 667
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int/lit16 v1, v1, 0x104

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 668
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 669
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 670
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoContainerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->controlView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 673
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 674
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 675
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    :goto_3
    add-int/lit16 v1, v2, 0x96

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 676
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 677
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 678
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->controlView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->textContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 681
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 682
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 683
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 684
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 685
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->textContainerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move v1, v3

    .line 667
    goto :goto_2

    :cond_3
    move v2, v3

    .line 675
    goto :goto_3
.end method

.method private fixVideoSize()V
    .locals 13

    .prologue
    .line 589
    iget-object v11, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 594
    const/high16 v11, 0x43ec0000    # 472.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    .line 601
    .local v7, "viewHeight":I
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 602
    const/high16 v11, 0x43f50000    # 490.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    .line 603
    .local v9, "width":I
    iget-object v11, p0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v11

    if-nez v11, :cond_5

    const/16 v11, 0x14

    :goto_2
    add-int/lit16 v11, v11, 0x114

    int-to-float v11, v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int v3, v7, v11

    .line 614
    .local v3, "height":I
    :goto_3
    move v1, v9

    .line 615
    .local v1, "aWidth":I
    move v0, v3

    .line 616
    .local v0, "aHeight":I
    iget v11, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    const/16 v12, 0x5a

    if-eq v11, v12, :cond_2

    iget v11, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    const/16 v12, 0x10e

    if-ne v11, v12, :cond_9

    :cond_2
    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    .line 617
    .local v8, "vwidth":I
    :goto_4
    iget v11, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    const/16 v12, 0x5a

    if-eq v11, v12, :cond_3

    iget v11, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    const/16 v12, 0x10e

    if-ne v11, v12, :cond_a

    :cond_3
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    .line 618
    .local v6, "vheight":I
    :goto_5
    int-to-float v11, v9

    int-to-float v12, v8

    div-float v10, v11, v12

    .line 619
    .local v10, "wr":F
    int-to-float v11, v3

    int-to-float v12, v6

    div-float v4, v11, v12

    .line 620
    .local v4, "hr":F
    int-to-float v11, v8

    int-to-float v12, v6

    div-float v2, v11, v12

    .line 622
    .local v2, "ar":F
    cmpl-float v11, v10, v4

    if-lez v11, :cond_b

    .line 623
    int-to-float v11, v3

    mul-float/2addr v11, v2

    float-to-int v9, v11

    .line 628
    :goto_6
    iget-object v11, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    if-eqz v11, :cond_0

    .line 629
    iget-object v11, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    invoke-virtual {v11}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 630
    .local v5, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 631
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 632
    const/4 v11, 0x0

    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 633
    const/4 v11, 0x0

    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 634
    iget-object v11, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    invoke-virtual {v11, v5}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 596
    .end local v0    # "aHeight":I
    .end local v1    # "aWidth":I
    .end local v2    # "ar":F
    .end local v3    # "height":I
    .end local v4    # "hr":F
    .end local v5    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "vheight":I
    .end local v7    # "viewHeight":I
    .end local v8    # "vwidth":I
    .end local v9    # "width":I
    .end local v10    # "wr":F
    :cond_4
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v11, v12

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v12

    sub-int v7, v11, v12

    .restart local v7    # "viewHeight":I
    goto :goto_1

    .line 603
    .restart local v9    # "width":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 605
    .end local v9    # "width":I
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    .line 606
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    div-int/lit8 v11, v11, 0x3

    const/high16 v12, 0x41c00000    # 24.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int v9, v11, v12

    .line 607
    .restart local v9    # "width":I
    const/high16 v11, 0x42000000    # 32.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int v3, v7, v11

    .restart local v3    # "height":I
    goto/16 :goto_3

    .line 609
    .end local v3    # "height":I
    .end local v9    # "width":I
    :cond_7
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v11, Landroid/graphics/Point;->x:I

    .line 610
    .restart local v9    # "width":I
    iget-object v11, p0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v11

    if-nez v11, :cond_8

    const/16 v11, 0x14

    :goto_7
    add-int/lit16 v11, v11, 0x114

    int-to-float v11, v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int v3, v7, v11

    .restart local v3    # "height":I
    goto/16 :goto_3

    .end local v3    # "height":I
    :cond_8
    const/4 v11, 0x0

    goto :goto_7

    .line 616
    .restart local v0    # "aHeight":I
    .restart local v1    # "aWidth":I
    .restart local v3    # "height":I
    :cond_9
    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    goto/16 :goto_4

    .line 617
    .restart local v8    # "vwidth":I
    :cond_a
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    goto/16 :goto_5

    .line 625
    .restart local v2    # "ar":F
    .restart local v4    # "hr":F
    .restart local v6    # "vheight":I
    .restart local v10    # "wr":F
    :cond_b
    int-to-float v11, v9

    div-float/2addr v11, v2

    float-to-int v3, v11

    goto :goto_6
.end method

.method private onPlayComplete()V
    .locals 4

    .prologue
    .line 520
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const v2, 0x7f0202b6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 523
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    if-eqz v1, :cond_1

    .line 524
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    .line 527
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 528
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    if-eqz v1, :cond_2

    .line 529
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :cond_2
    :goto_0
    return-void

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private play()V
    .locals 4

    .prologue
    .line 711
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z

    if-nez v1, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 715
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 716
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const v2, 0x7f0202b6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 719
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 720
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F

    .line 721
    iget-boolean v1, p0, Lorg/telegram/ui/VideoEditorActivity;->needSeek:Z

    if-eqz v1, :cond_3

    .line 722
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoSeekBarView;->getProgress()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 723
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/VideoEditorActivity;->needSeek:Z

    .line 725
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lorg/telegram/ui/VideoEditorActivity$10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VideoEditorActivity$10;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 739
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 740
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->sync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->thread:Ljava/lang/Thread;

    if-nez v1, :cond_4

    .line 742
    new-instance v1, Ljava/lang/Thread;

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->progressRunnable:Ljava/lang/Runnable;

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->thread:Ljava/lang/Thread;

    .line 743
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 745
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private processOpenVideo()Z
    .locals 34

    .prologue
    .line 758
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 759
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/VideoEditorActivity;->originalSize:J

    .line 761
    new-instance v15, Lcom/coremedia/iso/IsoFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v15, v0}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/lang/String;)V

    .line 762
    .local v15, "isoFile":Lcom/coremedia/iso/IsoFile;
    const-string/jumbo v30, "/moov/trak/"

    move-object/from16 v0, v30

    invoke-static {v15, v0}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 763
    .local v7, "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    const/16 v29, 0x0

    .line 764
    .local v29, "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    const/4 v13, 0x1

    .line 765
    .local v13, "isAvc":Z
    const/4 v14, 0x1

    .line 767
    .local v14, "isMp4A":Z
    const-string/jumbo v30, "/moov/trak/mdia/minf/stbl/stsd/mp4a/"

    move-object/from16 v0, v30

    invoke-static {v15, v0}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v6

    .line 768
    .local v6, "boxTest":Lcom/coremedia/iso/boxes/Box;
    if-nez v6, :cond_0

    .line 769
    const/4 v14, 0x0

    .line 772
    :cond_0
    if-nez v14, :cond_1

    .line 773
    const/16 v30, 0x0

    .line 847
    .end local v6    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .end local v7    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v9    # "file":Ljava/io/File;
    .end local v13    # "isAvc":Z
    .end local v14    # "isMp4A":Z
    .end local v15    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .end local v29    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :goto_0
    return v30

    .line 776
    .restart local v6    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .restart local v7    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .restart local v9    # "file":Ljava/io/File;
    .restart local v13    # "isAvc":Z
    .restart local v14    # "isMp4A":Z
    .restart local v15    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .restart local v29    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :cond_1
    const-string/jumbo v30, "/moov/trak/mdia/minf/stbl/stsd/avc1/"

    move-object/from16 v0, v30

    invoke-static {v15, v0}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v6

    .line 777
    if-nez v6, :cond_2

    .line 778
    const/4 v13, 0x0

    .line 781
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/Box;

    .line 782
    .local v5, "box":Lcom/coremedia/iso/boxes/Box;
    move-object v0, v5

    check-cast v0, Lcom/coremedia/iso/boxes/TrackBox;

    move-object/from16 v28, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    .local v28, "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    const-wide/16 v22, 0x0

    .line 784
    .local v22, "sampleSizes":J
    const-wide/16 v26, 0x0

    .line 786
    .local v26, "trackBitrate":J
    :try_start_1
    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v18

    .line 787
    .local v18, "mediaBox":Lcom/coremedia/iso/boxes/MediaBox;
    invoke-virtual/range {v18 .. v18}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/MediaHeaderBox;

    move-result-object v19

    .line 788
    .local v19, "mediaHeaderBox":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    invoke-virtual/range {v18 .. v18}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-result-object v20

    .line 789
    .local v20, "sampleSizeBox":Lcom/coremedia/iso/boxes/SampleSizeBox;
    invoke-virtual/range {v20 .. v20}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizes()[J

    move-result-object v4

    .local v4, "arr$":[J
    array-length v0, v4

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_3

    aget-wide v24, v4, v12

    .line 790
    .local v24, "size":J
    add-long v22, v22, v24

    .line 789
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 792
    .end local v24    # "size":J
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getDuration()J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getTimescale()J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-float v0, v0

    move/from16 v31, v0

    div-float v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    .line 793
    const-wide/16 v30, 0x8

    mul-long v30, v30, v22

    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    move/from16 v31, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    div-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 797
    .end local v4    # "arr$":[J
    .end local v12    # "i$":I
    .end local v16    # "len$":I
    .end local v18    # "mediaBox":Lcom/coremedia/iso/boxes/MediaBox;
    .end local v19    # "mediaHeaderBox":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    .end local v20    # "sampleSizeBox":Lcom/coremedia/iso/boxes/SampleSizeBox;
    :goto_3
    :try_start_2
    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v10

    .line 798
    .local v10, "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmpl-double v30, v30, v32

    if-eqz v30, :cond_5

    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmpl-double v30, v30, v32

    if-eqz v30, :cond_5

    .line 799
    move-object/from16 v29, v10

    .line 800
    const-wide/32 v30, 0x186a0

    div-long v30, v26, v30

    const-wide/32 v32, 0x186a0

    mul-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->originalBitrate:I

    .line 801
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    move/from16 v30, v0

    const v31, 0xdbba0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_4

    .line 802
    const v30, 0xdbba0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    .line 804
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/VideoEditorActivity;->videoFramesSize:J

    move-wide/from16 v30, v0

    add-long v30, v30, v22

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/VideoEditorActivity;->videoFramesSize:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 837
    .end local v5    # "box":Lcom/coremedia/iso/boxes/Box;
    .end local v6    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .end local v7    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    .end local v13    # "isAvc":Z
    .end local v14    # "isMp4A":Z
    .end local v15    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .end local v22    # "sampleSizes":J
    .end local v26    # "trackBitrate":J
    .end local v28    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .end local v29    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :catch_0
    move-exception v8

    .line 838
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v30, "tmessages"

    move-object/from16 v0, v30

    invoke-static {v0, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 839
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 794
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "box":Lcom/coremedia/iso/boxes/Box;
    .restart local v6    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .restart local v7    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .restart local v9    # "file":Ljava/io/File;
    .restart local v13    # "isAvc":Z
    .restart local v14    # "isMp4A":Z
    .restart local v15    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .restart local v22    # "sampleSizes":J
    .restart local v26    # "trackBitrate":J
    .restart local v28    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .restart local v29    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :catch_1
    move-exception v8

    .line 795
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v30, "tmessages"

    move-object/from16 v0, v30

    invoke-static {v0, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 806
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/VideoEditorActivity;->audioFramesSize:J

    move-wide/from16 v30, v0

    add-long v30, v30, v22

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/VideoEditorActivity;->audioFramesSize:J

    goto/16 :goto_1

    .line 809
    .end local v5    # "box":Lcom/coremedia/iso/boxes/Box;
    .end local v10    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    .end local v22    # "sampleSizes":J
    .end local v26    # "trackBitrate":J
    .end local v28    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    :cond_6
    if-nez v29, :cond_7

    .line 810
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 813
    :cond_7
    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getMatrix()Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v17

    .line 814
    .local v17, "matrix":Lcom/googlecode/mp4parser/util/Matrix;
    sget-object v30, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 815
    const/16 v30, 0x5a

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    .line 821
    :cond_8
    :goto_4
    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    .line 822
    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    .line 824
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    move/from16 v30, v0

    const/16 v31, 0x280

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    move/from16 v30, v0

    const/16 v31, 0x280

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_a

    .line 825
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_e

    const/high16 v30, 0x44200000    # 640.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v21, v30, v31

    .line 826
    .local v21, "scale":F
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v21

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    .line 827
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v21

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    .line 828
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    move/from16 v30, v0

    if-eqz v30, :cond_a

    .line 829
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x3f000000    # 0.5f

    move/from16 v0, v31

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v31

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    .line 830
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    move/from16 v30, v0

    div-int/lit8 v30, v30, 0x8

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    move/from16 v31, v0

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-long v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/VideoEditorActivity;->videoFramesSize:J

    .line 834
    .end local v21    # "scale":F
    :cond_a
    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    .line 835
    :cond_b
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 816
    :cond_c
    sget-object v30, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_d

    .line 817
    const/16 v30, 0xb4

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    goto/16 :goto_4

    .line 818
    :cond_d
    sget-object v30, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 819
    const/16 v30, 0x10e

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    goto/16 :goto_4

    .line 825
    :cond_e
    const/high16 v30, 0x44200000    # 640.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    move/from16 v31, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v21, v30, v31

    goto/16 :goto_5

    .line 842
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    move/from16 v30, v0

    const/high16 v31, 0x447a0000    # 1000.0f

    mul-float v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    .line 844
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VideoEditorActivity;->updateVideoOriginalInfo()V

    .line 845
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VideoEditorActivity;->updateVideoEditedInfo()V

    .line 847
    const/16 v30, 0x1

    goto/16 :goto_0
.end method

.method private setPlayerSurface()V
    .locals 5

    .prologue
    .line 469
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    :try_start_0
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 474
    .local v1, "s":Landroid/view/Surface;
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 475
    iget-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z

    if-eqz v2, :cond_0

    .line 476
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 478
    .end local v1    # "s":Landroid/view/Surface;
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updateVideoEditedInfo()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide/16 v10, 0x3e8

    const/16 v9, 0x10e

    const/16 v8, 0x5a

    .line 552
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->editedSizeTextView:Landroid/widget/TextView;

    if-nez v6, :cond_0

    .line 586
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    iput-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    .line 560
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-nez v6, :cond_6

    .line 561
    :cond_1
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v6, v8, :cond_2

    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v6, v9, :cond_4

    :cond_2
    iget v5, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    .line 562
    .local v5, "width":I
    :goto_1
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v6, v8, :cond_3

    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v6, v9, :cond_5

    :cond_3
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    .line 563
    .local v0, "height":I
    :goto_2
    iget-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->originalSize:J

    long-to-float v6, v6

    iget-wide v8, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    long-to-float v7, v8

    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    .line 570
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_b

    .line 571
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->startTime:J

    .line 575
    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_c

    .line 576
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->endTime:J

    .line 581
    :goto_5
    const-string/jumbo v6, "%dx%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, "videoDimension":Ljava/lang/String;
    iget-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    div-long/2addr v6, v10

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 583
    .local v1, "minutes":I
    iget-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    div-long/2addr v6, v10

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/lit8 v7, v1, 0x3c

    sub-int v2, v6, v7

    .line 584
    .local v2, "seconds":I
    const-string/jumbo v6, "%d:%02d, ~%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    const/4 v8, 0x2

    iget v9, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    int-to-long v10, v9

    invoke-static {v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 585
    .local v4, "videoTimeSize":Ljava/lang/String;
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->editedSizeTextView:Landroid/widget/TextView;

    const-string/jumbo v7, "%s, %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v12

    aput-object v4, v8, v13

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 561
    .end local v0    # "height":I
    .end local v1    # "minutes":I
    .end local v2    # "seconds":I
    .end local v3    # "videoDimension":Ljava/lang/String;
    .end local v4    # "videoTimeSize":Ljava/lang/String;
    .end local v5    # "width":I
    :cond_4
    iget v5, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    goto/16 :goto_1

    .line 562
    .restart local v5    # "width":I
    :cond_5
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    goto/16 :goto_2

    .line 565
    .end local v5    # "width":I
    :cond_6
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v6, v8, :cond_7

    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v6, v9, :cond_9

    :cond_7
    iget v5, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    .line 566
    .restart local v5    # "width":I
    :goto_6
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v6, v8, :cond_8

    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v6, v9, :cond_a

    :cond_8
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    .line 567
    .restart local v0    # "height":I
    :goto_7
    iget-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    long-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    div-float/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/telegram/ui/VideoEditorActivity;->calculateEstimatedSize(F)I

    move-result v6

    iput v6, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    goto/16 :goto_3

    .line 565
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_9
    iget v5, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    goto :goto_6

    .line 566
    .restart local v5    # "width":I
    :cond_a
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    goto :goto_7

    .line 573
    .restart local v0    # "height":I
    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-long v6, v6

    mul-long/2addr v6, v10

    iput-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->startTime:J

    goto/16 :goto_4

    .line 578
    :cond_c
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-long v6, v6

    mul-long/2addr v6, v10

    iput-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->endTime:J

    goto/16 :goto_5
.end method

.method private updateVideoOriginalInfo()V
    .locals 15

    .prologue
    const/16 v10, 0x10e

    const/16 v9, 0x5a

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 538
    iget-object v8, p0, Lorg/telegram/ui/VideoEditorActivity;->originalSizeTextView:Landroid/widget/TextView;

    if-nez v8, :cond_0

    .line 549
    :goto_0
    return-void

    .line 541
    :cond_0
    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v8, v9, :cond_1

    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v8, v10, :cond_3

    :cond_1
    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    .line 542
    .local v7, "width":I
    :goto_1
    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v8, v9, :cond_2

    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v8, v10, :cond_4

    :cond_2
    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    .line 543
    .local v2, "height":I
    :goto_2
    const-string/jumbo v8, "%dx%d"

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, "videoDimension":Ljava/lang/String;
    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-long v0, v8

    .line 545
    .local v0, "duration":J
    const-wide/16 v8, 0x3e8

    div-long v8, v0, v8

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    long-to-int v3, v8

    .line 546
    .local v3, "minutes":I
    const-wide/16 v8, 0x3e8

    div-long v8, v0, v8

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    mul-int/lit8 v9, v3, 0x3c

    sub-int v4, v8, v9

    .line 547
    .local v4, "seconds":I
    const-string/jumbo v8, "%d:%02d, %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    iget-wide v10, p0, Lorg/telegram/ui/VideoEditorActivity;->originalSize:J

    invoke-static {v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 548
    .local v6, "videoTimeSize":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/VideoEditorActivity;->originalSizeTextView:Landroid/widget/TextView;

    const-string/jumbo v9, "%s, %s"

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v5, v10, v12

    aput-object v6, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 541
    .end local v0    # "duration":J
    .end local v2    # "height":I
    .end local v3    # "minutes":I
    .end local v4    # "seconds":I
    .end local v5    # "videoDimension":Ljava/lang/String;
    .end local v6    # "videoTimeSize":Ljava/lang/String;
    .end local v7    # "width":I
    :cond_3
    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    goto :goto_1

    .line 542
    .restart local v7    # "width":I
    :cond_4
    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    goto :goto_2
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, -0xcccccd

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, -0xc2c2c3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f020131

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "EditVideo"

    const v3, 0x7f0701c8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/VideoEditorActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/VideoEditorActivity$4;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v12

    .line 284
    .local v12, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v1, 0x2

    const v2, 0x7f020210

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v12, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 286
    const/4 v1, 0x1

    const v2, 0x7f020152

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v12, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 288
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030054

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    const v2, 0x7f0e0131

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->originalSizeTextView:Landroid/widget/TextView;

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    const v2, 0x7f0e0133

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->editedSizeTextView:Landroid/widget/TextView;

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    const v2, 0x7f0e0129

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->videoContainerView:Landroid/view/View;

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    const v2, 0x7f0e012f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->textContainerView:Landroid/view/View;

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    const v2, 0x7f0e012c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->controlView:Landroid/view/View;

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    const v2, 0x7f0e0134

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    const-string/jumbo v2, "CompressVideo"

    const v3, 0x7f070175

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 296
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 297
    .local v14, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    if-ne v1, v3, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    if-eq v1, v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    const-string/jumbo v2, "compress_video"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    new-instance v2, Lorg/telegram/ui/VideoEditorActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/VideoEditorActivity$5;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 310
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_1

    .line 312
    :try_start_0
    const-string/jumbo v1, "video/avc"

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v8

    .line 313
    .local v8, "codecInfo":Landroid/media/MediaCodecInfo;
    if-nez v8, :cond_3

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    const v2, 0x7f0e0130

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 338
    .local v15, "titleTextView":Landroid/widget/TextView;
    const-string/jumbo v1, "OriginalVideo"

    const v2, 0x7f0703b1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    const v2, 0x7f0e0132

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15    # "titleTextView":Landroid/widget/TextView;
    check-cast v15, Landroid/widget/TextView;

    .line 340
    .restart local v15    # "titleTextView":Landroid/widget/TextView;
    const-string/jumbo v1, "EditedVideo"

    const v2, 0x7f0701ca

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    const v2, 0x7f0e012e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoTimelineView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoTimelineView;->setVideoPath(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    new-instance v2, Lorg/telegram/ui/VideoEditorActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/VideoEditorActivity$6;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoTimelineView;->setDelegate(Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    const v2, 0x7f0e012d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoSeekBarView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    new-instance v2, Lorg/telegram/ui/VideoEditorActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/VideoEditorActivity$7;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/VideoSeekBarView;->delegate:Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    const v2, 0x7f0e012b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/VideoEditorActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/VideoEditorActivity$8;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    const v2, 0x7f0e012a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    .line 423
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 425
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VideoEditorActivity;->updateVideoOriginalInfo()V

    .line 426
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VideoEditorActivity;->updateVideoEditedInfo()V

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    const v2, 0x7f0e0135

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->textFieldContainer:Landroid/widget/LinearLayout;

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->textFieldContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 431
    new-instance v10, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 432
    .local v10, "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->textFieldContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    new-instance v1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->emojiButton:Landroid/widget/ImageView;

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->emojiButton:Landroid/widget/ImageView;

    const v2, 0x7f02016f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->emojiButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->emojiButton:Landroid/widget/ImageView;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->emojiButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    new-instance v1, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;

    const-string/jumbo v2, "AddCaption"

    const v3, 0x7f07006e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;

    const v2, -0x4d000001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 451
    const/4 v1, 0x1

    new-array v11, v1, [Landroid/text/InputFilter;

    .line 452
    .local v11, "inputFilters":[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x8c

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v11, v1

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSuperTypeFace()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;

    move-object/from16 v16, v0

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x53

    const/high16 v4, 0x42500000    # 52.0f

    const/4 v5, 0x0

    const/high16 v6, 0x40c00000    # 6.0f

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    return-object v1

    .line 297
    .end local v10    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v11    # "inputFilters":[Landroid/text/InputFilter;
    .end local v15    # "titleTextView":Landroid/widget/TextView;
    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_0

    .line 316
    .restart local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_3
    :try_start_1
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v13

    .line 317
    .local v13, "name":Ljava/lang/String;
    const-string/jumbo v1, "OMX.google.h264.encoder"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "OMX.ST.VFM.H264Enc"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "OMX.Exynos.avc.enc"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "OMX.MARVELL.VIDEO.HW.CODA7542ENCODER"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "OMX.MARVELL.VIDEO.H264ENCODER"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "OMX.k3.video.encoder.avc"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "OMX.TI.DUCATI1.VIDEO.H264E"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 324
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 331
    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v13    # "name":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 332
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 333
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 326
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v13    # "name":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string/jumbo v1, "video/avc"

    invoke-static {v8, v1}, Lorg/telegram/messenger/MediaController;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 463
    sget v0, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity;->removeSelfFromStack()V

    .line 466
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 491
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 492
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->fixLayout()V

    .line 493
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 180
    iget-boolean v3, p0, Lorg/telegram/ui/VideoEditorActivity;->created:Z

    if-eqz v3, :cond_0

    .line 218
    :goto_0
    return v1

    .line 183
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->processOpenVideo()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v1, v2

    .line 184
    goto :goto_0

    .line 186
    :cond_2
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    .line 187
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lorg/telegram/ui/VideoEditorActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VideoEditorActivity$2;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 198
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lorg/telegram/ui/VideoEditorActivity$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VideoEditorActivity$3;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 208
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 209
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 216
    iput-boolean v1, p0, Lorg/telegram/ui/VideoEditorActivity;->created:Z

    .line 218
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v1

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    .line 212
    goto :goto_0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->destroy()V

    .line 226
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 228
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 229
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_1
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 236
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 237
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 485
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 486
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->fixLayoutInternal()V

    .line 487
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 497
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->setPlayerSurface()V

    .line 498
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x1

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return v2

    .line 510
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 503
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 517
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

    .prologue
    .line 753
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->delegate:Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

    .line 754
    return-void
.end method
