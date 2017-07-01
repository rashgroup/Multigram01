.class Lorg/telegram/messenger/query/StickersQuery$6$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$6;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$6;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$6$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 358
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$6$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$6;

    iget-object v0, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$res:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$6$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$6;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$hash:I

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$6$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$6;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$hash:I

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->loadHash:I
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$502(I)I

    .line 361
    :cond_0
    invoke-static {v1, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(ZZ)V

    .line 362
    return-void
.end method
