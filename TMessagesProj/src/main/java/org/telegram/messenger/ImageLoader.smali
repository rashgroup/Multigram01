.class public Lorg/telegram/messenger/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ImageLoader$CacheImage;,
        Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;,
        Lorg/telegram/messenger/ImageLoader$CacheOutTask;,
        Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;,
        Lorg/telegram/messenger/ImageLoader$HttpImageTask;,
        Lorg/telegram/messenger/ImageLoader$HttpFileTask;,
        Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/ImageLoader;

.field private static bytes:[B

.field private static bytesThumb:[B

.field private static header:[B

.field private static headerThumb:[B


# instance fields
.field private bitmapUseCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cacheOutQueue:Lorg/telegram/messenger/DispatchQueue;

.field private cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

.field private currentHttpFileLoadTasksCount:I

.field private currentHttpTasksCount:I

.field private fileProgresses:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private httpFileLoadTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/ImageLoader$HttpFileTask;",
            ">;"
        }
    .end annotation
.end field

.field private httpFileLoadTasksByKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$HttpFileTask;",
            ">;"
        }
    .end annotation
.end field

.field private httpTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/ImageLoader$HttpImageTask;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreRemoval:Ljava/lang/String;

.field private imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

.field private imageLoadingByKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$CacheImage;",
            ">;"
        }
    .end annotation
.end field

.field private imageLoadingByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/ImageLoader$CacheImage;",
            ">;"
        }
    .end annotation
.end field

.field private imageLoadingByUrl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$CacheImage;",
            ">;"
        }
    .end annotation
.end field

.field private volatile lastCacheOutTime:J

.field private lastImageNum:I

.field private lastProgressUpdateTime:J

.field private memCache:Lorg/telegram/messenger/LruCache;

.field private retryHttpsTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private telegramPath:Ljava/io/File;

.field private thumbGenerateTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;",
            ">;"
        }
    .end annotation
.end field

.field private thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

