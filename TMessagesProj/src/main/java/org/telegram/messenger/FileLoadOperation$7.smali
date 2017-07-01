.class Lorg/telegram/messenger/FileLoadOperation$7;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoadOperation;->cancel()V
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
    .line 309
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$7;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 312
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$7;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # getter for: Lorg/telegram/messenger/FileLoadOperation;->state:I
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation;->access$500(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$7;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # getter for: Lorg/telegram/messenger/FileLoadOperation;->state:I
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation;->access$500(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$7;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # setter for: Lorg/telegram/messenger/FileLoadOperation;->state:I
    invoke-static {v2, v5}, Lorg/telegram/messenger/FileLoadOperation;->access$502(Lorg/telegram/messenger/FileLoadOperation;I)I

    .line 316
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$7;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # invokes: Lorg/telegram/messenger/FileLoadOperation;->cleanup()V
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation;->access$600(Lorg/telegram/messenger/FileLoadOperation;)V

    .line 317
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$7;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # getter for: Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation;->access$700(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 318
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$7;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # getter for: Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation;->access$700(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 319
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$7;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # getter for: Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation;->access$700(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 320
    .local v1, "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 318
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    .end local v0    # "a":I
    .end local v1    # "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$7;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # getter for: Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation;->access$000(Lorg/telegram/messenger/FileLoadOperation;)Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation$7;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-interface {v2, v3, v4}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    goto :goto_0
.end method
