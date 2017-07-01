.class public Lorg/telegram/messenger/ApplicationLoader;
.super Landroid/app/Application;
.source "ApplicationLoader.java"


# static fields
.field public static volatile applicationContext:Landroid/content/Context;

.field public static volatile applicationHandler:Landroid/os/Handler;

.field private static volatile applicationInited:Z

.field private static cachedWallpaper:Landroid/graphics/drawable/Drawable;

.field private static isCustomTheme:Z

.field public static volatile isScreenOn:Z

.field public static volatile mainInterfacePaused:Z

.field private static selectedColor:I

.field private static serviceMessageColor:I

.field private static serviceSelectedMessageColor:I

.field private static final sync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->sync:Ljava/lang/Object;

    .line 67
    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->applicationInited:Z

    .line 69
    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 55
    sput p0, Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I

    return p0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 55
    sput p0, Lorg/telegram/messenger/ApplicationLoader;->serviceSelectedMessageColor:I

    return p0
.end method

.method static synthetic access$300()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 55
    sput-object p0, Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 55
    sput-boolean p0, Lorg/telegram/messenger/ApplicationLoader;->isCustomTheme:Z

    return p0
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 55
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->calcBackgroundColor()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/messenger/ApplicationLoader;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ApplicationLoader;

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/telegram/messenger/ApplicationLoader;->checkPlayServices()Z

    move-result v0

    return v0
.end method

