.class public Lorg/telegram/ui/Components/AnimatedFileDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "AnimatedFileDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static final uiHandler:Landroid/os/Handler;


# instance fields
.field private applyTransformation:Z

.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private backgroundShader:Landroid/graphics/BitmapShader;

.field private bitmapRect:Landroid/graphics/RectF;

.field private decoderCreated:Z

.field private destroyWhenDone:Z

.field private final dstRect:Landroid/graphics/Rect;

.field private invalidateAfter:I

.field private volatile isRecycled:Z

.field private volatile isRunning:Z

.field private lastFrameTime:J

.field private lastTimeStamp:I

.field private loadFrameRunnable:Ljava/lang/Runnable;

.field private loadFrameTask:Ljava/lang/Runnable;

.field protected final mInvalidateTask:Ljava/lang/Runnable;

.field private final mStartTask:Ljava/lang/Runnable;

.field private final metaData:[I

.field private volatile nativePtr:I

.field private nextRenderingBitmap:Landroid/graphics/Bitmap;

.field private nextRenderingShader:Landroid/graphics/BitmapShader;

.field private parentView:Landroid/view/View;

.field private path:Ljava/io/File;

.field private recycleWithSecond:Z

.field private renderingBitmap:Landroid/graphics/Bitmap;

.field private renderingShader:Landroid/graphics/BitmapShader;

.field private roundRadius:I

.field private roundRect:Landroid/graphics/RectF;

.field private scaleX:F

.field private scaleY:F

.field private secondParentView:Landroid/view/View;

.field private shaderMatrix:Landroid/graphics/Matrix;

.field private uiRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x2

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "createDecoder"    # Z

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 158
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 41
    const/16 v0, 0x32

    iput v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRect:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapRect:Landroid/graphics/RectF;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    .line 61
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    .line 62
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    .line 71
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;

    .line 72
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentView:Landroid/view/View;

    .line 74
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnable:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    .line 147
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->mStartTask:Ljava/lang/Runnable;

    .line 159
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    .line 160
    if-eqz p2, :cond_0

    .line 161
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    .line 164
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 33
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I

    return p1
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRecycled:Z

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    return v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1600(Ljava/lang/String;[I)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [I

    .prologue
    .line 33
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 33
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:I

    return v0
.end method

.method static synthetic access$1800(ILandroid/graphics/Bitmap;[I)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # [I

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(ILandroid/graphics/Bitmap;[I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 33
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    return p1
.end method

.method static synthetic access$400(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 33
    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(I)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/AnimatedFileDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # Landroid/graphics/BitmapShader;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:Landroid/graphics/BitmapShader;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/BitmapShader;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:Landroid/graphics/BitmapShader;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # Landroid/graphics/BitmapShader;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:Landroid/graphics/BitmapShader;

    return-object p1
.end method

.method private static native createDecoder(Ljava/lang/String;[I)I
.end method

.method private static native destroyDecoder(I)V
.end method

.method private static native getVideoFrame(ILandroid/graphics/Bitmap;[I)I
.end method

.method protected static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 207
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 208
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private scheduleNextGetFrame()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    if-eqz v0, :cond_2

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 244
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->postToDecodeQueue(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 275
    iget v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    if-nez v5, :cond_1

    :cond_0
    iget-boolean v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    if-eqz v5, :cond_2

    .line 331
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    iget-boolean v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    if-eqz v5, :cond_3

    .line 279
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_6

    .line 280
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    .line 293
    :cond_3
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 294
    iget-boolean v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->applyTransformation:Z

    if-eqz v5, :cond_4

    .line 295
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 296
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    .line 297
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    .line 298
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->applyTransformation:Z

    .line 300
    :cond_4
    iget v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:I

    if-eqz v5, :cond_8

    .line 301
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 302
    .local v1, "bitmapW":I
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 303
    .local v0, "bitmapH":I
    iget v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    iget v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 305
    .local v3, "scale":F
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:Landroid/graphics/BitmapShader;

    if-nez v5, :cond_5

    .line 306
    new-instance v5, Landroid/graphics/BitmapShader;

    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v6, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:Landroid/graphics/BitmapShader;

    .line 308
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 309
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 310
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 311
    iget v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    iget v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3727c5ac    # 1.0E-5f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    .line 312
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 313
    .local v4, "w":I
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 314
    .local v2, "h":I
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapRect:Landroid/graphics/RectF;

    sub-int v6, v1, v4

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-int v7, v0, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    int-to-float v8, v4

    int-to-float v9, v2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 315
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRect:Landroid/graphics/RectF;

    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 320
    .end local v2    # "h":I
    .end local v4    # "w":I
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:Landroid/graphics/BitmapShader;

    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 321
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRect:Landroid/graphics/RectF;

    iget v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:I

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:I

    int-to-float v7, v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 327
    .end local v0    # "bitmapH":I
    .end local v1    # "bitmapW":I
    .end local v3    # "scale":F
    :goto_3
    iget-boolean v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    if-eqz v5, :cond_1

    .line 328
    sget-object v5, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    iget v7, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 281
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    iget v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-ltz v5, :cond_3

    .line 282
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    .line 283
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    .line 284
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 285
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:Landroid/graphics/BitmapShader;

    iput-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:Landroid/graphics/BitmapShader;

    .line 286
    iput-object v11, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 287
    iput-object v11, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:Landroid/graphics/BitmapShader;

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameTime:J

    goto/16 :goto_1

    .line 317
    .restart local v0    # "bitmapH":I
    .restart local v1    # "bitmapW":I
    .restart local v3    # "scale":F
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v10, v10, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 318
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRect:Landroid/graphics/RectF;

    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_2

    .line 323
    .end local v0    # "bitmapH":I
    .end local v1    # "bitmapW":I
    .end local v3    # "scale":F
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 324
    iget v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    iget v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 325
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v5, v10, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 217
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 221
    return-void

    .line 219
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAnimatedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 349
    :goto_0
    return-object v0

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 349
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 259
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 264
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 2

    .prologue
    .line 335
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 2

    .prologue
    .line 340
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, -0x2

    return v0
.end method

.method public hasBitmap()Z
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    return v0
.end method

.method public makeCopy()Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 362
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;Z)V

    .line 363
    .local v0, "drawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v2, v2, v3

    aput v2, v1, v3

    .line 364
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v2, v2, v4

    aput v2, v1, v4

    .line 365
    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->applyTransformation:Z

    .line 271
    return-void
.end method

.method protected postToDecodeQueue(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 167
    sget-object v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method public recycle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 183
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycleWithSecond:Z

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    .line 187
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRecycled:Z

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v0, :cond_4

    .line 189
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    if-eqz v0, :cond_2

    .line 190
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(I)V

    .line 191
    iput v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    .line 193
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    iput-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 200
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    iput-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 198
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    goto :goto_1
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 171
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;

    .line 172
    return-void
.end method

.method public setRoundRadius(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 353
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:I

    .line 354
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 355
    return-void
.end method

.method public setSecondParentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 175
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentView:Landroid/view/View;

    .line 176
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycleWithSecond:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    .line 179
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    if-eqz v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 235
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    .line 237
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->mStartTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    .line 250
    return-void
.end method
