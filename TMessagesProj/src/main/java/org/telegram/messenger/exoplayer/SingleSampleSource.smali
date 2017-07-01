.class public final Lorg/telegram/messenger/exoplayer/SingleSampleSource;
.super Ljava/lang/Object;
.source "SingleSampleSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/SampleSource;
.implements Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;
.implements Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;
.implements Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/SingleSampleSource$EventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field private static final INITIAL_SAMPLE_SIZE:I = 0x1

.field private static final STATE_END_OF_STREAM:I = 0x2

.field private static final STATE_SEND_FORMAT:I = 0x0

.field private static final STATE_SEND_SAMPLE:I = 0x1


# instance fields
.field private currentLoadableException:Ljava/io/IOException;

.field private currentLoadableExceptionCount:I

.field private currentLoadableExceptionTimestamp:J

.field private final dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer/SingleSampleSource$EventListener;

.field private final eventSourceId:I

.field private final format:Lorg/telegram/messenger/exoplayer/MediaFormat;

.field private loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

.field private loadingFinished:Z

.field private final minLoadableRetryCount:I

.field private pendingDiscontinuityPositionUs:J

.field private sampleData:[B

.field private sampleSize:I

.field private state:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/MediaFormat;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p3, "format"    # Lorg/telegram/messenger/exoplayer/MediaFormat;

    .prologue
    .line 87
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/exoplayer/SingleSampleSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/MediaFormat;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/MediaFormat;I)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p3, "format"    # Lorg/telegram/messenger/exoplayer/MediaFormat;
    .param p4, "minLoadableRetryCount"    # I

    .prologue
    const/4 v5, 0x0

    .line 92
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/SingleSampleSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/MediaFormat;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/SingleSampleSource$EventListener;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/MediaFormat;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/SingleSampleSource$EventListener;I)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p3, "format"    # Lorg/telegram/messenger/exoplayer/MediaFormat;
    .param p4, "minLoadableRetryCount"    # I
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lorg/telegram/messenger/exoplayer/SingleSampleSource$EventListener;
    .param p7, "eventSourceId"    # I

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->uri:Landroid/net/Uri;

    .line 99
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    .line 100
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    .line 101
    iput p4, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->minLoadableRetryCount:I

    .line 102
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->eventHandler:Landroid/os/Handler;

    .line 103
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/SingleSampleSource$EventListener;

    .line 104
    iput p7, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->eventSourceId:I

    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->sampleData:[B

    .line 106
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/SingleSampleSource;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/SingleSampleSource;

    .prologue
    .line 35
    iget v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->eventSourceId:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer/SingleSampleSource;)Lorg/telegram/messenger/exoplayer/SingleSampleSource$EventListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/SingleSampleSource;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/SingleSampleSource$EventListener;

    return-object v0
.end method

.method private clearCurrentLoadableException()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->currentLoadableExceptionCount:I

    .line 229
    return-void
.end method

