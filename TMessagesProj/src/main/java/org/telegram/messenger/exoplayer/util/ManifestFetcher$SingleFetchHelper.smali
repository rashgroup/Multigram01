.class Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;
.super Ljava/lang/Object;
.source "ManifestFetcher.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleFetchHelper"
.end annotation


# instance fields
.field private final callbackLooper:Landroid/os/Looper;

.field private loadStartTimestamp:J

.field private final singleUseLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer/upstream/UriLoadable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final singleUseLoader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

.field private final wrappedCallback:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;)V
    .locals 2
    .param p3, "callbackLooper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/upstream/UriLoadable",
            "<TT;>;",
            "Landroid/os/Looper;",
            "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>.SingleFetchHelper;"
    .local p2, "singleUseLoadable":Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;, "Lorg/telegram/messenger/exoplayer/upstream/UriLoadable<TT;>;"
    .local p4, "wrappedCallback":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback<TT;>;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->this$0:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;

    .line 363
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->callbackLooper:Landroid/os/Looper;

    .line 364
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->wrappedCallback:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;

    .line 365
    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/Loader;

    const-string/jumbo v1, "manifestLoader:single"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    .line 366
    return-void
.end method

.method private releaseLoader()V
    .locals 1

    .prologue
    .line 405
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>.SingleFetchHelper;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->release()V

    .line 406
    return-void
.end method


# virtual methods
.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 2
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 388
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>.SingleFetchHelper;"
    :try_start_0
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestIOException;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestIOException;-><init>(Ljava/lang/Throwable;)V

    .line 389
    .local v0, "exception":Ljava/io/IOException;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->wrappedCallback:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;->onSingleManifestError(Ljava/io/IOException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    .line 393
    return-void

    .line 391
    .end local v0    # "exception":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    throw v1
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 4
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 376
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>.SingleFetchHelper;"
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 377
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->this$0:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->loadStartTimestamp:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->onSingleFetchCompleted(Ljava/lang/Object;J)V

    .line 378
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->wrappedCallback:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;->onSingleManifest(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    .line 382
    return-void

    .line 380
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    throw v1
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 1
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;
    .param p2, "exception"    # Ljava/io/IOException;

    .prologue
    .line 398
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>.SingleFetchHelper;"
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->wrappedCallback:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;

    invoke-interface {v0, p2}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;->onSingleManifestError(Ljava/io/IOException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    .line 402
    return-void

    .line 400
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    throw v0
.end method

.method public startLoading()V
    .locals 3

    .prologue
    .line 369
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>.SingleFetchHelper;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->loadStartTimestamp:J

    .line 370
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->callbackLooper:Landroid/os/Looper;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;

    invoke-virtual {v0, v1, v2, p0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->startLoading(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V

    .line 371
    return-void
.end method