.field private waitingForQualityThumb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForQualityThumbByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 73
    new-array v0, v1, [B

    sput-object v0, Lorg/telegram/messenger/ImageLoader;->header:[B

    .line 74
    new-array v0, v1, [B

    sput-object v0, Lorg/telegram/messenger/ImageLoader;->headerThumb:[B

    .line 1064
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    .line 59
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    .line 60
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;

    .line 61
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Ljava/util/HashMap;

    .line 62
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    .line 63
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Ljava/util/HashMap;

    .line 64
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    .line 65
    new-instance v6, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v7, "cacheOutQueue"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 66
    new-instance v6, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v7, "cacheThumbOutQueue"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 67
    new-instance v6, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v7, "thumbGeneratingQueue"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 68
    new-instance v6, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v7, "imageLoadQueue"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 69
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->thumbGenerateTasks:Ljava/util/HashMap;

    .line 75
    iput v9, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    .line 77
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    .line 78
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    .line 79
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->retryHttpsTasks:Ljava/util/HashMap;

    .line 80
    iput v9, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    .line 82
    iput-object v10, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    .line 84
    iput-wide v12, p0, Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J

    .line 85
    iput v9, p0, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    .line 86
    iput-wide v12, p0, Lorg/telegram/messenger/ImageLoader;->lastProgressUpdateTime:J

    .line 88
    iput-object v10, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    .line 1081
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 1082
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 1083
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader;->thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 1084
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 1086
    const/16 v7, 0xf

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "activity"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    invoke-virtual {v6}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v6

    div-int/lit8 v6, v6, 0x7

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/lit16 v6, v6, 0x400

    mul-int/lit16 v1, v6, 0x400

    .line 1088
    .local v1, "cacheSize":I
    new-instance v6, Lorg/telegram/messenger/ImageLoader$1;

    invoke-direct {v6, p0, v1}, Lorg/telegram/messenger/ImageLoader$1;-><init>(Lorg/telegram/messenger/ImageLoader;I)V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    .line 1109
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/ImageLoader$2;

    invoke-direct {v7, p0}, Lorg/telegram/messenger/ImageLoader$2;-><init>(Lorg/telegram/messenger/ImageLoader;)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/FileLoader;->setDelegate(Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;)V

    .line 1203
    new-instance v5, Lorg/telegram/messenger/ImageLoader$3;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/ImageLoader$3;-><init>(Lorg/telegram/messenger/ImageLoader;)V

    .line 1220
    .local v5, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1221
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v6, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1222
    const-string/jumbo v6, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1223
    const-string/jumbo v6, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1224
    const-string/jumbo v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1225
    const-string/jumbo v6, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1226
    const-string/jumbo v6, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1227
    const-string/jumbo v6, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1228
    const-string/jumbo v6, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1229
    const-string/jumbo v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1230
    const-string/jumbo v6, "file"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1231
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1233
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1234
    .local v4, "mediaDirs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1235
    .local v0, "cachePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1237
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1243
    :cond_0
    :goto_0
    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, ".nomedia"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1247
    :goto_1
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/FileLoader;->setMediaDirs(Ljava/util/HashMap;)V

    .line 1250
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V

    .line 1251
    return-void

    .line 1238
    :catch_0
    move-exception v2

    .line 1239
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1244
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1245
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # Lorg/telegram/messenger/ImageLoader$HttpFileTask;
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    return-object v0
.end method

.method static synthetic access$1100()[B
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->headerThumb:[B

    return-object v0
.end method

.method static synthetic access$1200()[B
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->header:[B

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/ImageLoader;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lorg/telegram/messenger/ImageLoader;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J

    return-wide p1
.end method

.method static synthetic access$1400()[B
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->bytesThumb:[B

    return-object v0
.end method

.method static synthetic access$1402([B)[B
    .locals 0
    .param p0, "x0"    # [B

    .prologue
    .line 55
    sput-object p0, Lorg/telegram/messenger/ImageLoader;->bytesThumb:[B

    return-object p0
.end method

.method static synthetic access$1500()[B
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->bytes:[B

    return-object v0
.end method

.method static synthetic access$1502([B)[B
    .locals 0
    .param p0, "x0"    # [B

    .prologue
    .line 55
    sput-object p0, Lorg/telegram/messenger/ImageLoader;->bytes:[B

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/ImageLoader;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/telegram/messenger/ImageLoader;->lastProgressUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$2502(Lorg/telegram/messenger/ImageLoader;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/telegram/messenger/ImageLoader;->lastProgressUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/ImageLoader;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->fileDidFailedLoad(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/ImageLoader;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->removeFromWaitingForThumb(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCacheInternal(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/ImageLoader;ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ImageLoader;->generateThumb(ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/messenger/ImageLoader;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget v0, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    return v0
.end method

.method static synthetic access$3908(Lorg/telegram/messenger/ImageLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget v0, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    return v0
.end method

.method static synthetic access$3910(Lorg/telegram/messenger/ImageLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget v0, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->httpFileLoadError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->retryHttpsTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/ImageLoader;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runHttpTasks(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->thumbGenerateTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method private canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z
    .locals 11
    .param p1, "from"    # Ljava/io/File;
    .param p2, "to"    # Ljava/io/File;
    .param p3, "type"    # I

    .prologue
    const/4 v9, 0x1

    .line 1351
    const/4 v5, 0x0

    .line 1353
    .local v5, "file":Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .line 1354
    .local v7, "srcFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 1355
    .local v2, "dstFile":Ljava/io/File;
    if-nez p3, :cond_2

    .line 1356
    :try_start_0
    new-instance v8, Ljava/io/File;

    const-string/jumbo v10, "000000000_999999_temp.jpg"

    invoke-direct {v8, p1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    .end local v7    # "srcFile":Ljava/io/File;
    .local v8, "srcFile":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/File;

    const-string/jumbo v10, "000000000_999999.jpg"

    invoke-direct {v3, p2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "dstFile":Ljava/io/File;
    .local v3, "dstFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "dstFile":Ljava/io/File;
    .restart local v2    # "dstFile":Ljava/io/File;
    move-object v7, v8

    .line 1368
    .end local v8    # "srcFile":Ljava/io/File;
    .restart local v7    # "srcFile":Ljava/io/File;
    :cond_0
    :goto_0
    const/16 v10, 0x400

    :try_start_2
    new-array v0, v10, [B

    .line 1369
    .local v0, "buffer":[B
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 1370
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v10, "rws"

    invoke-direct {v6, v7, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1371
    .end local v5    # "file":Ljava/io/RandomAccessFile;
    .local v6, "file":Ljava/io/RandomAccessFile;
    :try_start_3
    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1372
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1373
    const/4 v5, 0x0

    .line 1374
    .end local v6    # "file":Ljava/io/RandomAccessFile;
    .restart local v5    # "file":Ljava/io/RandomAccessFile;
    :try_start_4
    invoke-virtual {v7, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 1375
    .local v1, "canRename":Z
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1376
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1377
    if-eqz v1, :cond_5

    .line 1384
    if-eqz v5, :cond_1

    .line 1385
    :try_start_5
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1391
    .end local v0    # "buffer":[B
    .end local v1    # "canRename":Z
    :cond_1
    :goto_1
    return v9

    .line 1358
    :cond_2
    const/4 v10, 0x3

    if-ne p3, v10, :cond_3

    .line 1359
    :try_start_6
    new-instance v8, Ljava/io/File;

    const-string/jumbo v10, "000000000_999999_temp.doc"

    invoke-direct {v8, p1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1360
    .end local v7    # "srcFile":Ljava/io/File;
    .restart local v8    # "srcFile":Ljava/io/File;
    :try_start_7
    new-instance v3, Ljava/io/File;

    const-string/jumbo v10, "000000000_999999.doc"

    invoke-direct {v3, p2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v2    # "dstFile":Ljava/io/File;
    .restart local v3    # "dstFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "dstFile":Ljava/io/File;
    .restart local v2    # "dstFile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "srcFile":Ljava/io/File;
    .restart local v7    # "srcFile":Ljava/io/File;
    goto :goto_0

    .line 1361
    :cond_3
    if-ne p3, v9, :cond_4

    .line 1362
    :try_start_8
    new-instance v8, Ljava/io/File;

    const-string/jumbo v10, "000000000_999999_temp.ogg"

    invoke-direct {v8, p1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1363
    .end local v7    # "srcFile":Ljava/io/File;
    .restart local v8    # "srcFile":Ljava/io/File;
    :try_start_9
    new-instance v3, Ljava/io/File;

    const-string/jumbo v10, "000000000_999999.ogg"

    invoke-direct {v3, p2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local v2    # "dstFile":Ljava/io/File;
    .restart local v3    # "dstFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "dstFile":Ljava/io/File;
    .restart local v2    # "dstFile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "srcFile":Ljava/io/File;
    .restart local v7    # "srcFile":Ljava/io/File;
    goto :goto_0

    .line 1364
    :cond_4
    const/4 v10, 0x2

    if-ne p3, v10, :cond_0

    .line 1365
    :try_start_a
    new-instance v8, Ljava/io/File;

    const-string/jumbo v10, "000000000_999999_temp.mp4"

    invoke-direct {v8, p1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1366
    .end local v7    # "srcFile":Ljava/io/File;
    .restart local v8    # "srcFile":Ljava/io/File;
    :try_start_b
    new-instance v3, Ljava/io/File;

    const-string/jumbo v10, "000000000_999999.mp4"

    invoke-direct {v3, p2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .end local v2    # "dstFile":Ljava/io/File;
    .restart local v3    # "dstFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "dstFile":Ljava/io/File;
    .restart local v2    # "dstFile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "srcFile":Ljava/io/File;
    .restart local v7    # "srcFile":Ljava/io/File;
    goto :goto_0

    .line 1387
    .restart local v0    # "buffer":[B
    .restart local v1    # "canRename":Z
    :catch_0
    move-exception v4

    .line 1388
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "tmessages"

    invoke-static {v10, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1384
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    if-eqz v5, :cond_6

    .line 1385
    :try_start_c
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 1391
    .end local v0    # "buffer":[B
    .end local v1    # "canRename":Z
    :cond_6
    :goto_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1387
    .restart local v0    # "buffer":[B
    .restart local v1    # "canRename":Z
    :catch_1
    move-exception v4

    .line 1388
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1380
    .end local v0    # "buffer":[B
    .end local v1    # "canRename":Z
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 1381
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_d
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1384
    if-eqz v5, :cond_6

    .line 1385
    :try_start_e
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_2

    .line 1387
    :catch_3
    move-exception v4

    .line 1388
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1383
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "srcFile":Ljava/io/File;
    :catchall_0
    move-exception v9

    .line 1384
    :goto_4
    if-eqz v5, :cond_7

    .line 1385
    :try_start_f
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 1389
    :cond_7
    :goto_5
    throw v9

    .line 1387
    :catch_4
    move-exception v4

    .line 1388
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "tmessages"

    invoke-static {v10, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 1383
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/RandomAccessFile;
    .restart local v0    # "buffer":[B
    .restart local v6    # "file":Ljava/io/RandomAccessFile;
    .restart local v7    # "srcFile":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/RandomAccessFile;
    .restart local v5    # "file":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 1380
    .end local v0    # "buffer":[B
    .end local v7    # "srcFile":Ljava/io/File;
    .restart local v8    # "srcFile":Ljava/io/File;
    :catch_5
    move-exception v4

    move-object v7, v8

    .end local v8    # "srcFile":Ljava/io/File;
    .restart local v7    # "srcFile":Ljava/io/File;
    goto :goto_3

    .end local v5    # "file":Ljava/io/RandomAccessFile;
    .restart local v0    # "buffer":[B
    .restart local v6    # "file":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/RandomAccessFile;
    .restart local v5    # "file":Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method private createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 20
    .param p1, "imageReceiver"    # Lorg/telegram/messenger/ImageReceiver;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "ext"    # Ljava/lang/String;
    .param p5, "imageLocation"    # Lorg/telegram/tgnet/TLObject;
    .param p6, "httpLocation"    # Ljava/lang/String;
    .param p7, "filter"    # Ljava/lang/String;
    .param p8, "size"    # I
    .param p9, "cacheOnly"    # Z
    .param p10, "thumb"    # I

    .prologue
    .line 1568
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 1725
    :cond_0
    :goto_0
    return-void

    .line 1571
    :cond_1
    if-eqz p10, :cond_3

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->getTag(Z)Ljava/lang/Integer;

    move-result-object v18

    .line 1572
    .local v18, "TAG":Ljava/lang/Integer;
    if-nez v18, :cond_2

    .line 1573
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    if-eqz p10, :cond_4

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setTag(Ljava/lang/Integer;Z)V

    .line 1574
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    .line 1575
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    .line 1576
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    .line 1580
    :cond_2
    move-object/from16 v7, v18

    .line 1581
    .local v7, "finalTag":Ljava/lang/Integer;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isNeedsQualityThumb()Z

    move-result v10

    .line 1582
    .local v10, "finalIsNeedsQualityThumb":Z
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getParentMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v11

    .line 1583
    .local v11, "parentMessageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isShouldGenerateQualityThumb()Z

    move-result v14

    .line 1584
    .local v14, "shouldGenerateQualityThumb":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    move-object/from16 v19, v0

    new-instance v2, Lorg/telegram/messenger/ImageLoader$7;

    move-object/from16 v3, p0

    move/from16 v4, p10

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move-object/from16 v8, p1

    move-object/from16 v9, p6

    move-object/from16 v12, p5

    move-object/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p8

    move-object/from16 v17, p4

    invoke-direct/range {v2 .. v17}, Lorg/telegram/messenger/ImageLoader$7;-><init>(Lorg/telegram/messenger/ImageLoader;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZILjava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1571
    .end local v7    # "finalTag":Ljava/lang/Integer;
    .end local v10    # "finalIsNeedsQualityThumb":Z
    .end local v11    # "parentMessageObject":Lorg/telegram/messenger/MessageObject;
    .end local v14    # "shouldGenerateQualityThumb":Z
    .end local v18    # "TAG":Ljava/lang/Integer;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 1573
    .restart local v18    # "TAG":Ljava/lang/Integer;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private fileDidFailedLoad(Ljava/lang/String;I)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "canceled"    # I

    .prologue
    .line 1895
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1907
    :goto_0
    return-void

    .line 1898
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$10;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$10;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "finalFile"    # Ljava/io/File;
    .param p3, "type"    # I

    .prologue
    .line 1852
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$9;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/messenger/ImageLoader$9;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;ILjava/io/File;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1892
    return-void
.end method

.method public static fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 7
    .param p0, "photoSize"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    .line 2123
    if-eqz p0, :cond_0

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_1

    .line 2137
    :cond_0
    :goto_0
    return-void

    .line 2126
    :cond_1
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    .line 2128
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v1, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2129
    .local v1, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v3, v4

    .line 2130
    .local v3, "len":I
    const/16 v4, 0x4e20

    if-ge v3, v4, :cond_0

    .line 2131
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 2132
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    array-length v6, v6

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2134
    .end local v1    # "f":Ljava/io/RandomAccessFile;
    .end local v3    # "len":I
    :catch_0
    move-exception v0

    .line 2135
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private generateThumb(ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 7
    .param p1, "mediaType"    # I
    .param p2, "originalPath"    # Ljava/io/File;
    .param p3, "thumbLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "filter"    # Ljava/lang/String;

    .prologue
    .line 1556
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 1565
    :cond_1
    :goto_0
    return-void

    .line 1559
    :cond_2
    invoke-static {p3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    .line 1560
    .local v6, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->thumbGenerateTasks:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    .line 1561
    .local v0, "task":Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;
    if-nez v0, :cond_1

    .line 1562
    new-instance v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    .end local v0    # "task":Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;-><init>(Lorg/telegram/messenger/ImageLoader;ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 1563
    .restart local v0    # "task":Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "defaultExt"    # Ljava/lang/String;

    .prologue
    .line 2236
    const/4 v0, 0x0

    .line 2237
    .local v0, "ext":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2238
    .local v1, "idx":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2239
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2241
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    .line 2242
    :cond_1
    move-object v0, p1

    .line 2244
    :cond_2
    return-object v0
.end method

.method public static getInstance()Lorg/telegram/messenger/ImageLoader;
    .locals 4

    .prologue
    .line 1067
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    .line 1068
    .local v0, "localInstance":Lorg/telegram/messenger/ImageLoader;
    if-nez v0, :cond_1

    .line 1069
    const-class v3, Lorg/telegram/messenger/ImageLoader;

    monitor-enter v3

    .line 1070
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    .line 1071
    if-nez v0, :cond_0

    .line 1072
    new-instance v1, Lorg/telegram/messenger/ImageLoader;

    invoke-direct {v1}, Lorg/telegram/messenger/ImageLoader;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/ImageLoader;
    .local v1, "localInstance":Lorg/telegram/messenger/ImageLoader;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 1074
    .end local v1    # "localInstance":Lorg/telegram/messenger/ImageLoader;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/ImageLoader;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 1076
    :cond_1
    return-object v0

    .line 1074
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/ImageLoader;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/ImageLoader;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/ImageLoader;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/ImageLoader;
    goto :goto_0
.end method

.method private httpFileLoadError(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 1836
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$8;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1849
    return-void
.end method

.method public static loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxWidth"    # F
    .param p3, "maxHeight"    # F
    .param p4, "useMaxScale"    # Z

    .prologue
    .line 1988
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1989
    .local v8, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1990
    const/4 v15, 0x0

    .line 1992
    .local v15, "inputStream":Ljava/io/InputStream;
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1993
    const/4 v14, 0x0

    .line 1994
    .local v14, "imageFilePath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1995
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 2005
    .end local v14    # "imageFilePath":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p0, :cond_8

    .line 2006
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2019
    :cond_1
    :goto_1
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v2

    move/from16 v20, v0

    .line 2020
    .local v20, "photoW":F
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v2

    move/from16 v19, v0

    .line 2021
    .local v19, "photoH":F
    if-eqz p4, :cond_9

    div-float v2, v20, p2

    div-float v3, v19, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v21

    .line 2022
    .local v21, "scaleFactor":F
    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v21, v2

    if-gez v2, :cond_2

    .line 2023
    const/high16 v21, 0x3f800000    # 1.0f

    .line 2025
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2026
    move/from16 v0, v21

    float-to-int v2, v0

    iput v2, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2027
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_a

    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 2029
    const/4 v13, 0x0

    .line 2030
    .local v13, "exifPath":Ljava/lang/String;
    if-eqz p0, :cond_b

    .line 2031
    move-object/from16 v13, p0

    .line 2036
    :cond_3
    :goto_4
    const/4 v6, 0x0

    .line 2038
    .local v6, "matrix":Landroid/graphics/Matrix;
    if-eqz v13, :cond_4

    .line 2041
    :try_start_0
    new-instance v12, Landroid/media/ExifInterface;

    invoke-direct {v12, v13}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 2042
    .local v12, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v18

    .line 2043
    .local v18, "orientation":I
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9

    .line 2044
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .local v16, "matrix":Landroid/graphics/Matrix;
    packed-switch v18, :pswitch_data_0

    :goto_5
    :pswitch_0
    move-object/from16 v6, v16

    .line 2060
    .end local v12    # "exif":Landroid/media/ExifInterface;
    .end local v16    # "matrix":Landroid/graphics/Matrix;
    .end local v18    # "orientation":I
    .restart local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_4
    :goto_6
    const/4 v1, 0x0

    .line 2061
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_d

    .line 2063
    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2064
    if-eqz v1, :cond_6

    .line 2065
    iget-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v2, :cond_5

    .line 2066
    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I

    .line 2068
    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 2069
    .local v17, "newBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v17

    if-eq v0, v1, :cond_6

    .line 2070
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 2071
    move-object/from16 v1, v17

    .line 2119
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v13    # "exifPath":Ljava/lang/String;
    .end local v17    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "photoH":F
    .end local v20    # "photoW":F
    .end local v21    # "scaleFactor":F
    :cond_6
    :goto_7
    return-object v1

    .line 1998
    .restart local v14    # "imageFilePath":Ljava/lang/String;
    :cond_7
    :try_start_2
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object p0

    goto/16 :goto_0

    .line 1999
    :catch_0
    move-exception v9

    .line 2000
    .local v9, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2007
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v14    # "imageFilePath":Ljava/lang/String;
    :cond_8
    if-eqz p1, :cond_1

    .line 2008
    const/4 v11, 0x0

    .line 2010
    .local v11, "error":Z
    :try_start_3
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v15

    .line 2011
    const/4 v2, 0x0

    invoke-static {v15, v2, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2012
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 2013
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v15

    goto/16 :goto_1

    .line 2014
    :catch_1
    move-exception v9

    .line 2015
    .restart local v9    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2016
    const/4 v1, 0x0

    goto :goto_7

    .line 2021
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v11    # "error":Z
    .restart local v19    # "photoH":F
    .restart local v20    # "photoW":F
    :cond_9
    div-float v2, v20, p2

    div-float v3, v19, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v21

    goto/16 :goto_2

    .line 2027
    .restart local v21    # "scaleFactor":F
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 2032
    .restart local v13    # "exifPath":Ljava/lang/String;
    :cond_b
    if-eqz p1, :cond_3

    .line 2033
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 2046
    .restart local v12    # "exif":Landroid/media/ExifInterface;
    .restart local v16    # "matrix":Landroid/graphics/Matrix;
    .restart local v18    # "orientation":I
    :pswitch_1
    const/high16 v2, 0x42b40000    # 90.0f

    :try_start_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_5

    .line 2055
    :catch_2
    move-exception v9

    move-object/from16 v6, v16

    .line 2056
    .end local v12    # "exif":Landroid/media/ExifInterface;
    .end local v16    # "matrix":Landroid/graphics/Matrix;
    .end local v18    # "orientation":I
    .restart local v6    # "matrix":Landroid/graphics/Matrix;
    .restart local v9    # "e":Ljava/lang/Throwable;
    :goto_8
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 2049
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v12    # "exif":Landroid/media/ExifInterface;
    .restart local v16    # "matrix":Landroid/graphics/Matrix;
    .restart local v18    # "orientation":I
    :pswitch_2
    const/high16 v2, 0x43340000    # 180.0f

    :try_start_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto/16 :goto_5

    .line 2052
    :pswitch_3
    const/high16 v2, 0x43870000    # 270.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_5

    .line 2074
    .end local v12    # "exif":Landroid/media/ExifInterface;
    .end local v16    # "matrix":Landroid/graphics/Matrix;
    .end local v18    # "orientation":I
    .restart local v1    # "b":Landroid/graphics/Bitmap;
    .restart local v6    # "matrix":Landroid/graphics/Matrix;
    :catch_3
    move-exception v9

    .line 2075
    .restart local v9    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2076
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    .line 2078
    if-nez v1, :cond_c

    .line 2079
    :try_start_6
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2080
    if-eqz v1, :cond_c

    iget-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v2, :cond_c

    .line 2081
    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I

    .line 2084
    :cond_c
    if-eqz v1, :cond_6

    .line 2085
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 2086
    .restart local v17    # "newBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v17

    if-eq v0, v1, :cond_6

    .line 2087
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 2088
    move-object/from16 v1, v17

    goto/16 :goto_7

    .line 2091
    .end local v17    # "newBitmap":Landroid/graphics/Bitmap;
    :catch_4
    move-exception v10

    .line 2092
    .local v10, "e2":Ljava/lang/Throwable;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 2095
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v10    # "e2":Ljava/lang/Throwable;
    :cond_d
    if-eqz p1, :cond_6

    .line 2097
    const/4 v2, 0x0

    :try_start_7
    invoke-static {v15, v2, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2098
    if-eqz v1, :cond_f

    .line 2099
    iget-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v2, :cond_e

    .line 2100
    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I

    .line 2102
    :cond_e
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 2103
    .restart local v17    # "newBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v17

    if-eq v0, v1, :cond_f

    .line 2104
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2105
    move-object/from16 v1, v17

    .line 2112
    .end local v17    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_f
    :try_start_8
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_7

    .line 2113
    :catch_5
    move-exception v9

    .line 2114
    .restart local v9    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 2108
    .end local v9    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v9

    .line 2109
    .restart local v9    # "e":Ljava/lang/Throwable;
    :try_start_9
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2112
    :try_start_a
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_7

    .line 2113
    :catch_7
    move-exception v9

    .line 2114
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 2111
    .end local v9    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    .line 2112
    :try_start_b
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8

    .line 2115
    :goto_9
    throw v2

    .line 2113
    :catch_8
    move-exception v9

    .line 2114
    .restart local v9    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 2055
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v9

    goto/16 :goto_8

    .line 2044
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private performReplace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "oldKey"    # Ljava/lang/String;
    .param p2, "newKey"    # Ljava/lang/String;

    .prologue
    .line 1402
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 1403
    .local v0, "b":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 1404
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    .line 1405
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    .line 1406
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v2, p2, v0}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 1407
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    .line 1409
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1410
    .local v1, "val":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 1411
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    :cond_1
    return-void
.end method

.method private removeFromWaitingForThumb(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "TAG"    # Ljava/lang/Integer;

    .prologue
    .line 1453
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1454
    .local v1, "location":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1455
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    .line 1456
    .local v0, "info":Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    if-eqz v0, :cond_0

    .line 1457
    # operator-- for: Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->count:I
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$2810(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)I

    .line 1458
    # getter for: Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->count:I
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$2800(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1459
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    .end local v0    # "info":Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    :cond_1
    return-void
.end method

.method private replaceImageInCacheInternal(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;)V
    .locals 12
    .param p1, "oldKey"    # Ljava/lang/String;
    .param p2, "newKey"    # Ljava/lang/String;
    .param p3, "newLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1523
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v5, p1}, Lorg/telegram/messenger/LruCache;->getFilterKeys(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1524
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1525
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1526
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1527
    .local v2, "filter":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1528
    .local v4, "oldK":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1529
    .local v3, "newK":Ljava/lang/String;
    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/ImageLoader;->performReplace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v4, v7, v8

    aput-object v3, v7, v9

    aput-object p3, v7, v10

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1533
    .end local v0    # "a":I
    .end local v2    # "filter":Ljava/lang/String;
    .end local v3    # "newK":Ljava/lang/String;
    .end local v4    # "oldK":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->performReplace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v8

    aput-object p2, v7, v9

    aput-object p3, v7, v10

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1536
    :cond_1
    return-void
.end method

.method private runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .locals 1
    .param p1, "oldTask"    # Lorg/telegram/messenger/ImageLoader$HttpFileTask;
    .param p2, "reason"    # I

    .prologue
    .line 1949
    new-instance v0, Lorg/telegram/messenger/ImageLoader$11;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/ImageLoader$11;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1985
    return-void
.end method

.method private runHttpTasks(Z)V
    .locals 5
    .param p1, "complete"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1910
    if-eqz p1, :cond_0

    .line 1911
    iget v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    .line 1913
    :cond_0
    :goto_0
    iget v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1914
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .line 1915
    .local v0, "task":Lorg/telegram/messenger/ImageLoader$HttpImageTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1916
    iget v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    goto :goto_0

    .line 1918
    .end local v0    # "task":Lorg/telegram/messenger/ImageLoader$HttpImageTask;
    :cond_1
    return-void
.end method

.method public static saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 12
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2248
    const/4 v5, 0x0

    .line 2249
    .local v5, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v8, :cond_5

    .line 2250
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2251
    .local v6, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v8, :cond_0

    .line 2252
    move-object v5, v6

    .line 2270
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_1
    :goto_0
    if-eqz v5, :cond_4

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v8, :cond_4

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    array-length v8, v8

    if-eqz v8, :cond_4

    .line 2271
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v8, :cond_2

    .line 2272
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;-><init>()V

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2273
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-wide/32 v10, -0x80000000

    iput-wide v10, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 2274
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/high16 v9, -0x80000000

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 2275
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    sget v9, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 2276
    sget v8, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v8, v8, -0x1

    sput v8, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 2278
    :cond_2
    const/4 v8, 0x1

    invoke-static {v5, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    .line 2279
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 2281
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string/jumbo v8, "rws"

    invoke-direct {v7, v2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2282
    .local v7, "writeFile":Ljava/io/RandomAccessFile;
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    invoke-virtual {v7, v8}, Ljava/io/RandomAccessFile;->write([B)V

    .line 2283
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2288
    .end local v7    # "writeFile":Ljava/io/RandomAccessFile;
    :cond_3
    :goto_1
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 2289
    .local v4, "newPhotoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    iget v8, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v8, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->w:I

    .line 2290
    iget v8, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v8, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->h:I

    .line 2291
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v8, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2292
    iget v8, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v8, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->size:I

    .line 2293
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object v8, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->type:Ljava/lang/String;

    .line 2295
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v8, :cond_9

    .line 2296
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 2297
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v8, :cond_8

    .line 2298
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v8, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2313
    .end local v0    # "a":I
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "newPhotoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    :cond_4
    :goto_3
    return-void

    .line 2256
    :cond_5
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v8, :cond_6

    .line 2257
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v8, :cond_1

    .line 2258
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto/16 :goto_0

    .line 2260
    :cond_6
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v8, :cond_1

    .line 2261
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v8, :cond_1

    .line 2262
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2263
    .restart local v6    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v8, :cond_7

    .line 2264
    move-object v5, v6

    .line 2265
    goto/16 :goto_0

    .line 2284
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 2285
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "tmessages"

    invoke-static {v8, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2296
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    .restart local v4    # "newPhotoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2302
    .end local v0    # "a":I
    :cond_9
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v8, :cond_a

    .line 2303
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v4, v8, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_3

    .line 2304
    :cond_a
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v8, :cond_4

    .line 2305
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_4
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 2306
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v8, :cond_b

    .line 2307
    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v8, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2305
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static saveMessagesThumbs(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2316
    .local p0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2323
    :cond_0
    return-void

    .line 2319
    :cond_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2320
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    .line 2321
    .local v1, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 2319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # F
    .param p2, "maxHeight"    # F
    .param p3, "quality"    # I
    .param p4, "cache"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2190
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    return-object v0
.end method

.method public static scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # F
    .param p2, "maxHeight"    # F
    .param p3, "quality"    # I
    .param p4, "cache"    # Z
    .param p5, "minWidth"    # I
    .param p6, "minHeight"    # I

    .prologue
    .line 2194
    if-nez p0, :cond_0

    .line 2195
    const/4 v1, 0x0

    .line 2230
    :goto_0
    return-object v1

    .line 2197
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v4, v1

    .line 2198
    .local v4, "photoW":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v5, v1

    .line 2199
    .local v5, "photoH":F
    const/4 v1, 0x0

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, v5, v1

    if-nez v1, :cond_2

    .line 2200
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2202
    :cond_2
    const/4 v9, 0x0

    .line 2203
    .local v9, "scaleAnyway":Z
    div-float v1, v4, p1

    div-float v7, v5, p2

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 2204
    .local v6, "scaleFactor":F
    if-eqz p5, :cond_4

    if-eqz p6, :cond_4

    move/from16 v0, p5

    int-to-float v1, v0

    cmpg-float v1, v4, v1

    if-ltz v1, :cond_3

    move/from16 v0, p6

    int-to-float v1, v0

    cmpg-float v1, v5, v1

    if-gez v1, :cond_4

    .line 2205
    :cond_3
    move/from16 v0, p5

    int-to-float v1, v0

    cmpg-float v1, v4, v1

    if-gez v1, :cond_6

    move/from16 v0, p6

    int-to-float v1, v0

    cmpl-float v1, v5, v1

    if-lez v1, :cond_6

    .line 2206
    move/from16 v0, p5

    int-to-float v1, v0

    div-float v6, v4, v1

    .line 2212
    :goto_1
    const/4 v9, 0x1

    .line 2214
    :cond_4
    div-float v1, v4, v6

    float-to-int v2, v1

    .line 2215
    .local v2, "w":I
    div-float v1, v5, v6

    float-to-int v3, v1

    .line 2216
    .local v3, "h":I
    if-eqz v3, :cond_5

    if-nez v2, :cond_8

    .line 2217
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 2207
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_6
    move/from16 v0, p5

    int-to-float v1, v0

    cmpl-float v1, v4, v1

    if-lez v1, :cond_7

    move/from16 v0, p6

    int-to-float v1, v0

    cmpg-float v1, v5, v1

    if-gez v1, :cond_7

    .line 2208
    move/from16 v0, p6

    int-to-float v1, v0

    div-float v6, v5, v1

    goto :goto_1

    .line 2210
    :cond_7
    move/from16 v0, p5

    int-to-float v1, v0

    div-float v1, v4, v1

    move/from16 v0, p6

    int-to-float v7, v0

    div-float v7, v5, v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_1

    .restart local v2    # "w":I
    .restart local v3    # "h":I
    :cond_8
    move-object v1, p0

    move v7, p3

    move/from16 v8, p4

    .line 2221
    :try_start_0
    invoke-static/range {v1 .. v9}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImageInternal(Landroid/graphics/Bitmap;IIFFFIZZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2222
    :catch_0
    move-exception v10

    .line 2223
    .local v10, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2224
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    .line 2225
    invoke-static {}, Ljava/lang/System;->gc()V

    move-object v1, p0

    move v7, p3

    move/from16 v8, p4

    .line 2227
    :try_start_1
    invoke-static/range {v1 .. v9}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImageInternal(Landroid/graphics/Bitmap;IIFFFIZZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto/16 :goto_0

    .line 2228
    :catch_1
    move-exception v11

    .line 2229
    .local v11, "e2":Ljava/lang/Throwable;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2230
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private static scaleAndSaveImageInternal(Landroid/graphics/Bitmap;IIFFFIZZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "photoW"    # F
    .param p4, "photoH"    # F
    .param p5, "scaleFactor"    # F
    .param p6, "quality"    # I
    .param p7, "cache"    # Z
    .param p8, "scaleAnyway"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2141
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, p5, v9

    if-gtz v9, :cond_0

    if-eqz p8, :cond_2

    .line 2142
    :cond_0
    const/4 v9, 0x1

    invoke-static {p0, p1, p2, v9}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2147
    .local v5, "scaledBitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;-><init>()V

    .line 2148
    .local v4, "location":Lorg/telegram/tgnet/TLRPC$TL_fileLocation;
    const-wide/32 v10, -0x80000000

    iput-wide v10, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;->volume_id:J

    .line 2149
    const/high16 v9, -0x80000000

    iput v9, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;->dc_id:I

    .line 2150
    sget v9, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    iput v9, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;->local_id:I

    .line 2151
    sget v9, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v9, v9, -0x1

    sput v9, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 2152
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 2153
    .local v6, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2154
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iput v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 2155
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iput v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 2156
    iget v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v10, 0x64

    if-gt v9, v10, :cond_3

    iget v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v10, 0x64

    if-gt v9, v10, :cond_3

    .line 2157
    const-string/jumbo v9, "s"

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 2168
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;->volume_id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;->local_id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2169
    .local v3, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v9

    invoke-direct {v2, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2170
    .local v2, "cacheFile":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2171
    .local v7, "stream":Ljava/io/FileOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, p6

    invoke-virtual {v5, v9, v0, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2172
    if-eqz p7, :cond_7

    .line 2173
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2174
    .local v8, "stream2":Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, p6

    invoke-virtual {v5, v9, v0, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2175
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 2176
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    array-length v9, v9

    iput v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 2177
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2181
    .end local v8    # "stream2":Ljava/io/ByteArrayOutputStream;
    :goto_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 2182
    if-eq v5, p0, :cond_1

    .line 2183
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 2186
    :cond_1
    return-object v6

    .line 2144
    .end local v2    # "cacheFile":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "location":Lorg/telegram/tgnet/TLRPC$TL_fileLocation;
    .end local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    :cond_2
    move-object v5, p0

    .restart local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 2158
    .restart local v4    # "location":Lorg/telegram/tgnet/TLRPC$TL_fileLocation;
    .restart local v6    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_3
    iget v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v10, 0x140

    if-gt v9, v10, :cond_4

    iget v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v10, 0x140

    if-gt v9, v10, :cond_4

    .line 2159
    const-string/jumbo v9, "m"

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_1

    .line 2160
    :cond_4
    iget v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v10, 0x320

    if-gt v9, v10, :cond_5

    iget v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v10, 0x320

    if-gt v9, v10, :cond_5

    .line 2161
    const-string/jumbo v9, "x"

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_1

    .line 2162
    :cond_5
    iget v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v10, 0x500

    if-gt v9, v10, :cond_6

    iget v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v10, 0x500

    if-gt v9, v10, :cond_6

    .line 2163
    const-string/jumbo v9, "y"

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_1

    .line 2165
    :cond_6
    const-string/jumbo v9, "w"

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_1

    .line 2179
    .restart local v2    # "cacheFile":Ljava/io/File;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    :cond_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    long-to-int v9, v10

    iput v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto :goto_2
.end method


# virtual methods
.method public cancelLoadHttpFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1935
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    .line 1936
    .local v1, "task":Lorg/telegram/messenger/ImageLoader$HttpFileTask;
    if-eqz v1, :cond_0

    .line 1937
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->cancel(Z)Z

    .line 1938
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1941
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->retryHttpsTasks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1942
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_1

    .line 1943
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1945
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    .line 1946
    return-void
.end method

.method public cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V
    .locals 2
    .param p1, "imageReceiver"    # Lorg/telegram/messenger/ImageReceiver;
    .param p2, "type"    # I

    .prologue
    .line 1467
    if-nez p1, :cond_0

    .line 1494
    :goto_0
    return-void

    .line 1470
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$5;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/ImageLoader$5;-><init>(Lorg/telegram/messenger/ImageLoader;ILorg/telegram/messenger/ImageReceiver;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public checkMediaPaths()V
    .locals 2

    .prologue
    .line 1254
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageLoader$4;-><init>(Lorg/telegram/messenger/ImageLoader;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1266
    return-void
.end method

.method public clearMemory()V
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0}, Lorg/telegram/messenger/LruCache;->evictAll()V

    .line 1450
    return-void
.end method

.method public createMediaPaths()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1269
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1270
    .local v5, "mediaDirs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 1271
    .local v1, "cachePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1273
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    :cond_0
    :goto_0
    :try_start_1
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, ".nomedia"

    invoke-direct {v7, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1284
    :goto_1
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    const-string/jumbo v7, "tmessages"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cache path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    :try_start_2
    const-string/jumbo v7, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1289
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "Telegram"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    .line 1290
    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 1292
    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v7

    if-eqz v7, :cond_4

    .line 1294
    :try_start_3
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string/jumbo v8, "Telegram Images"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1295
    .local v4, "imagePath":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 1296
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-direct {p0, v1, v4, v7}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1297
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    const-string/jumbo v7, "tmessages"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "image path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1305
    .end local v4    # "imagePath":Ljava/io/File;
    :cond_1
    :goto_2
    :try_start_4
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string/jumbo v8, "Telegram Video"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1306
    .local v6, "videoPath":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 1307
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x2

    invoke-direct {p0, v1, v6, v7}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1308
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    const-string/jumbo v7, "tmessages"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "video path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1316
    .end local v6    # "videoPath":Ljava/io/File;
    :cond_2
    :goto_3
    :try_start_5
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string/jumbo v8, "Telegram Audio"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1317
    .local v0, "audioPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1318
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    invoke-direct {p0, v1, v0, v7}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1319
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, ".nomedia"

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 1320
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    const-string/jumbo v7, "tmessages"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "audio path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1328
    .end local v0    # "audioPath":Ljava/io/File;
    :cond_3
    :goto_4
    :try_start_6
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string/jumbo v8, "Telegram Documents"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1329
    .local v2, "documentPath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 1330
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x3

    invoke-direct {p0, v1, v2, v7}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1331
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, ".nomedia"

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 1332
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    const-string/jumbo v7, "tmessages"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "documents path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1342
    .end local v2    # "documentPath":Ljava/io/File;
    :cond_4
    :goto_5
    :try_start_7
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaController;->checkSaveToGalleryFiles()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1347
    :goto_6
    return-object v5

    .line 1274
    :catch_0
    move-exception v3

    .line 1275
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1280
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1281
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1300
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 1301
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_2

    .line 1343
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 1344
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1311
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 1312
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1323
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v3

    .line 1324
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1335
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v3

    .line 1336
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 1340
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    const-string/jumbo v7, "tmessages"

    const-string/jumbo v8, "this Android can\'t rename files"

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5
.end method

.method public decrementUseCount(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1426
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1427
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1436
    :goto_0
    return v1

    .line 1430
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1431
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1434
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFileProgress(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 1395
    if-nez p1, :cond_0

    .line 1396
    const/4 v0, 0x0

    .line 1398
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_0
.end method

.method public getImageFromMemory(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1497
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .param p1, "fileLocation"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "httpUrl"    # Ljava/lang/String;
    .param p3, "filter"    # Ljava/lang/String;

    .prologue
    .line 1501
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1502
    const/4 v2, 0x0

    .line 1519
    :goto_0
    return-object v2

    .line 1504
    :cond_0
    const/4 v0, 0x0

    .line 1505
    .local v0, "key":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 1506
    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1516
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 1517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1519
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    goto :goto_0

    .line 1508
    :cond_3
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_4

    move-object v1, p1

    .line 1509
    check-cast v1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1510
    .local v1, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1511
    goto :goto_1

    .end local v1    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_4
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 1512
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1513
    .local v1, "location":Lorg/telegram/tgnet/TLRPC$Document;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public incrementUseCount(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1417
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1418
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1419
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    :goto_0
    return-void

    .line 1421
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public isInCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1445
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadHttpFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "defaultExt"    # Ljava/lang/String;

    .prologue
    .line 1921
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1932
    :cond_0
    :goto_0
    return-void

    .line 1924
    :cond_1
    invoke-static {p1, p2}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1925
    .local v0, "ext":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_temp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1926
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1928
    new-instance v2, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-direct {v2, p0, p1, v1, v0}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 1929
    .local v2, "task":Lorg/telegram/messenger/ImageLoader$HttpFileTask;
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1930
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    goto :goto_0
.end method

.method public loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 39
    .param p1, "imageReceiver"    # Lorg/telegram/messenger/ImageReceiver;

    .prologue
    .line 1728
    if-nez p1, :cond_1

    .line 1833
    :cond_0
    :goto_0
    return-void

    .line 1732
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getKey()Ljava/lang/String;

    move-result-object v35

    .line 1733
    .local v35, "key":Ljava/lang/String;
    if-eqz v35, :cond_2

    .line 1734
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v31

    .line 1735
    .local v31, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v31, :cond_2

    .line 1736
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 1737
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isForcePreview()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1738
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;ZZ)Z

    goto :goto_0

    .line 1743
    .end local v31    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    const/16 v38, 0x0

    .line 1744
    .local v38, "thumbSet":Z
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getThumbKey()Ljava/lang/String;

    move-result-object v6

    .line 1745
    .local v6, "thumbKey":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1746
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v31

    .line 1747
    .restart local v31    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v31, :cond_3

    .line 1748
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v6, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;ZZ)Z

    .line 1749
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 1750
    const/16 v38, 0x1

    .line 1754
    .end local v31    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getThumbLocation()Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v9

    .line 1755
    .local v9, "thumbLocation":Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getImageLocation()Lorg/telegram/tgnet/TLObject;

    move-result-object v25

    .line 1756
    .local v25, "imageLocation":Lorg/telegram/tgnet/TLObject;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getHttpImageLocation()Ljava/lang/String;

    move-result-object v18

    .line 1758
    .local v18, "httpLocation":Ljava/lang/String;
    const/16 v37, 0x0

    .line 1760
    .local v37, "saveImageToCache":Z
    const/4 v15, 0x0

    .line 1761
    .local v15, "url":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1762
    .local v7, "thumbUrl":Ljava/lang/String;
    const/16 v35, 0x0

    .line 1763
    const/4 v6, 0x0

    .line 1764
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getExt()Ljava/lang/String;

    move-result-object v8

    .line 1765
    .local v8, "ext":Ljava/lang/String;
    if-nez v8, :cond_4

    .line 1766
    const-string/jumbo v8, "jpg"

    .line 1768
    :cond_4
    if-eqz v18, :cond_9

    .line 1769
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1770
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "jpg"

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1812
    :cond_5
    :goto_1
    if-eqz v9, :cond_6

    .line 1813
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1817
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getFilter()Ljava/lang/String;

    move-result-object v19

    .line 1818
    .local v19, "filter":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getThumbFilter()Ljava/lang/String;

    move-result-object v11

    .line 1819
    .local v11, "thumbFilter":Ljava/lang/String;
    if-eqz v35, :cond_7

    if-eqz v19, :cond_7

    .line 1820
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1822
    :cond_7
    if-eqz v6, :cond_8

    if-eqz v11, :cond_8

    .line 1823
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1826
    :cond_8
    if-eqz v18, :cond_14

    .line 1827
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v38, :cond_13

    const/4 v14, 0x2

    :goto_2
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v14}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 1828
    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, v35

    move-object/from16 v16, v8

    invoke-direct/range {v12 .. v22}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;IZI)V

    goto/16 :goto_0

    .line 1771
    .end local v11    # "thumbFilter":Ljava/lang/String;
    .end local v19    # "filter":Ljava/lang/String;
    :cond_9
    if-eqz v25, :cond_5

    .line 1772
    move-object/from16 v0, v25

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_c

    move-object/from16 v36, v25

    .line 1773
    check-cast v36, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1774
    .local v36, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1775
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1776
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getExt()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v4, :cond_a

    move-object/from16 v0, v36

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v12, -0x80000000

    cmp-long v4, v4, v12

    if-nez v4, :cond_b

    move-object/from16 v0, v36

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-gez v4, :cond_b

    .line 1777
    :cond_a
    const/16 v37, 0x1

    .line 1805
    .end local v36    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_b
    :goto_3
    move-object/from16 v0, v25

    if-ne v0, v9, :cond_5

    .line 1806
    const/16 v25, 0x0

    .line 1807
    const/16 v35, 0x0

    .line 1808
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1779
    :cond_c
    move-object/from16 v0, v25

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_b

    move-object/from16 v33, v25

    .line 1780
    check-cast v33, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1781
    .local v33, "document":Lorg/telegram/tgnet/TLRPC$Document;
    move-object/from16 v0, v33

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-eqz v4, :cond_0

    move-object/from16 v0, v33

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    if-eqz v4, :cond_0

    .line 1784
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1785
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v32

    .line 1787
    .local v32, "docExt":Ljava/lang/String;
    if-eqz v32, :cond_d

    const/16 v4, 0x2e

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v34

    .local v34, "idx":I
    const/4 v4, -0x1

    move/from16 v0, v34

    if-ne v0, v4, :cond_10

    .line 1788
    .end local v34    # "idx":I
    :cond_d
    const-string/jumbo v32, ""

    .line 1792
    :goto_4
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_e

    .line 1793
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v4, :cond_11

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v5, "video/mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1794
    const-string/jumbo v32, ".mp4"

    .line 1799
    :cond_e
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1800
    if-eqz v6, :cond_f

    .line 1801
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1803
    :cond_f
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_12

    const/16 v37, 0x1

    :goto_6
    goto/16 :goto_3

    .line 1790
    .restart local v34    # "idx":I
    :cond_10
    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    goto :goto_4

    .line 1796
    .end local v34    # "idx":I
    :cond_11
    const-string/jumbo v32, ""

    goto :goto_5

    .line 1803
    :cond_12
    const/16 v37, 0x0

    goto :goto_6

    .line 1827
    .end local v32    # "docExt":Ljava/lang/String;
    .end local v33    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .restart local v11    # "thumbFilter":Ljava/lang/String;
    .restart local v19    # "filter":Ljava/lang/String;
    :cond_13
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 1830
    :cond_14
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v38, :cond_16

    const/4 v14, 0x2

    :goto_7
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v14}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 1831
    const/16 v26, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getSize()I

    move-result v28

    if-nez v37, :cond_15

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getCacheOnly()Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_15
    const/16 v29, 0x1

    :goto_8
    const/16 v30, 0x0

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v35

    move-object/from16 v23, v15

    move-object/from16 v24, v8

    move-object/from16 v27, v19

    invoke-direct/range {v20 .. v30}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;IZI)V

    goto/16 :goto_0

    .line 1830
    :cond_16
    const/4 v14, 0x1

    goto :goto_7

    .line 1831
    :cond_17
    const/16 v29, 0x0

    goto :goto_8
.end method

.method public putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1552
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p2, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 1553
    return-void
.end method

.method public removeImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1440
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    .line 1442
    return-void
.end method

.method public replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Z)V
    .locals 1
    .param p1, "oldKey"    # Ljava/lang/String;
    .param p2, "newKey"    # Ljava/lang/String;
    .param p3, "newLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "post"    # Z

    .prologue
    .line 1539
    if-eqz p4, :cond_0

    .line 1540
    new-instance v0, Lorg/telegram/messenger/ImageLoader$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader$6;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1549
    :goto_0
    return-void

    .line 1547
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCacheInternal(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    goto :goto_0
.end method
