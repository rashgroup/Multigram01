.class Lorg/telegram/messenger/FileLoader$6;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoader;

.field final synthetic val$cacheOnly:Z

.field final synthetic val$document:Lorg/telegram/tgnet/TLRPC$Document;

.field final synthetic val$force:Z

.field final synthetic val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field final synthetic val$locationExt:Ljava/lang/String;

.field final synthetic val$locationSize:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;ZIZ)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationExt:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-boolean p5, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    iput p6, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationSize:I

    iput-boolean p7, p0, Lorg/telegram/messenger/FileLoader$6;->val$cacheOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v14, 0x0

    .line 352
    const/4 v1, 0x0

    .line 353
    .local v1, "fileName":Ljava/lang/String;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_2

    .line 354
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v12, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationExt:Ljava/lang/String;

    invoke-static {v11, v12}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v11, "-2147483648"

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 470
    :cond_1
    :goto_1
    return-void

    .line 355
    :cond_2
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_0

    .line 356
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 363
    :cond_3
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/FileLoadOperation;

    .line 364
    .local v6, "operation":Lorg/telegram/messenger/FileLoadOperation;
    if-eqz v6, :cond_6

    .line 365
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_1

    .line 367
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 368
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v0

    .line 374
    .local v0, "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    :goto_2
    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 376
    .local v4, "index":I
    const/4 v11, -0x1

    if-eq v4, v11, :cond_1

    .line 377
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 378
    invoke-virtual {v0, v14, v6}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 379
    invoke-virtual {v6, v10}, Lorg/telegram/messenger/FileLoadOperation;->setForceRequest(Z)V

    goto :goto_1

    .line 369
    .end local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    .end local v4    # "index":I
    :cond_4
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_5

    .line 370
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1100(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v0

    .restart local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    goto :goto_2

    .line 372
    .end local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    :cond_5
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v0

    .restart local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    goto :goto_2

    .line 386
    .end local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    :cond_6
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v8

    .line 387
    .local v8, "tempDir":Ljava/io/File;
    move-object v7, v8

    .line 388
    .local v7, "storeDir":Ljava/io/File;
    const/4 v9, 0x4

    .line 390
    .local v9, "type":I
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_9

    .line 391
    new-instance v6, Lorg/telegram/messenger/FileLoadOperation;

    .end local v6    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v12, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationExt:Ljava/lang/String;

    iget v13, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationSize:I

    invoke-direct {v6, v11, v12, v13}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;I)V

    .line 392
    .restart local v6    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    const/4 v9, 0x0

    .line 403
    :cond_7
    :goto_3
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$cacheOnly:Z

    if-nez v11, :cond_8

    .line 404
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-virtual {v11, v9}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    .line 406
    :cond_8
    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/FileLoadOperation;->setPaths(Ljava/io/File;Ljava/io/File;)V

    .line 408
    move-object v2, v1

    .line 409
    .local v2, "finalFileName":Ljava/lang/String;
    move v3, v9

    .line 410
    .local v3, "finalType":I
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    invoke-virtual {v11, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    new-instance v11, Lorg/telegram/messenger/FileLoader$6$1;

    invoke-direct {v11, p0, v2, v3}, Lorg/telegram/messenger/FileLoader$6$1;-><init>(Lorg/telegram/messenger/FileLoader$6;Ljava/lang/String;I)V

    invoke-virtual {v6, v11}, Lorg/telegram/messenger/FileLoadOperation;->setDelegate(Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;)V

    .line 435
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_c

    const/4 v5, 0x3

    .line 436
    .local v5, "maxCount":I
    :goto_4
    if-ne v9, v10, :cond_f

    .line 437
    iget-object v10, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I
    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)I

    move-result v10

    if-ge v10, v5, :cond_d

    .line 438
    iget-object v10, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # operator++ for: Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I
    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->access$1408(Lorg/telegram/messenger/FileLoader;)I

    .line 439
    invoke-virtual {v6}, Lorg/telegram/messenger/FileLoadOperation;->start()V

    goto/16 :goto_1

    .line 393
    .end local v2    # "finalFileName":Ljava/lang/String;
    .end local v3    # "finalType":I
    .end local v5    # "maxCount":I
    :cond_9
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_7

    .line 394
    new-instance v6, Lorg/telegram/messenger/FileLoadOperation;

    .end local v6    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {v6, v11}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 395
    .restart local v6    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 396
    const/4 v9, 0x1

    goto :goto_3

    .line 397
    :cond_a
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 398
    const/4 v9, 0x2

    goto :goto_3

    .line 400
    :cond_b
    const/4 v9, 0x3

    goto :goto_3

    .restart local v2    # "finalFileName":Ljava/lang/String;
    .restart local v3    # "finalType":I
    :cond_c
    move v5, v10

    .line 435
    goto :goto_4

    .line 441
    .restart local v5    # "maxCount":I
    :cond_d
    iget-boolean v10, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v10, :cond_e

    .line 442
    iget-object v10, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10, v14, v6}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 444
    :cond_e
    iget-object v10, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 447
    :cond_f
    iget-object v10, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v10, :cond_12

    .line 448
    iget-object v10, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I
    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->access$1500(Lorg/telegram/messenger/FileLoader;)I

    move-result v10

    if-ge v10, v5, :cond_10

    .line 449
    iget-object v10, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # operator++ for: Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I
    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->access$1508(Lorg/telegram/messenger/FileLoader;)I

    .line 450
    invoke-virtual {v6}, Lorg/telegram/messenger/FileLoadOperation;->start()V

    goto/16 :goto_1

    .line 452
    :cond_10
    iget-boolean v10, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v10, :cond_11

    .line 453
    iget-object v10, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->access$1100(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10, v14, v6}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 455
    :cond_11
    iget-object v10, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->access$1100(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 459
    :cond_12
    iget-object v10, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I
    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->access$1600(Lorg/telegram/messenger/FileLoader;)I

    move-result v10

    if-ge v10, v5, :cond_13

    .line 460
    iget-object v10, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # operator++ for: Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I
    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->access$1608(Lorg/telegram/messenger/FileLoader;)I

    .line 461
    invoke-virtual {v6}, Lorg/telegram/messenger/FileLoadOperation;->start()V

    goto/16 :goto_1

    .line 463
    :cond_13
    iget-boolean v10, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v10, :cond_14

    .line 464
    iget-object v10, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10, v14, v6}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 466
    :cond_14
    iget-object v10, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
