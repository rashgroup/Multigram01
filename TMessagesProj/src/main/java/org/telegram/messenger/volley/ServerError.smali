.class public Lorg/telegram/messenger/volley/ServerError;
.super Lorg/telegram/messenger/volley/VolleyError;
.source "ServerError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/telegram/messenger/volley/VolleyError;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/volley/NetworkResponse;)V
    .locals 0
    .param p1, "networkResponse"    # Lorg/telegram/messenger/volley/NetworkResponse;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/telegram/messenger/volley/VolleyError;-><init>(Lorg/telegram/messenger/volley/NetworkResponse;)V

    .line 26
    return-void
.end method
