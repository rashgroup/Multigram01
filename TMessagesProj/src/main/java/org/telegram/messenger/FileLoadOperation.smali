.class public Lorg/telegram/messenger/FileLoadOperation;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;,
        Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    }
.end annotation


# static fields
.field private static final bigFileSizeFrom:I = 0x100000

.field private static final downloadChunkSize:I = 0x8000

.field private static final downloadChunkSizeBig:I = 0x20000

.field private static final maxDownloadRequests:I = 0x4

.field private static final maxDownloadRequestsBig:I = 0x2

.field private static final stateDownloading:I = 0x1

.field private static final stateFailed:I = 0x2

.field private static final stateFinished:I = 0x3

.field private static final stateIdle:I


# instance fields
.field private bytesCountPadding:I

.field private cacheFileFinal:Ljava/io/File;

.field private cacheFileTemp:Ljava/io/File;

.field private cacheIvTemp:Ljava/io/File;

.field private currentDownloadChunkSize:I

.field private currentMaxDownloadRequests:I

.field private datacenter_id:I

.field private delayedRequestInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

.field private downloadedBytes:I

.field private ext:Ljava/lang/String;

.field private fileOutputStream:Ljava/io/RandomAccessFile;

.field private fiv:Ljava/io/RandomAccessFile;

.field private isForceRequest:Z

.field private iv:[B

.field private key:[B

.field private location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

.field private nextDownloadOffset:I

.field private origin:Ljava/lang/String;

.field private renameRetryCount:I

.field private requestInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestsCount:I

.field private volatile state:I

.field private storePath:Ljava/io/File;

.field private tempPath:Ljava/io/File;

.field private totalBytesCount:I


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 11
    .param p1, "documentLocation"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 107
    :try_start_0
    instance-of v6, p1, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    if-eqz v6, :cond_5

    .line 108
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 109
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 110
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 111
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    .line 112
    const/16 v6, 0x20

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    .line 113
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    .line 121
    :cond_0
    :goto_0
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    .line 122
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v6, :cond_1

    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, "toAdd":I
    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    rem-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_1

    .line 125
    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    rem-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x10

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    .line 126
    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    iget v7, p0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    add-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    .line 129
    .end local v2    # "toAdd":I
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    .line 131
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .local v1, "idx":I
    if-ne v1, v4, :cond_6

    .line 132
    .end local v1    # "idx":I
    :cond_2
    const-string/jumbo v6, ""

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    .line 136
    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v5, :cond_4

    .line 137
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 138
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_3
    move v3, v4

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 146
    const-string/jumbo v3, ""

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    .line 164
    :cond_4
    :goto_3
    return-void

    .line 115
    :cond_5
    instance-of v6, p1, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v6, :cond_0

    .line 116
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 117
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 118
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 119
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    const/4 v3, 0x2

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 156
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 157
    sget-object v3, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/FileLoadOperation$1;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/FileLoadOperation$1;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "idx":I
    :cond_6
    :try_start_1
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto :goto_1

    .line 138
    .end local v1    # "idx":I
    :sswitch_0
    const-string/jumbo v5, "video/mp4"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :sswitch_1
    const-string/jumbo v3, "audio/ogg"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_2

    .line 140
    :pswitch_0
    const-string/jumbo v3, ".mp4"

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto :goto_3

    .line 143
    :pswitch_1
    const-string/jumbo v3, ".ogg"

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto :goto_3

    .line 150
    :cond_7
    const-string/jumbo v3, ""

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        0xb26cbd6 -> :sswitch_1
        0x4f62635d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;I)V
    .locals 5
    .param p1, "photoLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v4, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 82
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->origin:Ljava/lang/String;

    .line 84
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 86
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 88
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 89
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 90
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    .line 91
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    .line 93
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    .line 101
    :cond_0
    :goto_0
    iput p3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    .line 102
    if-eqz p2, :cond_2

    .end local p2    # "extension":Ljava/lang/String;
    :goto_1
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    .line 103
    return-void

    .line 94
    .restart local p2    # "extension":Ljava/lang/String;
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 97
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    .line 98
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 99
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    goto :goto_0

    .line 102
    :cond_2
    const-string/jumbo p2, "jpg"

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/telegram/messenger/FileLoadOperation;)Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/FileLoadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p1, "x1"    # Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/FileLoadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/FileLoadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/messenger/FileLoadOperation;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    .line 332
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 334
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 338
    :goto_0
    :try_start_2
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 339
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 346
    :cond_0
    :goto_1
    :try_start_3
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_1

    .line 347
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 348
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 353
    :cond_1
    :goto_2
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 354
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 355
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 356
    .local v2, "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 357
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    .line 358
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    .line 354
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 335
    .end local v0    # "a":I
    .end local v2    # "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 341
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 342
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 350
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 351
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 361
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 363
    .end local v0    # "a":I
    :cond_4
    return-void
