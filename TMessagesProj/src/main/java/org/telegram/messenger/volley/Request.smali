.class public abstract Lorg/telegram/messenger/volley/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/volley/Request$Priority;,
        Lorg/telegram/messenger/volley/Request$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/telegram/messenger/volley/Request",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mCacheEntry:Lorg/telegram/messenger/volley/Cache$Entry;

.field private mCanceled:Z

.field private final mDefaultTrafficStatsTag:I

.field private final mErrorListener:Lorg/telegram/messenger/volley/Response$ErrorListener;

.field private final mEventLog:Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;

.field private final mMethod:I

.field private mRequestQueue:Lorg/telegram/messenger/volley/RequestQueue;

.field private mResponseDelivered:Z

.field private mRetryPolicy:Lorg/telegram/messenger/volley/RetryPolicy;

.field private mSequence:Ljava/lang/Integer;

.field private mShouldCache:Z

.field private mTag:Ljava/lang/Object;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/telegram/messenger/volley/Response$ErrorListener;)V
    .locals 3
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/telegram/messenger/volley/Response$ErrorListener;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-boolean v0, Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;

    invoke-direct {v0}, Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/volley/Request;->mEventLog:Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/volley/Request;->mShouldCache:Z

    .line 87
    iput-boolean v2, p0, Lorg/telegram/messenger/volley/Request;->mCanceled:Z

    .line 90
    iput-boolean v2, p0, Lorg/telegram/messenger/volley/Request;->mResponseDelivered:Z

    .line 100
    iput-object v1, p0, Lorg/telegram/messenger/volley/Request;->mCacheEntry:Lorg/telegram/messenger/volley/Cache$Entry;

    .line 125
    iput p1, p0, Lorg/telegram/messenger/volley/Request;->mMethod:I

    .line 126
    iput-object p2, p0, Lorg/telegram/messenger/volley/Request;->mUrl:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lorg/telegram/messenger/volley/Request;->mErrorListener:Lorg/telegram/messenger/volley/Response$ErrorListener;

    .line 128
    new-instance v0, Lorg/telegram/messenger/volley/DefaultRetryPolicy;

    invoke-direct {v0}, Lorg/telegram/messenger/volley/DefaultRetryPolicy;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/volley/Request;->setRetryPolicy(Lorg/telegram/messenger/volley/RetryPolicy;)Lorg/telegram/messenger/volley/Request;

    .line 130
    invoke-static {p2}, Lorg/telegram/messenger/volley/Request;->findDefaultTrafficStatsTag(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/volley/Request;->mDefaultTrafficStatsTag:I

    .line 131
    return-void

    :cond_0
    move-object v0, v1

    .line 60
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/volley/Response$ErrorListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/telegram/messenger/volley/Response$ErrorListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/messenger/volley/Request;-><init>(ILjava/lang/String;Lorg/telegram/messenger/volley/Response$ErrorListener;)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/volley/Request;)Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/volley/Request;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mEventLog:Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;

    return-object v0
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 7
    .param p2, "paramsEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .local v0, "encodedParams":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 447
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 454
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Encoding not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 452
    .end local v3    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method

