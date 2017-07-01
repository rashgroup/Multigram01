.class final Lorg/telegram/messenger/ApplicationLoader$1;
.super Ljava/lang/Object;
.source "ApplicationLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ApplicationLoader;->loadWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const v8, 0xf4241

    .line 110
    # getter for: Lorg/telegram/messenger/ApplicationLoader;->sync:Ljava/lang/Object;
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 111
    const/4 v2, 0x0

    .line 113
    .local v2, "selectedColor":I
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "mainconfig"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "selectedBackground"

    const v6, 0xf4241

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 115
    .local v1, "selectedBackground":I
    const-string/jumbo v4, "selectedColor"

    const/4 v6, 0x0

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 116
    const-string/jumbo v4, "serviceMessageColor"

    const/4 v6, 0x0

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$102(I)I

    .line 117
    const-string/jumbo v4, "serviceSelectedMessageColor"

    const/4 v6, 0x0

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->serviceSelectedMessageColor:I
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$202(I)I

    .line 118
    if-nez v2, :cond_0

    .line 119
    if-ne v1, v8, :cond_4

    .line 120
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f02006f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 121
    const/4 v4, 0x0

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->isCustomTheme:Z
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$402(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local v1    # "selectedBackground":I
    :cond_0
    :goto_0
    :try_start_1
    # getter for: Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->access$300()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_2

    .line 137
    if-nez v2, :cond_1

    .line 138
    const v2, -0x291b11

    .line 140
    :cond_1
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 142
    :cond_2
    # getter for: Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->access$100()I

    move-result v4

    if-nez v4, :cond_3

    .line 143
    # invokes: Lorg/telegram/messenger/ApplicationLoader;->calcBackgroundColor()V
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->access$500()V

    .line 145
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    return-void

    .line 123
    .restart local v0    # "preferences":Landroid/content/SharedPreferences;
    .restart local v1    # "selectedBackground":I
    :cond_4
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v6, "wallpaper.jpg"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .local v3, "toFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 125
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 126
    const/4 v4, 0x1

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->isCustomTheme:Z
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$402(Z)Z

    goto :goto_0

    .line 133
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local v1    # "selectedBackground":I
    .end local v3    # "toFile":Ljava/io/File;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 128
    .restart local v0    # "preferences":Landroid/content/SharedPreferences;
    .restart local v1    # "selectedBackground":I
    .restart local v3    # "toFile":Ljava/io/File;
    :cond_5
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f02006f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 129
    const/4 v4, 0x0

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->isCustomTheme:Z
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$402(Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 145
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local v1    # "selectedBackground":I
    .end local v3    # "toFile":Ljava/io/File;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method
