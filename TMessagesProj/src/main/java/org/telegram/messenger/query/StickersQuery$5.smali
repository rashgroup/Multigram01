.class final Lorg/telegram/messenger/query/StickersQuery$5;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(Ljava/util/ArrayList;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:Z
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$302(Z)Z

    .line 348
    const/4 v0, 0x1

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->stickersLoaded:Z
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$402(Z)Z

    .line 349
    return-void
.end method
