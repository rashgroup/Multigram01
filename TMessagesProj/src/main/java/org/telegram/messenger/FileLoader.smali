.class public Lorg/telegram/messenger/FileLoader;
.super Ljava/lang/Object;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/FileLoader; = null

.field public static final MEDIA_DIR_AUDIO:I = 0x1

.field public static final MEDIA_DIR_CACHE:I = 0x4

.field public static final MEDIA_DIR_DOCUMENT:I = 0x3

.field public static final MEDIA_DIR_IMAGE:I = 0x0

.field public static final MEDIA_DIR_VIDEO:I = 0x2


# instance fields
.field private audioLoadOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private currentAudioLoadOperationsCount:I

.field private currentLoadOperationsCount:I

.field private currentPhotoLoadOperationsCount:I

.field private currentUploadOperationsCount:I

.field private currentUploadSmallOperationsCount:I

.field private delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

.field private volatile fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

.field private loadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/FileLoadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private loadOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mediaDirs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private photoLoadOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private uploadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/FileUploadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private uploadOperationPathsEnc:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/FileUploadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private uploadOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/FileUploadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private uploadSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private uploadSmallOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/FileUploadOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/FileLoader;->Instance:Lorg/telegram/messenger/FileLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v3, p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Ljava/util/HashMap;

    .line 44
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "fileUploadQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationQueue:Ljava/util/LinkedList;

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadSmallOperationQueue:Ljava/util/LinkedList;

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;

    .line 56
    iput-object v3, p0, Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    .line 58
    iput v2, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    .line 59
    iput v2, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    .line 60
    iput v2, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    .line 61
    iput v2, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    .line 62
    iput v2, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/FileLoader;->checkDownloadQueue(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/FileLoader;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1408(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1410(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/FileLoader;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1508(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1510(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/FileLoader;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1608(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1610(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/FileLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadSmallOperationQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/FileLoader;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    return v0
.end method

.method static synthetic access$508(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    return v0
.end method

.method static synthetic access$510(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/FileLoader;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    return v0
.end method

.method static synthetic access$608(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    return v0
.end method

.method static synthetic access$610(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/DispatchQueue;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 2
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "location"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "locationExt"    # Ljava/lang/String;

    .prologue
    .line 288
    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoader$4;

    invoke-direct {v1, p0, p2, p3, p1}, Lorg/telegram/messenger/FileLoader$4;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private checkDownloadQueue(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 2
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "location"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "arg1"    # Ljava/lang/String;

    .prologue
    .line 475
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoader$7;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/FileLoader$7;-><init>(Lorg/telegram/messenger/FileLoader;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 522
    return-void
.end method

.method public static getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    .locals 1
    .param p0, "attach"    # Lorg/telegram/tgnet/TLObject;

    .prologue
    .line 734
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "attach"    # Lorg/telegram/tgnet/TLObject;
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 738
    instance-of v7, p0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_7

    move-object v1, p0

    .line 739
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 740
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v0, 0x0

    .line 741
    .local v0, "docExt":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 742
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    .line 744
    if-eqz v0, :cond_0

    const/16 v7, 0x2e

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .local v2, "idx":I
    if-ne v2, v5, :cond_4

    .line 745
    .end local v2    # "idx":I
    :cond_0
    const-string/jumbo v0, ""

    .line 750
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v6, :cond_3

    .line 751
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 752
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 760
    const-string/jumbo v0, ""

    .line 767
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_6

    .line 768
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 785
    .end local v0    # "docExt":Ljava/lang/String;
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local p1    # "ext":Ljava/lang/String;
    :goto_3
    return-object v5

    .line 747
    .restart local v0    # "docExt":Ljava/lang/String;
    .restart local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .restart local v2    # "idx":I
    .restart local p1    # "ext":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 752
    .end local v2    # "idx":I
    :sswitch_0
    const-string/jumbo v8, "video/mp4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v8, "audio/ogg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    goto :goto_1

    .line 754
    :pswitch_0
    const-string/jumbo v0, ".mp4"

    .line 755
    goto :goto_2

    .line 757
    :pswitch_1
    const-string/jumbo v0, ".ogg"

    .line 758
    goto :goto_2

    .line 764
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_2

    .line 770
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 772
    .end local v0    # "docExt":Ljava/lang/String;
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_7
    instance-of v5, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v5, :cond_b

    move-object v4, p0

    .line 773
    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 774
    .local v4, "photo":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_8

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v5, :cond_9

    .line 775
    :cond_8
    const-string/jumbo v5, ""

    goto :goto_3

    .line 777
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_a

    .end local p1    # "ext":Ljava/lang/String;
    :goto_4
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .restart local p1    # "ext":Ljava/lang/String;
    :cond_a
    const-string/jumbo p1, "jpg"

    goto :goto_4

    .line 778
    .end local v4    # "photo":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_b
    instance-of v5, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_e

    .line 779
    instance-of v5, p0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v5, :cond_c

    .line 780
    const-string/jumbo v5, ""

    goto/16 :goto_3

    :cond_c
    move-object v3, p0

    .line 782
    check-cast v3, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 783
    .local v3, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_d

    .end local p1    # "ext":Ljava/lang/String;
    :goto_5
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .restart local p1    # "ext":Ljava/lang/String;
    :cond_d
    const-string/jumbo p1, "jpg"

    goto :goto_5

    .line 785
    .end local v3    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_e
    const-string/jumbo v5, ""

    goto/16 :goto_3

    .line 752
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

.method public static getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 1
    .param p1, "side"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;I)",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;"
        }
    .end annotation

    .prologue
    .line 661
    .local p0, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    return-object v0
.end method

.method public static getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 9
    .param p1, "side"    # I
    .param p2, "byMinSide"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;IZ)",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;"
        }
    .end annotation

    .prologue
    .local p0, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    const/16 v8, 0x64

    const/high16 v7, -0x80000000

    .line 665
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 666
    :cond_0
    const/4 v1, 0x0

    .line 689
    :cond_1
    return-object v1

    .line 668
    :cond_2
    const/4 v3, 0x0

    .line 669
    .local v3, "lastSide":I
    const/4 v1, 0x0

    .line 670
    .local v1, "closestObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 671
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 672
    .local v4, "obj":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v4, :cond_4

    .line 670
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 675
    :cond_4
    if-eqz p2, :cond_8

    .line 676
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    if-lt v5, v6, :cond_7

    iget v2, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 677
    .local v2, "currentSide":I
    :goto_2
    if-eqz v1, :cond_6

    if-le p1, v8, :cond_5

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_5

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-eq v5, v7, :cond_6

    :cond_5
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-nez v5, :cond_6

    if-le p1, v3, :cond_3

    if-ge v3, v2, :cond_3

    .line 678
    :cond_6
    move-object v1, v4

    .line 679
    move v3, v2

    goto :goto_1

    .line 676
    .end local v2    # "currentSide":I
    :cond_7
    iget v2, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    goto :goto_2

    .line 682
    :cond_8
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    if-lt v5, v6, :cond_b

    iget v2, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 683
    .restart local v2    # "currentSide":I
    :goto_3
    if-eqz v1, :cond_a

    if-le p1, v8, :cond_9

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_9

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-eq v5, v7, :cond_a

    :cond_9
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-nez v5, :cond_a

    if-gt v2, p1, :cond_3

    if-ge v3, v2, :cond_3

    .line 684
    :cond_a
    move-object v1, v4

    .line 685
    move v3, v2

    goto :goto_1

    .line 682
    .end local v2    # "currentSide":I
    :cond_b
    iget v2, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    goto :goto_3
.end method

.method public static getDocumentExtension(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;
    .locals 4
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 717
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v1

    .line 718
    .local v1, "fileName":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 719
    .local v2, "idx":I
    const/4 v0, 0x0

    .line 720
    .local v0, "ext":Ljava/lang/String;
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 721
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 723
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 724
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 726
    :cond_2
    if-nez v0, :cond_3

    .line 727
    const-string/jumbo v0, ""

    .line 729
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 730
    return-object v0
.end method

.method public static getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;
    .locals 3
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 702
    if-eqz p0, :cond_2

    .line 703
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 704
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    .line 713
    :goto_0
    return-object v2

    .line 706
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 707
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 708
    .local v1, "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    if-eqz v2, :cond_1

    .line 709
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    goto :goto_0

    .line 706
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 713
    .end local v0    # "a":I
    .end local v1    # "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 693
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 697
    :goto_0
    return-object v2

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static getInstance()Lorg/telegram/messenger/FileLoader;
    .locals 4

    .prologue
    .line 67
    sget-object v0, Lorg/telegram/messenger/FileLoader;->Instance:Lorg/telegram/messenger/FileLoader;

    .line 68
    .local v0, "localInstance":Lorg/telegram/messenger/FileLoader;
    if-nez v0, :cond_1

    .line 69
    const-class v3, Lorg/telegram/messenger/FileLoader;

    monitor-enter v3

    .line 70
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/FileLoader;->Instance:Lorg/telegram/messenger/FileLoader;

    .line 71
    if-nez v0, :cond_0

    .line 72
    new-instance v1, Lorg/telegram/messenger/FileLoader;

    invoke-direct {v1}, Lorg/telegram/messenger/FileLoader;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/FileLoader;
    .local v1, "localInstance":Lorg/telegram/messenger/FileLoader;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/FileLoader;->Instance:Lorg/telegram/messenger/FileLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 74
    .end local v1    # "localInstance":Lorg/telegram/messenger/FileLoader;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/FileLoader;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 76
    :cond_1
    return-object v0

    .line 74
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/FileLoader;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/FileLoader;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/FileLoader;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/FileLoader;
    goto :goto_0
.end method

.method public static getMessageFileName(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 529
    if-nez p0, :cond_0

    .line 530
    const-string/jumbo v2, ""

    .line 567
    :goto_0
    return-object v2

    .line 532
    :cond_0
    instance-of v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v2, :cond_1

    .line 533
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_5

    .line 534
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 535
    .local v1, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 536
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 537
    .local v0, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :cond_5

    .line 538
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 543
    .end local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_1
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_2

    .line 544
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 545
    :cond_2
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v2, :cond_3

    .line 546
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 547
    .restart local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 548
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 549
    .restart local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :cond_5

    .line 550
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 553
    .end local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_3
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_5

    .line 554
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_4

    .line 555
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 556
    .restart local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 557
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 558
    .restart local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :cond_5

    .line 559
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 562
    .end local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_4
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_5

    .line 563
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 567
    :cond_5
    const-string/jumbo v2, ""

    goto/16 :goto_0
.end method

.method public static getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;
    .locals 2
    .param p0, "attach"    # Lorg/telegram/tgnet/TLObject;

    .prologue
    .line 613
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;
    .locals 10
    .param p0, "attach"    # Lorg/telegram/tgnet/TLObject;
    .param p1, "ext"    # Ljava/lang/String;
    .param p2, "forceCache"    # Z

    .prologue
    const-wide/32 v8, -0x80000000

    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 621
    const/4 v0, 0x0

    .line 622
    .local v0, "dir":Ljava/io/File;
    if-eqz p2, :cond_1

    .line 623
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 654
    :cond_0
    :goto_0
    if-nez v0, :cond_c

    .line 655
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ""

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 657
    :goto_1
    return-object v4

    .line 625
    :cond_1
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_5

    move-object v1, p0

    .line 626
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 627
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    if-eqz v4, :cond_2

    .line 628
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 630
    :cond_2
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 631
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 632
    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 633
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 635
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 638
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_5
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_9

    move-object v3, p0

    .line 639
    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 640
    .local v3, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_7

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v4, :cond_7

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_6

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ltz v4, :cond_7

    :cond_6
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    if-gez v4, :cond_8

    .line 641
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 643
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 645
    .end local v3    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_9
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_0

    move-object v2, p0

    .line 646
    check-cast v2, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 647
    .local v2, "fileLocation":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v4, :cond_a

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_b

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-gez v4, :cond_b

    .line 648
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_0

    .line 650
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_0

    .line 657
    .end local v2    # "fileLocation":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_c
    new-instance v4, Ljava/io/File;

    invoke-static {p0, p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;
    .locals 1
    .param p0, "attach"    # Lorg/telegram/tgnet/TLObject;
    .param p1, "forceCache"    # Z

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;
    .locals 4
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 571
    if-nez p0, :cond_0

    .line 572
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 609
    :goto_0
    return-object v2

    .line 574
    :cond_0
    instance-of v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v2, :cond_1

    .line 575
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_5

    .line 576
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 577
    .local v1, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 578
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 579
    .local v0, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :cond_5

    .line 580
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 585
    .end local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_1
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_2

    .line 586
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 587
    :cond_2
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v2, :cond_3

    .line 588
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 589
    .restart local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 590
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 591
    .restart local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :cond_5

    .line 592
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 595
    .end local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_3
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_5

    .line 596
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_4

    .line 597
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 598
    :cond_4
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_5

    .line 599
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 600
    .restart local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 601
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 602
    .restart local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :cond_5

    .line 603
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    goto/16 :goto_0

    .line 609
    .end local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_5
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZZ)V
    .locals 9
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "location"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "locationExt"    # Ljava/lang/String;
    .param p4, "locationSize"    # I
    .param p5, "force"    # Z
    .param p6, "cacheOnly"    # Z

    .prologue
    .line 349
    iget-object v8, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoader$6;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move v5, p5

    move v6, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader$6;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;ZIZ)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 472
    return-void
.end method


# virtual methods
.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p2, "ext"    # Ljava/lang/String;

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 2
    .param p1, "photo"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0, v1, v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public cancelUploadFile(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "enc"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoader$1;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/FileLoader$1;-><init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public checkDirectory(I)Ljava/io/File;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public checkUploadNewDataAvailable(Ljava/lang/String;ZJ)V
    .locals 7
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "encrypted"    # Z
    .param p3, "finalSize"    # J

    .prologue
    .line 124
    iget-object v6, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoader$2;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader$2;-><init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;J)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public deleteFiles(Ljava/util/ArrayList;I)V
    .locals 2
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 789
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoader$8;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/FileLoader$8;-><init>(Lorg/telegram/messenger/FileLoader;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getDirectory(I)Ljava/io/File;
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x4

    .line 88
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 89
    .local v0, "dir":Ljava/io/File;
    if-nez v0, :cond_0

    if-eq p1, v3, :cond_0

    .line 90
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "dir":Ljava/io/File;
    check-cast v0, Ljava/io/File;

    .line 93
    .restart local v0    # "dir":Ljava/io/File;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_1
    :goto_0
    return-object v0

    .line 96
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isLoadingFile(Ljava/lang/String;)Z
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 319
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 320
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Boolean;

    .line 321
    .local v1, "result":[Ljava/lang/Boolean;
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/FileLoader$5;

    invoke-direct {v4, p0, v1, p1, v2}, Lorg/telegram/messenger/FileLoader$5;-><init>(Lorg/telegram/messenger/FileLoader;[Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 329
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V
    .locals 7
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "force"    # Z
    .param p3, "cacheOnly"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 341
    if-nez p3, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    if-eqz v0, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZZ)V

    .line 342
    return-void

    :cond_1
    move v6, v4

    .line 341
    goto :goto_0
.end method

.method public loadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "location"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p2, "ext"    # Ljava/lang/String;
    .param p3, "size"    # I
    .param p4, "cacheOnly"    # Z

    .prologue
    const/4 v5, 0x1

    .line 345
    const/4 v1, 0x0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-eqz v0, :cond_1

    :cond_0
    move v6, v5

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZZ)V

    .line 346
    return-void

    .line 345
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public loadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "photo"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .param p2, "ext"    # Ljava/lang/String;
    .param p3, "cacheOnly"    # Z

    .prologue
    const/4 v5, 0x0

    .line 337
    const/4 v1, 0x0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-eqz v0, :cond_2

    :cond_1
    const/4 v6, 0x1

    :goto_0
    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZZ)V

    .line 338
    return-void

    :cond_2
    move v6, v5

    .line 337
    goto :goto_0
.end method

.method public setDelegate(Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    .prologue
    .line 525
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    .line 526
    return-void
.end method

.method public setMediaDirs(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "dirs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Ljava/util/HashMap;

    .line 81
    return-void
.end method

.method public uploadFile(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "encrypted"    # Z
    .param p3, "small"    # Z

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    .line 144
    return-void
.end method

.method public uploadFile(Ljava/lang/String;ZZI)V
    .locals 7
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "encrypted"    # Z
    .param p3, "small"    # Z
    .param p4, "estimatedSize"    # I

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoader$3;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader$3;-><init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;IZ)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
