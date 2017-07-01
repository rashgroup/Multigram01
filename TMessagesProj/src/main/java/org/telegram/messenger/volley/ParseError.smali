.class public Lorg/telegram/messenger/volley/ParseError;
.super Lorg/telegram/messenger/volley/VolleyError;
.source "ParseError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/telegram/messenger/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/telegram/messenger/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/volley/NetworkResponse;)V
    .locals 0
    .param p1, "networkResponse"    # Lorg/telegram/messenger/volley/NetworkResponse;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/telegram/messenger/volley/VolleyError;-><init>(Lorg/telegram/messenger/volley/NetworkResponse;)V

    .line 28
    return-void
.end method
