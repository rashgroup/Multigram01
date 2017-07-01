.class Lorg/telegram/ui/WallpapersActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "WallpapersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WallpapersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/WallpapersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WallpapersActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 18
    .param p1, "id"    # I

    .prologue
    .line 112
    const/4 v15, -0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_1

    .line 113
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-virtual {v15}, Lorg/telegram/ui/WallpapersActivity;->finishFragment()V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_0

    .line 116
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->wallpappersByIds:Ljava/util/HashMap;
    invoke-static {v15}, Lorg/telegram/ui/WallpapersActivity;->access$100(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/HashMap;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/WallpapersActivity;->access$000(Lorg/telegram/ui/WallpapersActivity;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 117
    .local v13, "wallPaper":Lorg/telegram/tgnet/TLRPC$WallPaper;
    if-eqz v13, :cond_4

    iget v15, v13, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:I

    const v16, 0xf4241

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    instance-of v15, v13, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v15, :cond_4

    .line 118
    sget-object v15, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v14, v15, Landroid/graphics/Point;->x:I

    .line 119
    .local v14, "width":I
    sget-object v15, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v15, Landroid/graphics/Point;->y:I

    .line 120
    .local v8, "height":I
    if-le v14, v8, :cond_2

    .line 121
    move v11, v14

    .line 122
    .local v11, "temp":I
    move v14, v8

    .line 123
    move v8, v11

    .line 125
    .end local v11    # "temp":I
    :cond_2
    iget-object v15, v13, Lorg/telegram/tgnet/TLRPC$WallPaper;->sizes:Ljava/util/ArrayList;

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v16

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v10

    .line 126
    .local v10, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".jpg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "fileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v15

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v15

    invoke-direct {v5, v15, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .local v5, "f":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v15

    const-string/jumbo v16, "wallpaper.jpg"

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v12, "toFile":Ljava/io/File;
    :try_start_0
    invoke-static {v5, v12}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 145
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "height":I
    .end local v10    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v12    # "toFile":Ljava/io/File;
    .end local v14    # "width":I
    .local v2, "done":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 146
    sget-object v15, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v16, "mainconfig"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 147
    .local v9, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 148
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v15, "selectedBackground"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/WallpapersActivity;->access$000(Lorg/telegram/ui/WallpapersActivity;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v4, v15, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 149
    const-string/jumbo v15, "selectedColor"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/WallpapersActivity;->selectedColor:I
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/WallpapersActivity;->access$200(Lorg/telegram/ui/WallpapersActivity;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v4, v15, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->reloadWallpaper()V

    .line 153
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "preferences":Landroid/content/SharedPreferences;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-virtual {v15}, Lorg/telegram/ui/WallpapersActivity;->finishFragment()V

    goto/16 :goto_0

    .line 131
    .end local v2    # "done":Z
    .restart local v5    # "f":Ljava/io/File;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v8    # "height":I
    .restart local v10    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v12    # "toFile":Ljava/io/File;
    .restart local v14    # "width":I
    :catch_0
    move-exception v3

    .line 132
    .local v3, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 133
    .restart local v2    # "done":Z
    const-string/jumbo v15, "tmessages"

    invoke-static {v15, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 136
    .end local v2    # "done":Z
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "height":I
    .end local v10    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v12    # "toFile":Ljava/io/File;
    .end local v14    # "width":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I
    invoke-static {v15}, Lorg/telegram/ui/WallpapersActivity;->access$000(Lorg/telegram/ui/WallpapersActivity;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 137
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v15

    const-string/jumbo v16, "wallpaper-temp.jpg"

    move-object/from16 v0, v16

    invoke-direct {v7, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .local v7, "fromFile":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v15

    const-string/jumbo v16, "wallpaper.jpg"

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    .restart local v12    # "toFile":Ljava/io/File;
    invoke-virtual {v7, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 140
    .restart local v2    # "done":Z
    goto :goto_1

    .line 141
    .end local v2    # "done":Z
    .end local v7    # "fromFile":Ljava/io/File;
    .end local v12    # "toFile":Ljava/io/File;
    :cond_5
    const/4 v2, 0x1

    .restart local v2    # "done":Z
    goto :goto_1
.end method
