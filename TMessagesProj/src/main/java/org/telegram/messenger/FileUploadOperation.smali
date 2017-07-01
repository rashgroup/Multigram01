.class public Lorg/telegram/messenger/FileUploadOperation;
.super Ljava/lang/Object;
.source "FileUploadOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;
    }
.end annotation


# instance fields
.field private currentFileId:J

.field private currentPartNum:I

.field private currentUploaded:J

.field public delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

.field private estimatedSize:I

.field private fileKey:Ljava/lang/String;

.field private fingerprint:I

.field private isBigFile:Z

.field private isEncrypted:Z

.field private isLastPart:Z

.field private iv:[B

.field private ivChange:[B

.field private key:[B

.field private mdEnc:Ljava/security/MessageDigest;

.field private readBuffer:[B

.field private requestToken:I

.field private saveInfoTimes:I

.field private started:Z

.field public state:I

.field private stream:Ljava/io/FileInputStream;

.field private totalFileSize:J

.field private totalPartsCount:I

.field private uploadChunkSize:I

.field private uploadStartTime:I

.field private uploadingFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "encrypted"    # Z
    .param p3, "estimated"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const v0, 0x8000

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 30
    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    .line 33
    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->requestToken:I

    .line 34
    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    .line 36
    iput-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    .line 37
    iput-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    .line 38
    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    .line 39
    iput-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploaded:J

    .line 40
    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    .line 44
    iput-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    .line 45
    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I

    .line 46
    iput-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    .line 48
    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    .line 49
    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;

    .line 52
    iput-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->started:Z

    .line 61
    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    .line 62
    iput-boolean p2, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    .line 63
    iput p3, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    .line 64
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/FileUploadOperation;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/messenger/FileUploadOperation;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/FileUploadOperation;)[B
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/FileUploadOperation;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/FileUploadOperation;)Ljava/security/MessageDigest;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/FileUploadOperation;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/FileUploadOperation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/FileUploadOperation;)[B
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/FileUploadOperation;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    return-wide v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/FileUploadOperation;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # J

    .prologue
    .line 27
    iput-wide p1, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    return-wide p1
.end method

.method static synthetic access$302(Lorg/telegram/messenger/FileUploadOperation;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/FileUploadOperation;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->started:Z

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/FileUploadOperation;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileUploadOperation;->storeFileUploadInfo(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->requestToken:I

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/FileUploadOperation;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->requestToken:I

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    return v0
.end method

.method static synthetic access$808(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/FileUploadOperation;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 27
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploaded:J

    return-wide v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    .line 96
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "uploadinfo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 97
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_size"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_uploaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_iv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_ivc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 107
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startUploadRequest()V
    .locals 38

    .prologue
    .line 149
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const/4 v4, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->started:Z

    .line 157
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    if-nez v4, :cond_1f

    .line 158
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v14, "cacheFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    .line 160
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-eqz v4, :cond_2

    .line 161
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    .line 165
    :goto_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    const-wide/32 v6, 0xa00000

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 166
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    .line 175
    :goto_2
    const-wide/16 v4, 0x20

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    const-wide/32 v8, 0x2ee000

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x2ee000

    div-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 176
    const/16 v4, 0x400

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    rem-int/2addr v4, v5

    if-eqz v4, :cond_5

    .line 177
    const/16 v15, 0x40

    .line 178
    .local v15, "chunkSize":I
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    if-le v4, v15, :cond_4

    .line 179
    mul-int/lit8 v15, v15, 0x2

    goto :goto_3

    .line 163
    .end local v15    # "chunkSize":I
    :cond_2
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 364
    .end local v14    # "cacheFile":Ljava/io/File;
    :catch_0
    move-exception v18

    .line 365
    .local v18, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 367
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    goto/16 :goto_0

    .line 169
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v14    # "cacheFile":Ljava/io/File;
    :cond_3
    :try_start_1
    const-string/jumbo v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 170
    :catch_1
    move-exception v18

    .line 171
    .local v18, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_2
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 181
    .end local v18    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v15    # "chunkSize":I
    :cond_4
    move-object/from16 v0, p0

    iput v15, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 184
    .end local v15    # "chunkSize":I
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    mul-int/lit16 v4, v4, 0x400

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 185
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    long-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    div-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    .line 186
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_b

    const-string/jumbo v4, "enc"

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    .line 189
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "uploadinfo"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v27

    .line 190
    .local v27, "preferences":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_size"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    .line 191
    .local v20, "fileSize":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    .line 192
    const/16 v30, 0x0

    .line 193
    .local v30, "rewrite":Z
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    cmp-long v4, v20, v4

    if-nez v4, :cond_19

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_time"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 196
    .local v16, "date":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_uploaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v36

    .line 197
    .local v36, "uploadedSize":J
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_6

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_iv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 199
    .local v23, "ivString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 200
    .local v25, "keyString":Ljava/lang/String;
    if-eqz v23, :cond_d

    if-eqz v25, :cond_d

    .line 201
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    .line 202
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    .line 203
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_c

    .line 204
    const/16 v4, 0x20

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v7, 0x0

    const/16 v8, 0x20

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    .end local v23    # "ivString":Ljava/lang/String;
    .end local v25    # "keyString":Ljava/lang/String;
    :cond_6
    :goto_5
    if-nez v30, :cond_18

    if-eqz v16, :cond_18

    .line 214
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    const v5, 0x15180

    sub-int/2addr v4, v5

    move/from16 v0, v16

    if-ge v0, v4, :cond_e

    .line 215
    const/16 v16, 0x0

    .line 219
    :cond_7
    :goto_6
    if-eqz v16, :cond_13

    .line 220
    const-wide/16 v4, 0x0

    cmp-long v4, v36, v4

    if-lez v4, :cond_17

    .line 221
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/FileUploadOperation;->currentUploaded:J

    .line 222
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v4, v4

    div-long v4, v36, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    .line 223
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-nez v4, :cond_11

    .line 224
    const/4 v13, 0x0

    .local v13, "b":I
    :goto_7
    int-to-long v4, v13

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/FileUploadOperation;->currentUploaded:J

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gez v4, :cond_13

    .line 225
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v28

    .line 226
    .local v28, "read":I
    const/16 v34, 0x0

    .line 227
    .local v34, "toAdd":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_8

    rem-int/lit8 v4, v28, 0x10

    if-eqz v4, :cond_8

    .line 228
    rem-int/lit8 v4, v28, 0x10

    rsub-int/lit8 v4, v4, 0x10

    add-int v34, v34, v4

    .line 230
    :cond_8
    new-instance v31, Lorg/telegram/tgnet/NativeByteBuffer;

    add-int v4, v28, v34

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 231
    .local v31, "sendBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    move/from16 v0, v28

    if-ne v0, v4, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_a

    .line 232
    :cond_9
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    .line 234
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    const/4 v5, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v0, v4, v5, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([BII)V

    .line 235
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_10

    .line 236
    const/4 v11, 0x0

    .local v11, "a":I
    :goto_8
    move/from16 v0, v34

    if-ge v11, v0, :cond_f

    .line 237
    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByte(I)V

    .line 236
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 188
    .end local v11    # "a":I
    .end local v13    # "b":I
    .end local v16    # "date":I
    .end local v20    # "fileSize":J
    .end local v27    # "preferences":Landroid/content/SharedPreferences;
    .end local v28    # "read":I
    .end local v30    # "rewrite":Z
    .end local v31    # "sendBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v34    # "toAdd":I
    .end local v36    # "uploadedSize":J
    :cond_b
    const-string/jumbo v4, ""

    goto/16 :goto_4

    .line 207
    .restart local v16    # "date":I
    .restart local v20    # "fileSize":J
    .restart local v23    # "ivString":Ljava/lang/String;
    .restart local v25    # "keyString":Ljava/lang/String;
    .restart local v27    # "preferences":Landroid/content/SharedPreferences;
    .restart local v30    # "rewrite":Z
    .restart local v36    # "uploadedSize":J
    :cond_c
    const/16 v30, 0x1

    goto/16 :goto_5

    .line 210
    :cond_d
    const/16 v30, 0x1

    goto/16 :goto_5

    .line 216
    .end local v23    # "ivString":Ljava/lang/String;
    .end local v25    # "keyString":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-nez v4, :cond_7

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    int-to-float v5, v5

    const v6, 0x45a8c000    # 5400.0f

    sub-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    .line 217
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 239
    .restart local v11    # "a":I
    .restart local v13    # "b":I
    .restart local v28    # "read":I
    .restart local v31    # "sendBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v34    # "toAdd":I
    :cond_f
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    add-int v10, v28, v34

    invoke-static/range {v4 .. v10}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 241
    .end local v11    # "a":I
    :cond_10
    invoke-virtual/range {v31 .. v31}, Lorg/telegram/tgnet/NativeByteBuffer;->rewind()V

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;

    move-object/from16 v0, v31

    iget-object v5, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 243
    invoke-virtual/range {v31 .. v31}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 224
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 246
    .end local v13    # "b":I
    .end local v28    # "read":I
    .end local v31    # "sendBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v34    # "toAdd":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 247
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_13

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_ivc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 249
    .local v24, "ivcString":Ljava/lang/String;
    if-eqz v24, :cond_16

    .line 250
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_13

    .line 252
    :cond_12
    const/16 v30, 0x1

    .line 253
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentUploaded:J

    .line 254
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    .line 273
    .end local v16    # "date":I
    .end local v24    # "ivcString":Ljava/lang/String;
    .end local v36    # "uploadedSize":J
    :cond_13
    :goto_9
    if-eqz v30, :cond_15

    .line 274
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_14

    .line 275
    const/16 v4, 0x20

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    .line 276
    const/16 v4, 0x20

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    .line 277
    const/16 v4, 0x20

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    .line 278
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 279
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 280
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v7, 0x0

    const/16 v8, 0x20

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    :cond_14
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    .line 283
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-nez v4, :cond_15

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/FileUploadOperation;->storeFileUploadInfo(Landroid/content/SharedPreferences;)V

    .line 288
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v4, :cond_1a

    .line 290
    :try_start_3
    const-string/jumbo v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v26

    .line 291
    .local v26, "md":Ljava/security/MessageDigest;
    const/16 v4, 0x40

    new-array v12, v4, [B

    .line 292
    .local v12, "arr":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-static {v4, v5, v12, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    const/4 v5, 0x0

    const/16 v6, 0x20

    const/16 v7, 0x20

    invoke-static {v4, v5, v12, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v17

    .line 295
    .local v17, "digest":[B
    const/4 v11, 0x0

    .restart local v11    # "a":I
    :goto_a
    const/4 v4, 0x4

    if-ge v11, v4, :cond_1a

    .line 296
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I

    aget-byte v5, v17, v11

    add-int/lit8 v6, v11, 0x4

    aget-byte v6, v17, v6

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v11, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 295
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 257
    .end local v11    # "a":I
    .end local v12    # "arr":[B
    .end local v17    # "digest":[B
    .end local v26    # "md":Ljava/security/MessageDigest;
    .restart local v16    # "date":I
    .restart local v24    # "ivcString":Ljava/lang/String;
    .restart local v36    # "uploadedSize":J
    :cond_16
    const/16 v30, 0x1

    .line 258
    const-wide/16 v4, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentUploaded:J

    .line 259
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    goto/16 :goto_9

    .line 264
    .end local v24    # "ivcString":Ljava/lang/String;
    :cond_17
    const/16 v30, 0x1

    goto/16 :goto_9

    .line 268
    :cond_18
    const/16 v30, 0x1

    goto/16 :goto_9

    .line 271
    .end local v16    # "date":I
    .end local v36    # "uploadedSize":J
    :cond_19
    const/16 v30, 0x1

    goto/16 :goto_9

    .line 298
    :catch_2
    move-exception v18

    .line 299
    .local v18, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    .end local v14    # "cacheFile":Ljava/io/File;
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v20    # "fileSize":J
    .end local v27    # "preferences":Landroid/content/SharedPreferences;
    .end local v30    # "rewrite":Z
    :cond_1a
    :goto_b
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-eqz v4, :cond_1b

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v32

    .line 320
    .local v32, "size":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentUploaded:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v4, v32

    if-gtz v4, :cond_0

    .line 325
    .end local v32    # "size":J
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v28

    .line 326
    .restart local v28    # "read":I
    const/16 v34, 0x0

    .line 327
    .restart local v34    # "toAdd":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_1c

    rem-int/lit8 v4, v28, 0x10

    if-eqz v4, :cond_1c

    .line 328
    rem-int/lit8 v4, v28, 0x10

    rsub-int/lit8 v4, v4, 0x10

    add-int v34, v34, v4

    .line 330
    :cond_1c
    new-instance v31, Lorg/telegram/tgnet/NativeByteBuffer;

    add-int v4, v28, v34

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 331
    .restart local v31    # "sendBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    move/from16 v0, v28

    if-ne v0, v4, :cond_1d

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-nez v4, :cond_1e

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_1e

    .line 332
    :cond_1d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    .line 334
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    const/4 v5, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v0, v4, v5, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([BII)V

    .line 335
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_26

    .line 336
    const/4 v11, 0x0

    .restart local v11    # "a":I
    :goto_c
    move/from16 v0, v34

    if-ge v11, v0, :cond_25

    .line 337
    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByte(I)V

    .line 336
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 302
    .end local v11    # "a":I
    .end local v28    # "read":I
    .end local v31    # "sendBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v34    # "toAdd":I
    :cond_1f
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-nez v4, :cond_1a

    .line 303
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    const/4 v5, 0x4

    if-lt v4, v5, :cond_20

    .line 304
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    .line 306
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentUploaded:J

    const-wide/32 v6, 0x100000

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-nez v4, :cond_24

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    if-nez v4, :cond_24

    .line 307
    :cond_22
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "uploadinfo"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v27

    .line 308
    .restart local v27    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    .line 309
    .local v19, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_uploaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/FileUploadOperation;->currentUploaded:J

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 310
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_23

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_ivc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 313
    :cond_23
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 315
    .end local v19    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v27    # "preferences":Landroid/content/SharedPreferences;
    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    goto/16 :goto_b

    .line 339
    .restart local v11    # "a":I
    .restart local v28    # "read":I
    .restart local v31    # "sendBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v34    # "toAdd":I
    :cond_25
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    add-int v10, v28, v34

    invoke-static/range {v4 .. v10}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 341
    .end local v11    # "a":I
    :cond_26
    invoke-virtual/range {v31 .. v31}, Lorg/telegram/tgnet/NativeByteBuffer;->rewind()V

    .line 342
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-nez v4, :cond_27

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;

    move-object/from16 v0, v31

    iget-object v5, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 345
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v4, :cond_29

    .line 346
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;-><init>()V

    .line 347
    .local v29, "req":Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_part:I

    .line 348
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    move-object/from16 v0, v29

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_id:J

    .line 349
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-eqz v4, :cond_28

    .line 350
    const/4 v4, -0x1

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_total_parts:I

    .line 354
    :goto_d
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 355
    move-object/from16 v22, v29

    .line 363
    .end local v29    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;
    .local v22, "finalRequest":Lorg/telegram/tgnet/TLObject;
    :goto_e
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentUploaded:J

    move/from16 v0, v28

    int-to-long v6, v0

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentUploaded:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 370
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/FileUploadOperation$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/messenger/FileUploadOperation$3;-><init>(Lorg/telegram/messenger/FileUploadOperation;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->requestToken:I

    goto/16 :goto_0

    .line 352
    .end local v22    # "finalRequest":Lorg/telegram/tgnet/TLObject;
    .restart local v29    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;
    :cond_28
    :try_start_5
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_total_parts:I

    goto :goto_d

    .line 357
    .end local v29    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;
    :cond_29
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;-><init>()V

    .line 358
    .local v29, "req":Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->file_part:I

    .line 359
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    move-object/from16 v0, v29

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->file_id:J

    .line 360
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 361
    move-object/from16 v22, v29

    .restart local v22    # "finalRequest":Lorg/telegram/tgnet/TLObject;
    goto :goto_e
.end method

.method private storeFileUploadInfo(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_uploaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    iget-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v1, :cond_0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_iv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_ivc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 84
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    .line 88
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->requestToken:I

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->requestToken:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 91
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 92
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    goto :goto_0
.end method

.method protected checkNewDataAvailable(J)V
    .locals 3
    .param p1, "finalSize"    # J

    .prologue
    .line 115
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/FileUploadOperation$2;-><init>(Lorg/telegram/messenger/FileUploadOperation;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method public getTotalFileSize()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    return-wide v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    .line 75
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileUploadOperation$1;-><init>(Lorg/telegram/messenger/FileUploadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
