.class Lorg/telegram/messenger/FileLoadOperation$8;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoadOperation;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$8;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 388
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$8;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # invokes: Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile()V
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation;->access$300(Lorg/telegram/messenger/FileLoadOperation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$8;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # getter for: Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation;->access$000(Lorg/telegram/messenger/FileLoadOperation;)Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$8;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    goto :goto_0
.end method
