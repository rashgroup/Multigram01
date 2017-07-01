.class Lorg/telegram/messenger/FileUploadOperation$2;
.super Ljava/lang/Object;
.source "FileUploadOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileUploadOperation;->checkNewDataAvailable(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileUploadOperation;

.field final synthetic val$finalSize:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileUploadOperation;J)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iput-wide p2, p0, Lorg/telegram/messenger/FileUploadOperation$2;->val$finalSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 118
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$100(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation$2;->val$finalSize:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # setter for: Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I
    invoke-static {v1, v6}, Lorg/telegram/messenger/FileUploadOperation;->access$102(Lorg/telegram/messenger/FileUploadOperation;I)I

    .line 120
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation$2;->val$finalSize:J

    # setter for: Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J
    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/FileUploadOperation;->access$202(Lorg/telegram/messenger/FileUploadOperation;J)J

    .line 121
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J
    invoke-static {v2}, Lorg/telegram/messenger/FileUploadOperation;->access$200(Lorg/telegram/messenger/FileUploadOperation;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I
    invoke-static {v4}, Lorg/telegram/messenger/FileUploadOperation;->access$400(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I
    invoke-static {v3}, Lorg/telegram/messenger/FileUploadOperation;->access$400(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v3

    div-int/2addr v2, v3

    # setter for: Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I
    invoke-static {v1, v2}, Lorg/telegram/messenger/FileUploadOperation;->access$302(Lorg/telegram/messenger/FileUploadOperation;I)I

    .line 122
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->started:Z
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$500(Lorg/telegram/messenger/FileUploadOperation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "uploadinfo"

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    .local v0, "preferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # invokes: Lorg/telegram/messenger/FileUploadOperation;->storeFileUploadInfo(Landroid/content/SharedPreferences;)V
    invoke-static {v1, v0}, Lorg/telegram/messenger/FileUploadOperation;->access$600(Lorg/telegram/messenger/FileUploadOperation;Landroid/content/SharedPreferences;)V

    .line 127
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->requestToken:I
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$700(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v1

    if-nez v1, :cond_1

    .line 128
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # invokes: Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$000(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 130
    :cond_1
    return-void
.end method
