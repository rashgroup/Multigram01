.class Lorg/telegram/messenger/SendMessagesHelper$7;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3116
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$7;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$7;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3119
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$7$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SendMessagesHelper$7$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$7;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3125
    return-void
.end method
