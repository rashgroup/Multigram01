.class public Lorg/telegram/ui/Components/VideoTimelineView;
.super Landroid/view/View;
.source "VideoTimelineView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xa
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;
    }
.end annotation


# static fields
.field private static final sync:Ljava/lang/Object;


# instance fields
.field private currentTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

.field private frameHeight:I

.field private frameTimeOffset:J

.field private frameWidth:I

.field private frames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private framesToLoad:I

.field private mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private pickDrawable:Landroid/graphics/drawable/Drawable;

.field private pressDx:F

.field private pressedLeft:Z

.field private pressedRight:Z

.field private progressLeft:F

.field private progressRight:F

.field private videoLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/VideoTimelineView;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    iput-wide v4, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J

    .line 34
    iput v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 38
    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    .line 39
    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    .line 40
    iput v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    .line 41
    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 42
    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    .line 44
    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 46
    iput-wide v4, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameTimeOffset:J

    .line 47
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    .line 48
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    .line 49
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    .line 50
    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pickDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoTimelineView;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-wide v4, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J

    .line 34
    iput v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 38
    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    .line 39
    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    .line 40
    iput v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    .line 41
    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 42
    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    .line 44
    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 46
    iput-wide v4, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameTimeOffset:J

    .line 47
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    .line 48
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    .line 49
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    .line 50
    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pickDrawable:Landroid/graphics/drawable/Drawable;

    .line 72
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoTimelineView;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-wide v4, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J

    .line 34
    iput v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 38
    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    .line 39
    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    .line 40
    iput v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    .line 41
    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 42
    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    .line 44
    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 46
    iput-wide v4, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameTimeOffset:J

    .line 47
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    .line 48
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    .line 49
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    .line 50
    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pickDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoTimelineView;->init(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/VideoTimelineView;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 31
    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameTimeOffset:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/VideoTimelineView;)Landroid/media/MediaMetadataRetriever;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 31
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 31
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/VideoTimelineView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 31
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/VideoTimelineView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoTimelineView;->reloadFrames(I)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    const v1, -0x992e12

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pickDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    return-void
.end method

