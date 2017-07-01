.class Lorg/telegram/ui/VideoEditorActivity$4;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "VideoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VideoEditorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 20
    .param p1, "id"    # I

    .prologue
    .line 248
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/VideoEditorActivity;->finishFragment()V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->sync:Ljava/lang/Object;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$000(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 252
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    .line 254
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2, v4}, Lorg/telegram/ui/VideoEditorActivity;->access$102(Lorg/telegram/ui/VideoEditorActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->delegate:Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$900(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1000(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1000(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->compressVideo:Landroid/widget/CheckBox;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1000(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    .line 264
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->delegate:Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$900(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$1100(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->startTime:J
    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$1200(Lorg/telegram/ui/VideoEditorActivity;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->endTime:J
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$1300(Lorg/telegram/ui/VideoEditorActivity;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I
    invoke-static {v8}, Lorg/telegram/ui/VideoEditorActivity;->access$1400(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I
    invoke-static {v9}, Lorg/telegram/ui/VideoEditorActivity;->access$1500(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I
    invoke-static {v10}, Lorg/telegram/ui/VideoEditorActivity;->access$1600(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I
    invoke-static {v11}, Lorg/telegram/ui/VideoEditorActivity;->access$1400(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I
    invoke-static {v12}, Lorg/telegram/ui/VideoEditorActivity;->access$1500(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->originalBitrate:I
    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$1700(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I
    invoke-static {v14}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/VideoEditorActivity;->access$1900(Lorg/telegram/ui/VideoEditorActivity;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/VideoEditorActivity;->access$2000(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/EditText;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v2 .. v18}, Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;->didFinishEditVideo(Ljava/lang/String;JJIIIIIIJJLjava/lang/String;)V

    .line 269
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/VideoEditorActivity;->finishFragment()V

    goto/16 :goto_0

    .line 257
    :catch_0
    move-exception v19

    .line 258
    .local v19, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 261
    .end local v19    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 266
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->delegate:Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$900(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$1100(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->startTime:J
    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$1200(Lorg/telegram/ui/VideoEditorActivity;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->endTime:J
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$1300(Lorg/telegram/ui/VideoEditorActivity;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I
    invoke-static {v8}, Lorg/telegram/ui/VideoEditorActivity;->access$2100(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I
    invoke-static {v9}, Lorg/telegram/ui/VideoEditorActivity;->access$2200(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I
    invoke-static {v10}, Lorg/telegram/ui/VideoEditorActivity;->access$1600(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I
    invoke-static {v11}, Lorg/telegram/ui/VideoEditorActivity;->access$1400(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I
    invoke-static {v12}, Lorg/telegram/ui/VideoEditorActivity;->access$1500(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->bitrate:I
    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$2300(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I
    invoke-static {v14}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/VideoEditorActivity;->access$1900(Lorg/telegram/ui/VideoEditorActivity;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/VideoEditorActivity;->access$2000(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/EditText;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v2 .. v18}, Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;->didFinishEditVideo(Ljava/lang/String;JJIIIIIIJJLjava/lang/String;)V

    goto/16 :goto_2

    .line 273
    :cond_6
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->textFieldContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$2400(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$2000(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->messageEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$2000(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    goto/16 :goto_0
.end method
