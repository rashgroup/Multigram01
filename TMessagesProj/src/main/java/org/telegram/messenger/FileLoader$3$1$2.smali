.class Lorg/telegram/messenger/FileLoader$3$1$2;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader$3$1;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/FileLoader$3$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader$3$1;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 218
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-boolean v1, v1, Lorg/telegram/messenger/FileLoader$3;->val$encrypted:Z

    if-eqz v1, :cond_2

    .line 219
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$100(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v2, v2, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v2, v2, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$700(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$700(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v2, v2, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v2, v2, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v3, v3, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-boolean v3, v3, Lorg/telegram/messenger/FileLoader$3;->val$encrypted:Z

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;->fileDidFailedUpload(Ljava/lang/String;Z)V

    .line 226
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-boolean v1, v1, Lorg/telegram/messenger/FileLoader$3;->val$small:Z

    if-eqz v1, :cond_3

    .line 227
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    # operator-- for: Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$510(Lorg/telegram/messenger/FileLoader;)I

    .line 228
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$500(Lorg/telegram/messenger/FileLoader;)I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 229
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->uploadSmallOperationQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/FileUploadOperation;

    .line 230
    .local v0, "operation":Lorg/telegram/messenger/FileUploadOperation;
    if-eqz v0, :cond_1

    .line 231
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    # operator++ for: Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$508(Lorg/telegram/messenger/FileLoader;)I

    .line 232
    invoke-virtual {v0}, Lorg/telegram/messenger/FileUploadOperation;->start()V

    .line 245
    .end local v0    # "operation":Lorg/telegram/messenger/FileUploadOperation;
    :cond_1
    :goto_1
    return-void

    .line 221
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$000(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v2, v2, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v2, v2, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 236
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    # operator-- for: Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$610(Lorg/telegram/messenger/FileLoader;)I

    .line 237
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$600(Lorg/telegram/messenger/FileLoader;)I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 238
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->uploadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$300(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/FileUploadOperation;

    .line 239
    .restart local v0    # "operation":Lorg/telegram/messenger/FileUploadOperation;
    if-eqz v0, :cond_1

    .line 240
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1$2;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    # operator++ for: Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$608(Lorg/telegram/messenger/FileLoader;)I

    .line 241
    invoke-virtual {v0}, Lorg/telegram/messenger/FileUploadOperation;->start()V

    goto :goto_1
.end method
