.class public final Lorg/telegram/messenger/exoplayer/upstream/cache/NoOpCacheEvictor;
.super Ljava/lang/Object;
.source "NoOpCacheEvictor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpanAdded(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 0
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;
    .param p2, "span"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 35
    return-void
.end method

.method public onSpanRemoved(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 0
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;
    .param p2, "span"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 40
    return-void
.end method

.method public onSpanTouched(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 0
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;
    .param p2, "oldSpan"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .param p3, "newSpan"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 45
    return-void
.end method

.method public onStartFile(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "position"    # J
    .param p5, "length"    # J

    .prologue
    .line 30
    return-void
.end method