.method private static calcBackgroundColor()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 88
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object v1

    .line 89
    .local v1, "result":[I
    aget v2, v1, v4

    sput v2, Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I

    .line 90
    const/4 v2, 0x1

    aget v2, v1, v2

    sput v2, Lorg/telegram/messenger/ApplicationLoader;->serviceSelectedMessageColor:I

    .line 91
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "serviceMessageColor"

    sget v4, Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "serviceSelectedMessageColor"

    sget v4, Lorg/telegram/messenger/ApplicationLoader;->serviceSelectedMessageColor:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    return-void
.end method

.method private checkPlayServices()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 415
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 416
    .local v1, "resultCode":I
    if-nez v1, :cond_0

    .line 420
    .end local v1    # "resultCode":I
    :goto_0
    return v2

    .line 416
    .restart local v1    # "resultCode":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 417
    .end local v1    # "resultCode":I
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static convertConfig()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 157
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v12, "dataconfig"

    invoke-virtual {v9, v12, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 158
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "currentDatacenterId"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 159
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    const v9, 0x8000

    invoke-direct {v0, v9}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 160
    .local v0, "buffer":Lorg/telegram/tgnet/SerializedData;
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 161
    const-string/jumbo v9, "datacenterSetId"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_2

    move v9, v10

    :goto_0
    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeBool(Z)V

    .line 162
    invoke-virtual {v0, v10}, Lorg/telegram/tgnet/SerializedData;->writeBool(Z)V

    .line 163
    const-string/jumbo v9, "currentDatacenterId"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 164
    const-string/jumbo v9, "timeDifference"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 165
    const-string/jumbo v9, "lastDcUpdateTime"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 166
    const-string/jumbo v9, "pushSessionId"

    const-wide/16 v12, 0x0

    invoke-interface {v8, v9, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Lorg/telegram/tgnet/SerializedData;->writeInt64(J)V

    .line 167
    invoke-virtual {v0, v11}, Lorg/telegram/tgnet/SerializedData;->writeBool(Z)V

    .line 168
    invoke-virtual {v0, v11}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 170
    :try_start_0
    const-string/jumbo v9, "datacenters"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "datacentersString":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 172
    const/4 v9, 0x0

    invoke-static {v4, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 173
    .local v3, "datacentersBytes":[B
    if-eqz v3, :cond_0

    .line 174
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v2, v3}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 175
    .local v2, "data":Lorg/telegram/tgnet/SerializedData;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 176
    const/4 v9, 0x4

    array-length v10, v3

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v0, v3, v9, v10}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    .line 177
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v2    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v3    # "datacentersBytes":[B
    .end local v4    # "datacentersString":Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "tgnet.dat"

    invoke-direct {v6, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v6, "file":Ljava/io/File;
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string/jumbo v9, "rws"

    invoke-direct {v7, v6, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    .local v7, "fileOutputStream":Ljava/io/RandomAccessFile;
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v1

    .line 188
    .local v1, "bytes":[B
    array-length v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 189
    invoke-virtual {v7, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 190
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    .end local v1    # "bytes":[B
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileOutputStream":Ljava/io/RandomAccessFile;
    :goto_2
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 195
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    .end local v0    # "buffer":Lorg/telegram/tgnet/SerializedData;
    :cond_1
    return-void

    .restart local v0    # "buffer":Lorg/telegram/tgnet/SerializedData;
    :cond_2
    move v9, v11

    .line 161
    goto/16 :goto_0

    .line 180
    :catch_0
    move-exception v5

    .line 181
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 191
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 192
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static getCachedWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 151
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;

    monitor-exit v1

    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getFilesDirFixed()Ljava/io/File;
    .locals 6

    .prologue
    .line 200
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/16 v4, 0xa

    if-ge v0, v4, :cond_1

    .line 201
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 202
    .local v3, "path":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 214
    .end local v3    # "path":Ljava/io/File;
    :goto_1
    return-object v3

    .line 200
    .restart local v3    # "path":Ljava/io/File;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v3    # "path":Ljava/io/File;
    :cond_1
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 208
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string/jumbo v5, "files"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .restart local v3    # "path":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 211
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "path":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/data/data/org.telegram.messenger/files"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getSelectedColor()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lorg/telegram/messenger/ApplicationLoader;->selectedColor:I

    return v0
.end method

.method public static getServiceMessageColor()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I

    return v0
.end method

.method public static getServiceSelectedMessageColor()I
    .locals 1

    .prologue
    .line 100
    sget v0, Lorg/telegram/messenger/ApplicationLoader;->serviceSelectedMessageColor:I

    return v0
.end method

.method private initPlayServices()V
    .locals 4

    .prologue
    .line 363
    new-instance v0, Lorg/telegram/messenger/ApplicationLoader$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ApplicationLoader$2;-><init>(Lorg/telegram/messenger/ApplicationLoader;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 384
    return-void
.end method

.method public static isCustomTheme()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isCustomTheme:Z

    return v0
.end method

.method public static loadWallpaper()V
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 107
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ApplicationLoader$1;

    invoke-direct {v1}, Lorg/telegram/messenger/ApplicationLoader$1;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static postInitApplication()V
    .locals 20

    .prologue
    .line 218
    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->applicationInited:Z

    if-eqz v1, :cond_0

    .line 298
    .local v5, "deviceModel":Ljava/lang/String;
    .local v6, "systemVersion":Ljava/lang/String;
    .local v7, "appVersion":Ljava/lang/String;
    .local v8, "langCode":Ljava/lang/String;
    .local v9, "configPath":Ljava/lang/String;
    .local v12, "enablePushConnection":Z
    .local v13, "app":Lorg/telegram/messenger/ApplicationLoader;
    .local v14, "e":Ljava/lang/Exception;
    .local v19, "preferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 222
    .end local v5    # "deviceModel":Ljava/lang/String;
    .end local v6    # "systemVersion":Ljava/lang/String;
    .end local v7    # "appVersion":Ljava/lang/String;
    .end local v8    # "langCode":Ljava/lang/String;
    .end local v9    # "configPath":Ljava/lang/String;
    .end local v12    # "enablePushConnection":Z
    .end local v13    # "app":Lorg/telegram/messenger/ApplicationLoader;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v19    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->applicationInited:Z

    .line 223
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->convertConfig()V

    .line 226
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .restart local v14    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    new-instance v15, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v15, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 233
    .local v15, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v15, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    new-instance v16, Lorg/telegram/messenger/ScreenReceiver;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/messenger/ScreenReceiver;-><init>()V

    .line 235
    .local v16, "mReceiver":Landroid/content/BroadcastReceiver;
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    .end local v15    # "filter":Landroid/content/IntentFilter;
    .end local v16    # "mReceiver":Landroid/content/BroadcastReceiver;
    :goto_2
    :try_start_2
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    .line 242
    .local v18, "pm":Landroid/os/PowerManager;
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    .line 243
    const-string/jumbo v1, "tmessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "screen state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 248
    .end local v18    # "pm":Landroid/os/PowerManager;
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->loadConfig()V

    .line 253
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    .line 256
    .restart local v9    # "configPath":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getLocaleStringIso639()Ljava/lang/String;

    move-result-object v8

    .line 257
    .restart local v8    # "langCode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 258
    .restart local v5    # "deviceModel":Ljava/lang/String;
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 259
    .local v17, "pInfo":Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 260
    .restart local v7    # "appVersion":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v6

    .line 267
    .end local v17    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "systemVersion":Ljava/lang/String;
    :goto_4
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 268
    const-string/jumbo v8, "en"

    .line 270
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 271
    const-string/jumbo v5, "Android unknown"

    .line 273
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 274
    const-string/jumbo v7, "App version unknown"

    .line 276
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 277
    const-string/jumbo v6, "SDK Unknown"

    .line 280
    :cond_4
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "Notifications"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 281
    .restart local v19    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "pushConnection"

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 283
    .restart local v12    # "enablePushConnection":Z
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    .line 284
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    const/16 v3, 0x35

    sget v4, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getNetworkLogPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v11

    invoke-virtual/range {v1 .. v12}, Lorg/telegram/tgnet/ConnectionsManager;->init(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 285
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 286
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 287
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->applyCountryPortNumber(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getBlockedUsers(Z)V

    .line 289
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper;->checkUnsentMessages()V

    .line 292
    :cond_5
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    check-cast v13, Lorg/telegram/messenger/ApplicationLoader;

    .line 293
    .restart local v13    # "app":Lorg/telegram/messenger/ApplicationLoader;
    invoke-direct {v13}, Lorg/telegram/messenger/ApplicationLoader;->initPlayServices()V

    .line 294
    const-string/jumbo v1, "tmessages"

    const-string/jumbo v2, "app initied"

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->checkAppAccount()V

    .line 297
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    goto/16 :goto_0

    .line 227
    .end local v5    # "deviceModel":Ljava/lang/String;
    .end local v6    # "systemVersion":Ljava/lang/String;
    .end local v7    # "appVersion":Ljava/lang/String;
    .end local v8    # "langCode":Ljava/lang/String;
    .end local v9    # "configPath":Ljava/lang/String;
    .end local v12    # "enablePushConnection":Z
    .end local v13    # "app":Lorg/telegram/messenger/ApplicationLoader;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v19    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v14

    .line 228
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 236
    :catch_1
    move-exception v14

    .line 237
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 244
    :catch_2
    move-exception v14

    .line 245
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 261
    .restart local v9    # "configPath":Ljava/lang/String;
    :catch_3
    move-exception v14

    .line 262
    const-string/jumbo v8, "en"

    .line 263
    .restart local v8    # "langCode":Ljava/lang/String;
    const-string/jumbo v5, "Android unknown"

    .line 264
    .restart local v5    # "deviceModel":Ljava/lang/String;
    const-string/jumbo v7, "App version unknown"

    .line 265
    .restart local v7    # "appVersion":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "systemVersion":Ljava/lang/String;
    goto/16 :goto_4
.end method

.method public static reloadWallpaper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;

    .line 82
    sput v2, Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I

    .line 83
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "serviceMessageColor"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->loadWallpaper()V

    .line 85
    return-void
.end method

.method public static startPushService()V
    .locals 5

    .prologue
    .line 334
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "Notifications"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 336
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "pushService"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v4, Lorg/telegram/messenger/NotificationsService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->stopPushService()V

    goto :goto_0
.end method

.method public static stopPushService()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 344
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v5, Lorg/telegram/messenger/NotificationsService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 346
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v5, Lorg/telegram/messenger/NotificationsService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v2, v6, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 347
    .local v1, "pintent":Landroid/app/PendingIntent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 348
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 349
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 353
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 355
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/LocaleController;->onDeviceConfigurationChange(Landroid/content/res/Configuration;)V

    .line 356
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 304
    invoke-virtual {p0}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 305
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/messenger/NativeLoader;->initNativeLibs(Landroid/content/Context;)V

    .line 306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_setJava(Z)V

    .line 307
    new-instance v0, Lorg/telegram/ui/Components/ForegroundDetector;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ForegroundDetector;-><init>(Landroid/app/Application;)V

    .line 309
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    .line 311
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->startPushService()V

    .line 312
    return-void

    .line 306
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