.method private static findDefaultTrafficStatsTag(Ljava/lang/String;)I
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 179
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 186
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 203
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    sget-boolean v0, Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mEventLog:Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    .line 206
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 305
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/volley/Request;->mCanceled:Z

    .line 306
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    check-cast p1, Lorg/telegram/messenger/volley/Request;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/volley/Request;->compareTo(Lorg/telegram/messenger/volley/Request;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/telegram/messenger/volley/Request;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/Request",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    .local p1, "other":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getPriority()Lorg/telegram/messenger/volley/Request$Priority;

    move-result-object v0

    .line 574
    .local v0, "left":Lorg/telegram/messenger/volley/Request$Priority;
    invoke-virtual {p1}, Lorg/telegram/messenger/volley/Request;->getPriority()Lorg/telegram/messenger/volley/Request$Priority;

    move-result-object v1

    .line 578
    .local v1, "right":Lorg/telegram/messenger/volley/Request$Priority;
    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lorg/telegram/messenger/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lorg/telegram/messenger/volley/Request$Priority;->ordinal()I

    move-result v2

    invoke-virtual {v0}, Lorg/telegram/messenger/volley/Request$Priority;->ordinal()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public deliverError(Lorg/telegram/messenger/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lorg/telegram/messenger/volley/VolleyError;

    .prologue
    .line 562
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mErrorListener:Lorg/telegram/messenger/volley/Response$ErrorListener;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mErrorListener:Lorg/telegram/messenger/volley/Response$ErrorListener;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/volley/Response$ErrorListener;->onErrorResponse(Lorg/telegram/messenger/volley/VolleyError;)V

    .line 565
    :cond_0
    return-void
.end method

.method protected abstract deliverResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method finish(Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 214
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iget-object v1, p0, Lorg/telegram/messenger/volley/Request;->mRequestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lorg/telegram/messenger/volley/Request;->mRequestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/volley/RequestQueue;->finish(Lorg/telegram/messenger/volley/Request;)V

    .line 217
    :cond_0
    sget-boolean v1, Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v1, :cond_1

    .line 218
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 219
    .local v2, "threadId":J
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v1, v4, :cond_2

    .line 222
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 223
    .local v0, "mainThread":Landroid/os/Handler;
    new-instance v1, Lorg/telegram/messenger/volley/Request$1;

    invoke-direct {v1, p0, p1, v2, v3}, Lorg/telegram/messenger/volley/Request$1;-><init>(Lorg/telegram/messenger/volley/Request;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    .end local v0    # "mainThread":Landroid/os/Handler;
    .end local v2    # "threadId":J
    :cond_1
    :goto_0
    return-void

    .line 233
    .restart local v2    # "threadId":J
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/volley/Request;->mEventLog:Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;

    invoke-virtual {v1, p1, v2, v3}, Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    .line 234
    iget-object v1, p0, Lorg/telegram/messenger/volley/Request;->mEventLog:Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 434
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 435
    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    .line 437
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 420
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheEntry()Lorg/telegram/messenger/volley/Cache$Entry;
    .locals 1

    .prologue
    .line 298
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mCacheEntry:Lorg/telegram/messenger/volley/Cache$Entry;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorListener()Lorg/telegram/messenger/volley/Response$ErrorListener;
    .locals 1

    .prologue
    .line 163
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mErrorListener:Lorg/telegram/messenger/volley/Response$ErrorListener;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 137
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/volley/Request;->mMethod:I

    return v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParamsEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    const-string/jumbo v0, "UTF-8"

    return-object v0
.end method

.method public getPostBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 381
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getPostParams()Ljava/util/Map;

    move-result-object v0

    .line 382
    .local v0, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 383
    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getPostParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    .line 385
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParamsEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lorg/telegram/messenger/volley/Request$Priority;
    .locals 1

    .prologue
    .line 490
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    sget-object v0, Lorg/telegram/messenger/volley/Request$Priority;->NORMAL:Lorg/telegram/messenger/volley/Request$Priority;

    return-object v0
.end method

.method public getRetryPolicy()Lorg/telegram/messenger/volley/RetryPolicy;
    .locals 1

    .prologue
    .line 506
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mRetryPolicy:Lorg/telegram/messenger/volley/RetryPolicy;

    return-object v0
.end method

.method public final getSequence()I
    .locals 2

    .prologue
    .line 263
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mSequence:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .locals 1

    .prologue
    .line 499
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mRetryPolicy:Lorg/telegram/messenger/volley/RetryPolicy;

    invoke-interface {v0}, Lorg/telegram/messenger/volley/RetryPolicy;->getCurrentTimeout()I

    move-result v0

    return v0
.end method

.method public getTrafficStatsTag()I
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/volley/Request;->mDefaultTrafficStatsTag:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasHadResponseDelivered()Z
    .locals 1

    .prologue
    .line 521
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iget-boolean v0, p0, Lorg/telegram/messenger/volley/Request;->mResponseDelivered:Z

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 312
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iget-boolean v0, p0, Lorg/telegram/messenger/volley/Request;->mCanceled:Z

    return v0
.end method

.method public markDelivered()V
    .locals 1

    .prologue
    .line 514
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/volley/Request;->mResponseDelivered:Z

    .line 515
    return-void
.end method

.method protected parseNetworkError(Lorg/telegram/messenger/volley/VolleyError;)Lorg/telegram/messenger/volley/VolleyError;
    .locals 0
    .param p1, "volleyError"    # Lorg/telegram/messenger/volley/VolleyError;

    .prologue
    .line 543
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    return-object p1
.end method

.method protected abstract parseNetworkResponse(Lorg/telegram/messenger/volley/NetworkResponse;)Lorg/telegram/messenger/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/NetworkResponse;",
            ")",
            "Lorg/telegram/messenger/volley/Response",
            "<TT;>;"
        }
    .end annotation
.end method

.method public setCacheEntry(Lorg/telegram/messenger/volley/Cache$Entry;)Lorg/telegram/messenger/volley/Request;
    .locals 0
    .param p1, "entry"    # Lorg/telegram/messenger/volley/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/Cache$Entry;",
            ")",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iput-object p1, p0, Lorg/telegram/messenger/volley/Request;->mCacheEntry:Lorg/telegram/messenger/volley/Cache$Entry;

    .line 291
    return-object p0
.end method

.method public setRequestQueue(Lorg/telegram/messenger/volley/RequestQueue;)Lorg/telegram/messenger/volley/Request;
    .locals 0
    .param p1, "requestQueue"    # Lorg/telegram/messenger/volley/RequestQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/RequestQueue;",
            ")",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iput-object p1, p0, Lorg/telegram/messenger/volley/Request;->mRequestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    .line 246
    return-object p0
.end method

.method public setRetryPolicy(Lorg/telegram/messenger/volley/RetryPolicy;)Lorg/telegram/messenger/volley/Request;
    .locals 0
    .param p1, "retryPolicy"    # Lorg/telegram/messenger/volley/RetryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/RetryPolicy;",
            ")",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iput-object p1, p0, Lorg/telegram/messenger/volley/Request;->mRetryPolicy:Lorg/telegram/messenger/volley/RetryPolicy;

    .line 196
    return-object p0
.end method

.method public final setSequence(I)Lorg/telegram/messenger/volley/Request;
    .locals 1
    .param p1, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/volley/Request;->mSequence:Ljava/lang/Integer;

    .line 256
    return-object p0
.end method

.method public final setShouldCache(Z)Lorg/telegram/messenger/volley/Request;
    .locals 0
    .param p1, "shouldCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iput-boolean p1, p0, Lorg/telegram/messenger/volley/Request;->mShouldCache:Z

    .line 465
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lorg/telegram/messenger/volley/Request;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iput-object p1, p0, Lorg/telegram/messenger/volley/Request;->mTag:Ljava/lang/Object;

    .line 148
    return-object p0
.end method

.method public final shouldCache()Z
    .locals 1

    .prologue
    .line 472
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    iget-boolean v0, p0, Lorg/telegram/messenger/volley/Request;->mShouldCache:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 585
    .local p0, "this":Lorg/telegram/messenger/volley/Request;, "Lorg/telegram/messenger/volley/Request<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getTrafficStatsTag()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "trafficStatsTag":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lorg/telegram/messenger/volley/Request;->mCanceled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[X] "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getPriority()Lorg/telegram/messenger/volley/Request$Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "[ ] "

    goto :goto_0
.end method
