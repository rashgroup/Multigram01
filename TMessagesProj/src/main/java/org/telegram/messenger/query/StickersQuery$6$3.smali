.class Lorg/telegram/messenger/query/StickersQuery$6$3;
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
    .line 440
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$6$3;->this$0:Lorg/telegram/messenger/query/StickersQuery$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$6$3;->this$0:Lorg/telegram/messenger/query/StickersQuery$6;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$date:I

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->loadDate:I
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1202(I)I

    .line 444
    return-void
.end method