.method private reloadFrames(I)V
    .locals 6
    .param p1, "frameNum"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x41800000    # 16.0f

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 174
    :cond_0
    if-nez p1, :cond_1

    .line 175
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    .line 176
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    .line 177
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    .line 178
    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameTimeOffset:J

    .line 180
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/VideoTimelineView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/VideoTimelineView$1;-><init>(Lorg/telegram/ui/Components/VideoTimelineView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public clearFrames()V
    .locals 4

    .prologue
    .line 253
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 254
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 258
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 259
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_2

    .line 260
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 261
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 263
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    .line 264
    return-void
.end method

.method public destroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 230
    sget-object v4, Lorg/telegram/ui/Components/VideoTimelineView;->sync:Ljava/lang/Object;

    monitor-enter v4

    .line 232
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 234
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 241
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 236
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 239
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 245
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 246
    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v3, :cond_3

    .line 247
    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 248
    iput-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 250
    :cond_3
    return-void
.end method

.method public getLeftProgress()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    return v0
.end method

.method public getRightProgress()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 268
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v13, v0, v1

    .line 269
    .local v13, "width":I
    int-to-float v0, v13

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v12, v0, v1

    .line 270
    .local v12, "startX":I
    int-to-float v0, v13

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v9, v0, v1

    .line 272
    .local v9, "endX":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 273
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v13

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_1

    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/VideoTimelineView;->reloadFrames(I)V

    .line 286
    :cond_0
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    int-to-float v3, v12

    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 287
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v13

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 289
    int-to-float v1, v12

    const/4 v2, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v12

    int-to-float v3, v0

    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 290
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v1, v0

    const/4 v2, 0x0

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v3, v0

    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 291
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v12

    int-to-float v1, v0

    const/4 v2, 0x0

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v3, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 292
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v12

    int-to-float v1, v0

    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v3, v0

    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pickDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 296
    .local v8, "drawableWidth":I
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pickDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 297
    .local v7, "drawableHeight":I
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pickDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v1, v8, 0x2

    sub-int v1, v12, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v7

    div-int/lit8 v3, v8, 0x2

    add-int/2addr v3, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pickDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pickDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v1, v8, 0x2

    sub-int v1, v9, v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v7

    div-int/lit8 v3, v8, 0x2

    add-int/2addr v3, v9

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pickDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 302
    return-void

    .line 277
    .end local v7    # "drawableHeight":I
    .end local v8    # "drawableWidth":I
    :cond_1
    const/4 v11, 0x0

    .line 278
    .local v11, "offset":I
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 279
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_2

    .line 280
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    mul-int/2addr v1, v11

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 282
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 283
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x0

    const/high16 v10, 0x41800000    # 16.0f

    const/4 v7, 0x1

    .line 90
    if-nez p1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v6

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 94
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 96
    .local v5, "y":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredWidth()I

    move-result v8

    const/high16 v9, 0x42000000    # 32.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v3, v8, v9

    .line 97
    .local v3, "width":I
    int-to-float v8, v3

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v2, v8, v9

    .line 98
    .local v2, "startX":I
    int-to-float v8, v3

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v1, v8, v9

    .line 100
    .local v1, "endX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_3

    .line 101
    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 102
    .local v0, "additionWidth":I
    sub-int v8, v2, v0

    int-to-float v8, v8

    cmpg-float v8, v8, v4

    if-gtz v8, :cond_2

    add-int v8, v2, v0

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_2

    cmpl-float v8, v5, v11

    if-ltz v8, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_2

    .line 103
    iput-boolean v7, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    .line 104
    int-to-float v6, v2

    sub-float v6, v4, v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    .line 105
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 106
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    move v6, v7

    .line 107
    goto :goto_0

    .line 108
    :cond_2
    sub-int v8, v1, v0

    int-to-float v8, v8

    cmpg-float v8, v8, v4

    if-gtz v8, :cond_0

    add-int v8, v1, v0

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_0

    cmpl-float v8, v5, v11

    if-ltz v8, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_0

    .line 109
    iput-boolean v7, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    .line 110
    int-to-float v6, v1

    sub-float v6, v4, v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    .line 111
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 112
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    move v6, v7

    .line 113
    goto/16 :goto_0

    .line 115
    .end local v0    # "additionWidth":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eq v8, v7, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    .line 116
    :cond_4
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    if-eqz v8, :cond_5

    .line 117
    iput-boolean v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    move v6, v7

    .line 118
    goto/16 :goto_0

    .line 119
    :cond_5
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    if-eqz v8, :cond_0

    .line 120
    iput-boolean v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    move v6, v7

    .line 121
    goto/16 :goto_0

    .line 123
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 124
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    if-eqz v8, :cond_a

    .line 125
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    sub-float v6, v4, v6

    float-to-int v2, v6

    .line 126
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 127
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 131
    :cond_7
    :goto_1
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v2, v6

    int-to-float v6, v6

    int-to-float v8, v3

    div-float/2addr v6, v8

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    .line 132
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz v6, :cond_8

    .line 133
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    invoke-interface {v6, v8}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->onLeftProgressChanged(F)V

    .line 135
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    move v6, v7

    .line 136
    goto/16 :goto_0

    .line 128
    :cond_9
    if-le v2, v1, :cond_7

    .line 129
    move v2, v1

    goto :goto_1

    .line 137
    :cond_a
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    if-eqz v8, :cond_0

    .line 138
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    sub-float v6, v4, v6

    float-to-int v1, v6

    .line 139
    if-ge v1, v2, :cond_d

    .line 140
    move v1, v2

    .line 144
    :cond_b
    :goto_2
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v1, v6

    int-to-float v6, v6

    int-to-float v8, v3

    div-float/2addr v6, v8

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 145
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz v6, :cond_c

    .line 146
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    invoke-interface {v6, v8}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->onRifhtProgressChanged(F)V

    .line 148
    :cond_c
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    move v6, v7

    .line 149
    goto/16 :goto_0

    .line 141
    :cond_d
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v3

    if-le v1, v6, :cond_b

    .line 142
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int v1, v3, v6

    goto :goto_2
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    .prologue
    .line 167
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    .line 168
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 158
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "duration":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0    # "duration":Ljava/lang/String;
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
