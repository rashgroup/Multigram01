.class public Lorg/telegram/messenger/volley/NetworkError;
.super Lorg/telegram/messenger/volley/VolleyError;
.source "NetworkError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/telegram/messenger/volley/VolleyError;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/telegram/messenger/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/volley/NetworkResponse;)V
    .locals 0
    .param p1, "networkResponse"    # Lorg/telegram/messenger/volley/NetworkResponse;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/telegram/messenger/volley/VolleyError;-><init>(Lorg/telegram/messenger/volley/NetworkResponse;)V

    .line 34
    return-void
.end method