.end method

.method private onFinishLoadingFile()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 366
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eq v1, v4, :cond_0

    .line 403
    :goto_0
    return-void

    .line 369
    :cond_0
    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 370
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 371
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 372
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 373
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    .line 375
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    if-eqz v1, :cond_4

    .line 376
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 377
    .local v0, "renameResult":Z
    if-nez v0, :cond_4

    .line 378
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_2

    .line 379
    const-string/jumbo v1, "tmessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to rename temp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to final = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " retry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_2
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    .line 382
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    if-ge v1, v5, :cond_3

    .line 383
    iput v4, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 384
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$8;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/FileLoadOperation$8;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 396
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    .line 399
    .end local v0    # "renameResult":Z
    :cond_4
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_5

    .line 400
    const-string/jumbo v1, "tmessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finished downloading file to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {v1, p0, v2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFinishLoadingFile(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;)V

    goto/16 :goto_0
.end method

.method private processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 18
    .param p1, "requestInfo"    # Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 407
    if-nez p2, :cond_e

    .line 409
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->offset:I
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 410
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v2, :cond_2

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v2

    if-nez v2, :cond_3

    .line 418
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    :catch_0
    move-exception v13

    .line 460
    .local v13, "e":Ljava/lang/Exception;
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    .line 462
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v13}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 421
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v11

    .line 422
    .local v11, "currentBytesSize":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    add-int/2addr v2, v11

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    .line 423
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    if-ne v11, v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_b

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    if-gt v2, v3, :cond_b

    :cond_5
    const/4 v15, 0x1

    .line 425
    .local v15, "finishedDownloading":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v2, :cond_6

    .line 426
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v2, v2, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v8

    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 427
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    if-eqz v2, :cond_6

    .line 428
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->limit(I)V

    .line 431
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_7

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    .line 433
    .local v10, "channel":Ljava/nio/channels/FileChannel;
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v2, v2, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 435
    .end local v10    # "channel":Ljava/nio/channels/FileChannel;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_8

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 439
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didChangedLoadProgress(Lorg/telegram/messenger/FileLoadOperation;F)V

    .line 443
    :cond_9
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_a

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 445
    .local v12, "delayedRequestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->offset:I
    invoke-static {v12}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 447
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    .line 448
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v12}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    .line 449
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v12}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    .line 454
    .end local v12    # "delayedRequestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_a
    if-eqz v15, :cond_d

    .line 455
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile()V

    goto/16 :goto_0

    .line 423
    .end local v9    # "a":I
    .end local v15    # "finishedDownloading":Z
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 443
    .restart local v9    # "a":I
    .restart local v12    # "delayedRequestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    .restart local v15    # "finishedDownloading":Z
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 457
    .end local v12    # "delayedRequestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 465
    .end local v9    # "a":I
    .end local v11    # "currentBytesSize":I
    .end local v15    # "finishedDownloading":Z
    :cond_e
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "FILE_MIGRATE_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 466
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "FILE_MIGRATE_"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 467
    .local v14, "errorMsg":Ljava/lang/String;
    new-instance v16, Ljava/util/Scanner;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 468
    .local v16, "scanner":Ljava/util/Scanner;
    const-string/jumbo v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 471
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v17

    .line 475
    .local v17, "val":Ljava/lang/Integer;
    :goto_3
    if-nez v17, :cond_f

    .line 476
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    goto/16 :goto_0

    .line 472
    .end local v17    # "val":Ljava/lang/Integer;
    :catch_1
    move-exception v13

    .line 473
    .restart local v13    # "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    .restart local v17    # "val":Ljava/lang/Integer;
    goto :goto_3

    .line 479
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    .line 480
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    .line 481
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    goto/16 :goto_0

    .line 483
    .end local v14    # "errorMsg":Ljava/lang/String;
    .end local v16    # "scanner":Ljava/util/Scanner;
    .end local v17    # "val":Ljava/lang/Integer;
    :cond_10
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "OFFSET_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 484
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_11

    .line 486
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 487
    :catch_2
    move-exception v13

    .line 488
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v13}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 489
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    goto/16 :goto_0

    .line 493
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_11
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    goto/16 :goto_0

    .line 496
    :cond_12
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "RETRY_LIMIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 497
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    goto/16 :goto_0

    .line 500
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-eqz v2, :cond_14

    .line 501
    const-string/jumbo v2, "tmessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " local_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " access_hash = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " volume_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " secret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_14
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    goto/16 :goto_0
.end method

