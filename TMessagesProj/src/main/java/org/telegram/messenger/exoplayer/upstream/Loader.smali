.class public final Lorg/telegram/messenger/exoplayer/upstream/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;,
        Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;,
        Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;,
        Lorg/telegram/messenger/exoplayer/upstream/Loader$UnexpectedLoaderException;
    }
.end annotation


# static fields
.field private static final MSG_END_OF_SOURCE:I = 0x0

.field private static final MSG_FATAL_ERROR:I = 0x2

.field private static final MSG_IO_EXCEPTION:I = 0x1


# instance fields
.field private currentTask:Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;

.field private final downloadExecutorService:Ljava/util/concurrent/ExecutorService;

.field private loading:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/Util;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 116
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/messenger/exoplayer/upstream/Loader;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/upstream/Loader;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->loading:Z

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/messenger/exoplayer/upstream/Loader;Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;)Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/upstream/Loader;
    .param p1, "x1"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->currentTask:Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;

    return-object p1
.end method


# virtual methods
.method public cancelLoading()V
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->loading:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 165
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->currentTask:Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;->quit()V

    .line 166
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->loading:Z

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->loading:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->cancelLoading()V

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 178
    return-void
.end method

.method public startLoading(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "loadable"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;
    .param p3, "callback"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;

    .prologue
    const/4 v1, 0x1

    .line 143
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->loading:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 144
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->loading:Z

    .line 145
    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;-><init>(Lorg/telegram/messenger/exoplayer/upstream/Loader;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->currentTask:Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;

    .line 146
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->currentTask:Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 147
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startLoading(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V
    .locals 2
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;
    .param p2, "callback"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;

    .prologue
    .line 127
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 128
    .local v0, "myLooper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 129
    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->startLoading(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V

    .line 130
    return-void

    .line 128
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
