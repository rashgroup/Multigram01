.class public Lorg/telegram/messenger/volley/toolbox/StringRequest;
.super Lorg/telegram/messenger/volley/Request;
.source "StringRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/messenger/volley/Request",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lorg/telegram/messenger/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/telegram/messenger/volley/Response$Listener;Lorg/telegram/messenger/volley/Response$ErrorListener;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lorg/telegram/messenger/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/telegram/messenger/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "listener":Lorg/telegram/messenger/volley/Response$Listener;, "Lorg/telegram/messenger/volley/Response$Listener<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p4}, Lorg/telegram/messenger/volley/Request;-><init>(ILjava/lang/String;Lorg/telegram/messenger/volley/Response$ErrorListener;)V

    .line 44
    iput-object p3, p0, Lorg/telegram/messenger/volley/toolbox/StringRequest;->mListener:Lorg/telegram/messenger/volley/Response$Listener;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/volley/Response$Listener;Lorg/telegram/messenger/volley/Response$ErrorListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "errorListener"    # Lorg/telegram/messenger/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/telegram/messenger/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "listener":Lorg/telegram/messenger/volley/Response$Listener;, "Lorg/telegram/messenger/volley/Response$Listener<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/telegram/messenger/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lorg/telegram/messenger/volley/Response$Listener;Lorg/telegram/messenger/volley/Response$ErrorListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/volley/toolbox/StringRequest;->deliverResponse(Ljava/lang/String;)V

    return-void
.end method

.method protected deliverResponse(Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/messenger/volley/toolbox/StringRequest;->mListener:Lorg/telegram/messenger/volley/Response$Listener;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method protected parseNetworkResponse(Lorg/telegram/messenger/volley/NetworkResponse;)Lorg/telegram/messenger/volley/Response;
    .locals 4
    .param p1, "response"    # Lorg/telegram/messenger/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/NetworkResponse;",
            ")",
            "Lorg/telegram/messenger/volley/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/messenger/volley/NetworkResponse;->data:[B

    iget-object v3, p1, Lorg/telegram/messenger/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v3}, Lorg/telegram/messenger/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .local v1, "parsed":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lorg/telegram/messenger/volley/NetworkResponse;)Lorg/telegram/messenger/volley/Cache$Entry;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/volley/Response;->success(Ljava/lang/Object;Lorg/telegram/messenger/volley/Cache$Entry;)Lorg/telegram/messenger/volley/Response;

    move-result-object v2

    return-object v2

    .line 68
    .end local v1    # "parsed":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/messenger/volley/NetworkResponse;->data:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .restart local v1    # "parsed":Ljava/lang/String;
    goto :goto_0
.end method
