.class Lorg/telegram/messenger/ImageLoader$9;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;->fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field final synthetic val$finalFile:Ljava/io/File;

.field final synthetic val$location:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;ILjava/io/File;)V
    .locals 0

    .prologue
    .line 1852
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$9;->val$location:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/messenger/ImageLoader$9;->val$type:I

    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$9;->val$finalFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1855
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;
    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader;->access$3100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader$9;->val$location:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    .line 1856
    .local v4, "info":Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    if-eqz v4, :cond_0

    .line 1857
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget v7, p0, Lorg/telegram/messenger/ImageLoader$9;->val$type:I

    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->val$finalFile:Ljava/io/File;

    # getter for: Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->fileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$3300(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v9

    # getter for: Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->filter:Ljava/lang/String;
    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$3400(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/lang/String;

    move-result-object v10

    # invokes: Lorg/telegram/messenger/ImageLoader;->generateThumb(ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    invoke-static {v6, v7, v8, v9, v10}, Lorg/telegram/messenger/ImageLoader;->access$3600(Lorg/telegram/messenger/ImageLoader;ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 1858
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;
    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader;->access$3100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader$9;->val$location:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;
    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader;->access$2100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader$9;->val$location:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 1861
    .local v3, "img":Lorg/telegram/messenger/ImageLoader$CacheImage;
    if-nez v3, :cond_2

    .line 1890
    :cond_1
    :goto_0
    return-void

    .line 1864
    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;
    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader;->access$2100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader$9;->val$location:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    const/4 v5, 0x0

    .line 1866
    .local v5, "task":Lorg/telegram/messenger/ImageLoader$CacheOutTask;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v6, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 1867
    iget-object v6, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageReceiver;

    .line 1868
    .local v2, "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;
    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 1869
    .local v1, "cacheImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    if-nez v1, :cond_3

    .line 1870
    new-instance v1, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .end local v1    # "cacheImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V

    .line 1871
    .restart local v1    # "cacheImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$9;->val$finalFile:Ljava/io/File;

    iput-object v6, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 1872
    iget-object v6, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    iput-object v6, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    .line 1873
    iget-object v6, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    iput-object v6, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    .line 1874
    iget-boolean v6, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    iput-boolean v6, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    .line 1875
    iget-object v6, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    iput-object v6, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    .line 1876
    new-instance v5, Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .end local v5    # "task":Lorg/telegram/messenger/ImageLoader$CacheOutTask;
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {v5, v6, v1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    .restart local v5    # "task":Lorg/telegram/messenger/ImageLoader$CacheOutTask;
    iput-object v5, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .line 1877
    iget-object v6, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    iput-object v6, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    .line 1878
    iget-boolean v6, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->animatedFile:Z

    iput-boolean v6, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->animatedFile:Z

    .line 1879
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;
    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    :cond_3
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1866
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1883
    .end local v1    # "cacheImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .end local v2    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    :cond_4
    if-eqz v5, :cond_1

    .line 1884
    iget-boolean v6, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    if-eqz v6, :cond_5

    .line 1885
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader;->access$1800(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1887
    :cond_5
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader;->access$1900(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
