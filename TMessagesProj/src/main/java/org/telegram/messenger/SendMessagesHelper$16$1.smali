.class Lorg/telegram/messenger/SendMessagesHelper$16$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper$16;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$16;)V
    .locals 0

    .prologue
    .line 4196
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$16$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4199
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$16$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SendMessagesHelper$16$1$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$16$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4212
    return-void
.end method
