.class public Lorg/telegram/messenger/NativeLoader;
.super Ljava/lang/Object;
.source "NativeLoader.java"


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "tmessages.22"

.field private static final LIB_SO_NAME:Ljava/lang/String; = "libtmessages.22.so"

.field private static final LIB_VERSION:I = 0x16

.field private static final LOCALE_LIB_SO_NAME:Ljava/lang/String; = "libtmessages.22loc.so"

.field private static volatile nativeLoaded:Z


# instance fields
.field private crashPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/messenger/NativeLoader;->crashPath:Ljava/lang/String;

    return-void
.end method

.method private static getNativeLibraryDir(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "f":Ljava/io/File;
    if-eqz p0, :cond_0

    .line 38
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-class v3, Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v4, "nativeLibraryDir"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "f":Ljava/io/File;
    .local v1, "f":Ljava/io/File;
    move-object v0, v1

    .line 43
    .end local v1    # "f":Ljava/io/File;
    .restart local v0    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 44
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string/jumbo v4, "lib"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .restart local v0    # "f":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    .end local v0    # "f":Ljava/io/File;
    :goto_1
    return-object v0

    .line 39
    .restart local v0    # "f":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 40
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v2    # "th":Ljava/lang/Throwable;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static native init(Ljava/lang/String;Z)V
.end method

.method public static declared-synchronized initNativeLibs(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const-class v8, Lorg/telegram/messenger/NativeLoader;

    monitor-enter v8

    :try_start_0
    sget-boolean v7, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    .line 195
    :cond_0
    :goto_0
    monitor-exit v8

    return-void

    .line 118
    :cond_1
    :try_start_1
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :try_start_2
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v9, "armeabi-v7a"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 124
    const-string/jumbo v5, "armeabi-v7a"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    .local v5, "folder":Ljava/lang/String;
    :goto_1
    :try_start_3
    const-string/jumbo v7, "os.arch"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "javaArch":Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string/jumbo v7, "686"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 142
    const-string/jumbo v5, "x86"

    .line 146
    :cond_2
    invoke-static {p0}, Lorg/telegram/messenger/NativeLoader;->getNativeLibraryDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 147
    .local v1, "destFile":Ljava/io/File;
    if-eqz v1, :cond_4

    .line 148
    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "libtmessages.22.so"

    invoke-direct {v2, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    .end local v1    # "destFile":Ljava/io/File;
    .local v2, "destFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 150
    const-string/jumbo v7, "tmessages"

    const-string/jumbo v9, "load normal lib"

    invoke-static {v7, v9}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    :try_start_4
    const-string/jumbo v7, "tmessages.22"

    invoke-static {v7}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 153
    sget-object v7, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-static {v7, v9}, Lorg/telegram/messenger/NativeLoader;->init(Ljava/lang/String;Z)V

    .line 154
    const/4 v7, 0x1

    sput-boolean v7, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v4

    .line 157
    .local v4, "e":Ljava/lang/Error;
    :try_start_5
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "e":Ljava/lang/Error;
    :cond_3
    move-object v1, v2

    .line 162
    .end local v2    # "destFile":Ljava/io/File;
    .restart local v1    # "destFile":Ljava/io/File;
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v9, "lib"

    invoke-direct {v0, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .local v0, "destDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 165
    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "libtmessages.22loc.so"

    invoke-direct {v3, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    .local v3, "destLocalFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v7

    if-eqz v7, :cond_5

    .line 168
    :try_start_6
    const-string/jumbo v7, "tmessages"

    const-string/jumbo v9, "Load local lib"

    invoke-static {v7, v9}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 170
    sget-object v7, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-static {v7, v9}, Lorg/telegram/messenger/NativeLoader;->init(Ljava/lang/String;Z)V

    .line 171
    const/4 v7, 0x1

    sput-boolean v7, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z
    :try_end_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 173
    :catch_1
    move-exception v4

    .line 174
    .restart local v4    # "e":Ljava/lang/Error;
    :try_start_7
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 179
    .end local v4    # "e":Ljava/lang/Error;
    :cond_5
    const-string/jumbo v7, "tmessages"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Library not found, arch = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {p0, v0, v3, v5}, Lorg/telegram/messenger/NativeLoader;->loadFromZip(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 189
    .end local v0    # "destDir":Ljava/io/File;
    .end local v1    # "destFile":Ljava/io/File;
    .end local v3    # "destLocalFile":Ljava/io/File;
    .end local v5    # "folder":Ljava/lang/String;
    .end local v6    # "javaArch":Ljava/lang/String;
    :goto_2
    :try_start_8
    const-string/jumbo v7, "tmessages.22"

    invoke-static {v7}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 190
    sget-object v7, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-static {v7, v9}, Lorg/telegram/messenger/NativeLoader;->init(Ljava/lang/String;Z)V

    .line 191
    const/4 v7, 0x1

    sput-boolean v7, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 192
    :catch_2
    move-exception v4

    .line 193
    .restart local v4    # "e":Ljava/lang/Error;
    :try_start_9
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 114
    .end local v4    # "e":Ljava/lang/Error;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 125
    :cond_6
    :try_start_a
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v9, "armeabi"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 126
    const-string/jumbo v5, "armeabi"

    .restart local v5    # "folder":Ljava/lang/String;
    goto/16 :goto_1

    .line 127
    .end local v5    # "folder":Ljava/lang/String;
    :cond_7
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v9, "x86"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 128
    const-string/jumbo v5, "x86"

    .restart local v5    # "folder":Ljava/lang/String;
    goto/16 :goto_1

    .line 129
    .end local v5    # "folder":Ljava/lang/String;
    :cond_8
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v9, "mips"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 130
    const-string/jumbo v5, "mips"

    .restart local v5    # "folder":Ljava/lang/String;
    goto/16 :goto_1

    .line 132
    .end local v5    # "folder":Ljava/lang/String;
    :cond_9
    const-string/jumbo v5, "armeabi"

    .line 133
    .restart local v5    # "folder":Ljava/lang/String;
    const-string/jumbo v7, "tmessages"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unsupported arch: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 135
    .end local v5    # "folder":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 136
    .local v4, "e":Ljava/lang/Exception;
    :try_start_b
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    const-string/jumbo v5, "armeabi"
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .restart local v5    # "folder":Ljava/lang/String;
    goto/16 :goto_1

    .line 184
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "folder":Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 185
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_c
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2
.end method

.method private static loadFromZip(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "destDir"    # Ljava/io/File;
    .param p2, "destLocalFile"    # Ljava/io/File;
    .param p3, "folder"    # Ljava/lang/String;

    .prologue
    .line 54
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, "arr$":[Ljava/io/File;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v5, v1, v6

    .line 55
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    :catch_0
    move-exception v3

    .line 58
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v11, 0x0

    .line 62
    .local v11, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v10, 0x0

    .line 64
    .local v10, "stream":Ljava/io/InputStream;
    :try_start_1
    new-instance v12, Ljava/util/zip/ZipFile;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .local v12, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "lib/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "libtmessages.22.so"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 66
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    if-nez v4, :cond_3

    .line 67
    new-instance v13, Ljava/lang/Exception;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unable to find file in apk:lib/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "tmessages.22"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v3

    move-object v11, v12

    .line 93
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_1
    :try_start_3
    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    if-eqz v10, :cond_1

    .line 97
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 102
    :cond_1
    :goto_2
    if-eqz v11, :cond_2

    .line 104
    :try_start_5
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 110
    :cond_2
    :goto_3
    const/4 v13, 0x0

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    return v13

    .line 69
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_3
    :try_start_6
    invoke-virtual {v12, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    .line 71
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 72
    .local v9, "out":Ljava/io/OutputStream;
    const/16 v13, 0x1000

    new-array v2, v13, [B

    .line 74
    .local v2, "buf":[B
    :goto_5
    invoke-virtual {v10, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    if-lez v7, :cond_6

    .line 75
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 76
    const/4 v13, 0x0

    invoke-virtual {v9, v2, v13, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 95
    .end local v2    # "buf":[B
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "len":I
    .end local v9    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v13

    move-object v11, v12

    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_6
    if-eqz v10, :cond_4

    .line 97
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 102
    :cond_4
    :goto_7
    if-eqz v11, :cond_5

    .line 104
    :try_start_8
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 107
    :cond_5
    :goto_8
    throw v13

    .line 78
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "buf":[B
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v7    # "len":I
    .restart local v9    # "out":Ljava/io/OutputStream;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_6
    :try_start_9
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 80
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Ljava/io/File;->setReadable(ZZ)Z

    .line 81
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 82
    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/File;->setWritable(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 85
    :try_start_a
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 86
    sget-object v13, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    sget-boolean v14, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-static {v13, v14}, Lorg/telegram/messenger/NativeLoader;->init(Ljava/lang/String;Z)V

    .line 87
    const/4 v13, 0x1

    sput-boolean v13, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 91
    :goto_9
    const/4 v13, 0x1

    .line 95
    if-eqz v10, :cond_7

    .line 97
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 102
    :cond_7
    :goto_a
    if-eqz v12, :cond_8

    .line 104
    :try_start_c
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :cond_8
    :goto_b
    move-object v11, v12

    .line 107
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 88
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/Error;
    :try_start_d
    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_9

    .line 98
    .end local v3    # "e":Ljava/lang/Error;
    :catch_3
    move-exception v3

    .line 99
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "tmessages"

    invoke-static {v14, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 105
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 106
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "tmessages"

    invoke-static {v14, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 98
    .end local v2    # "buf":[B
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "len":I
    .end local v9    # "out":Ljava/io/OutputStream;
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v3

    .line 99
    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 105
    :catch_6
    move-exception v3

    .line 106
    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 98
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v3

    .line 99
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "tmessages"

    invoke-static {v14, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 105
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v3

    .line 106
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "tmessages"

    invoke-static {v14, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 95
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v13

    goto :goto_6

    .line 92
    :catch_9
    move-exception v3

    goto/16 :goto_1
.end method