.method private getRetryDelayMillis(J)J
    .locals 5
    .param p1, "errorCount"    # J

    .prologue
    .line 232
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private maybeStartLoading()V
    .locals 6

    .prologue
    .line 213
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->loadingFinished:Z

    if-nez v2, :cond_0

    iget v2, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v2, :cond_2

    .line 217
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->currentLoadableExceptionTimestamp:J

    sub-long v0, v2, v4

    .line 218
    .local v0, "elapsedMillis":J
    iget v2, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->currentLoadableExceptionCount:I

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->getRetryDelayMillis(J)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 221
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 223
    .end local v0    # "elapsedMillis":J
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v2, p0, p0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 291
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/SingleSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/SingleSampleSource$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer/SingleSampleSource$1;-><init>(Lorg/telegram/messenger/exoplayer/SingleSampleSource;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public continueBuffering(IJ)Z
    .locals 1
    .param p1, "track"    # I
    .param p2, "positionUs"    # J

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->maybeStartLoading()V

    .line 142
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->loadingFinished:Z

    return v0
.end method

.method public disable(I)V
    .locals 1
    .param p1, "track"    # I

    .prologue
    .line 199
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->state:I

    .line 200
    return-void
.end method

.method public enable(IJ)V
    .locals 2
    .param p1, "track"    # I
    .param p2, "positionUs"    # J

    .prologue
    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->state:I

    .line 134
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->pendingDiscontinuityPositionUs:J

    .line 135
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->clearCurrentLoadableException()V

    .line 136
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->maybeStartLoading()V

    .line 137
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->loadingFinished:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x3

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 1
    .param p1, "track"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public isLoadCanceled()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 272
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->sampleSize:I

    .line 275
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    new-instance v2, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->uri:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "result":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 279
    iget v1, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->sampleSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->sampleSize:I

    .line 280
    iget v1, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->sampleSize:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->sampleData:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 281
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->sampleData:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->sampleData:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->sampleData:[B

    .line 283
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->sampleData:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->sampleSize:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->sampleData:[B

    array-length v4, v4

    iget v5, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->sampleSize:I

    sub-int/2addr v4, v5

    invoke-interface {v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 286
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    .line 288
    return-void

    .line 286
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    throw v1
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->currentLoadableExceptionCount:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->minLoadableRetryCount:I

    if-le v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    throw v0

    .line 150
    :cond_0
    return-void
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 0
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 246
    return-void
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 1
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->loadingFinished:Z

    .line 240
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->clearCurrentLoadableException()V

    .line 241
    return-void
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 250
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 251
    iget v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->currentLoadableExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->currentLoadableExceptionCount:I

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->currentLoadableExceptionTimestamp:J

    .line 253
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->notifyLoadError(Ljava/io/IOException;)V

    .line 254
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->maybeStartLoading()V

    .line 255
    return-void
.end method

.method public prepare(J)Z
    .locals 3
    .param p1, "positionUs"    # J

    .prologue
    .line 115
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/Loader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    .line 118
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public readData(IJLorg/telegram/messenger/exoplayer/MediaFormatHolder;Lorg/telegram/messenger/exoplayer/SampleHolder;)I
    .locals 7
    .param p1, "track"    # I
    .param p2, "positionUs"    # J
    .param p4, "formatHolder"    # Lorg/telegram/messenger/exoplayer/MediaFormatHolder;
    .param p5, "sampleHolder"    # Lorg/telegram/messenger/exoplayer/SampleHolder;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 162
    iget v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->state:I

    if-ne v0, v6, :cond_0

    .line 163
    const/4 v0, -0x1

    .line 180
    :goto_0
    return v0

    .line 164
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->state:I

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iput-object v0, p4, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    .line 166
    iput v1, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->state:I

    .line 167
    const/4 v0, -0x4

    goto :goto_0

    .line 170
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->state:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 171
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->loadingFinished:Z

    if-nez v0, :cond_3

    .line 172
    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 170
    goto :goto_1

    .line 174
    :cond_3
    const-wide/16 v4, 0x0

    iput-wide v4, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    .line 175
    iget v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->sampleSize:I

    iput v0, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->size:I

    .line 176
    iput v1, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->flags:I

    .line 177
    iget v0, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->size:I

    invoke-virtual {p5, v0}, Lorg/telegram/messenger/exoplayer/SampleHolder;->ensureSpaceForWrite(I)V

    .line 178
    iget-object v0, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->sampleData:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->sampleSize:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 179
    iput v6, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->state:I

    .line 180
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public readDiscontinuity(I)J
    .locals 4
    .param p1, "track"    # I

    .prologue
    .line 154
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->pendingDiscontinuityPositionUs:J

    .line 155
    .local v0, "discontinuityPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->pendingDiscontinuityPositionUs:J

    .line 156
    return-wide v0
.end method

.method public register()Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;
    .locals 0

    .prologue
    .line 110
    return-object p0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->release()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    .line 208
    :cond_0
    return-void
.end method

.method public seekToUs(J)V
    .locals 3
    .param p1, "positionUs"    # J

    .prologue
    .line 186
    iget v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 187
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->pendingDiscontinuityPositionUs:J

    .line 188
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->state:I

    .line 190
    :cond_0
    return-void
.end method
