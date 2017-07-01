.class Lorg/telegram/messenger/query/StickersQuery$7$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$7;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$7;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$7;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$7$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 488
    invoke-static {v0, v0}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(ZZ)V

    .line 489
    return-void
.end method