.method private startDownloadRequest()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 510
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-ne v0, v12, :cond_1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-ge v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    if-lt v0, v2, :cond_2

    .line 541
    :cond_1
    return-void

    .line 513
    :cond_2
    const/4 v9, 0x1

    .line 514
    .local v9, "count":I
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_3

    .line 515
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 518
    :cond_3
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_0
    if-ge v8, v9, :cond_1

    .line 519
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_4

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-ge v0, v2, :cond_1

    .line 522
    :cond_4
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_5

    add-int/lit8 v0, v9, -0x1

    if-eq v8, v0, :cond_5

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_6

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    add-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lt v0, v2, :cond_6

    :cond_5
    move v7, v12

    .line 523
    .local v7, "isLast":Z
    :goto_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;-><init>()V

    .line 524
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 525
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->offset:I

    .line 526
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->limit:I

    .line 527
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    .line 529
    new-instance v10, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-direct {v10, v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;-><init>(Lorg/telegram/messenger/FileLoadOperation$1;)V

    .line 530
    .local v10, "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->offset:I

    # setter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->offset:I
    invoke-static {v10, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1002(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;I)I

    .line 532
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$9;

    invoke-direct {v2, p0, v10}, Lorg/telegram/messenger/FileLoadOperation$9;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    iget-boolean v4, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    if-eqz v4, :cond_7

    const/16 v4, 0x20

    :goto_2
    or-int/lit8 v4, v4, 0x2

    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_8

    const/4 v6, 0x2

    :goto_3
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)I

    move-result v0

    # setter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I
    invoke-static {v10, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$802(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;I)I

    .line 539
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    .line 518
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;
    .end local v7    # "isLast":Z
    .end local v10    # "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_6
    move v7, v11

    .line 522
    goto :goto_1

    .restart local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;
    .restart local v7    # "isLast":Z
    .restart local v10    # "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_7
    move v4, v11

    .line 532
    goto :goto_2

    :cond_8
    const v6, 0x10002

    goto :goto_3
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 309
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$7;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLoadOperation$7;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method

.method public isForceRequest()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    return v0
.end method

.method public setDelegate(Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    .prologue
    .line 544
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    .line 545
    return-void
.end method

.method public setForceRequest(Z)V
    .locals 0
    .param p1, "forceRequest"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    .line 168
    return-void
.end method

.method public setPaths(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "store"    # Ljava/io/File;
    .param p2, "temp"    # Ljava/io/File;

    .prologue
    .line 175
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    .line 176
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    .line 177
    return-void
.end method

.method public start()V
    .locals 12

    .prologue
    .line 180
    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eqz v5, :cond_0

    .line 306
    :goto_0
    return-void

    .line 183
    :cond_0
    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    const/high16 v8, 0x100000

    if-lt v5, v8, :cond_1

    const/high16 v5, 0x20000

    :goto_1
    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    .line 184
    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    const/high16 v8, 0x100000

    if-lt v5, v8, :cond_2

    const/4 v5, 0x2

    :goto_2
    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    .line 185
    new-instance v5, Ljava/util/ArrayList;

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    .line 186
    new-instance v5, Ljava/util/ArrayList;

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    .line 187
    const/4 v5, 0x1

    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 188
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-nez v5, :cond_3

    .line 189
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 190
    sget-object v5, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/messenger/FileLoadOperation$2;

    invoke-direct {v8, p0}, Lorg/telegram/messenger/FileLoadOperation$2;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 183
    :cond_1
    const v5, 0x8000

    goto :goto_1

    .line 184
    :cond_2
    const/4 v5, 0x4

    goto :goto_2

    .line 200
    :cond_3
    const/4 v3, 0x0

    .line 201
    .local v3, "fileNameIv":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    if-eqz v5, :cond_6

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ".temp"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "fileNameTemp":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "fileNameFinal":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v5, :cond_4

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ".iv"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    :cond_4
    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    const/high16 v8, -0x80000000

    if-eq v5, v8, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    const-wide/32 v10, -0x80000000

    cmp-long v5, v8, v10

    if-eqz v5, :cond_5

    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    if-nez v5, :cond_9

    .line 208
    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 209
    sget-object v5, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/messenger/FileLoadOperation$3;

    invoke-direct {v8, p0}, Lorg/telegram/messenger/FileLoadOperation$3;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 218
    .end local v2    # "fileNameFinal":Ljava/lang/String;
    .end local v4    # "fileNameTemp":Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ".temp"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 219
    .restart local v4    # "fileNameTemp":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .restart local v2    # "fileNameFinal":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v5, :cond_7

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ".iv"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    :cond_7
    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    if-eqz v5, :cond_8

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_9

    .line 224
    :cond_8
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 225
    sget-object v5, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/messenger/FileLoadOperation$4;

    invoke-direct {v8, p0}, Lorg/telegram/messenger/FileLoadOperation$4;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 235
    :cond_9
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    invoke-direct {v5, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    .line 236
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    .line 237
    .local v1, "exist":Z
    if-eqz v1, :cond_a

    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-eqz v5, :cond_a

    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    int-to-long v8, v5

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-eqz v5, :cond_a

    .line 238
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 241
    :cond_a
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_11

    .line 242
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v5, v8, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    .line 243
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 244
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v5, v8

    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    .line 245
    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    div-int/2addr v5, v8

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    mul-int/2addr v5, v8

    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    .line 248
    :cond_b
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v5, :cond_c

    .line 249
    const-string/jumbo v5, "tmessages"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "start loading file to temp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " final = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_c
    if-eqz v3, :cond_d

    .line 253
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v5, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    .line 255
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    const-string/jumbo v9, "rws"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    .line 256
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 257
    .local v6, "len":J
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_f

    const-wide/16 v8, 0x20

    rem-long v8, v6, v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_f

    .line 258
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-virtual {v5, v8, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v6    # "len":J
    :cond_d
    :goto_3
    :try_start_1
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    const-string/jumbo v9, "rws"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    .line 269
    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    if-eqz v5, :cond_e

    .line 270
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 275
    :cond_e
    :goto_4
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-nez v5, :cond_10

    .line 276
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 277
    sget-object v5, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/messenger/FileLoadOperation$5;

    invoke-direct {v8, p0}, Lorg/telegram/messenger/FileLoadOperation$5;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 260
    .restart local v6    # "len":J
    :cond_f
    const/4 v5, 0x0

    :try_start_2
    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 262
    .end local v6    # "len":J
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    const/4 v5, 0x0

    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    goto :goto_3

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 273
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 285
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_10
    sget-object v5, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/messenger/FileLoadOperation$6;

    invoke-direct {v8, p0}, Lorg/telegram/messenger/FileLoadOperation$6;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 301
    :cond_11
    :try_start_3
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 302
    :catch_2
    move-exception v0

    .line 303
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    const/4 v8, 0x0

    invoke-interface {v5, p0, v8}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    goto/16 :goto_0
.end method
