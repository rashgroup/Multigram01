.class Lorg/telegram/ui/Components/ChatActivityEnterView$11;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 914
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    if-nez v15, :cond_5

    .line 915
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 916
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x17

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v15

    const-string/jumbo v16, "android.permission.RECORD_AUDIO"

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_0

    .line 917
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "android.permission.RECORD_AUDIO"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-virtual/range {v15 .. v17}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 918
    const/4 v15, 0x0

    .line 1019
    :goto_0
    return v15

    .line 923
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    if-gez v15, :cond_2

    .line 924
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    .line 925
    .local v8, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v8, :cond_1

    iget v15, v8, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 926
    const-string/jumbo v2, "bigchat_upload_audio"

    .line 933
    .end local v8    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .local v2, "action":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v15

    invoke-static {v2, v15}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 934
    const/4 v15, 0x0

    goto :goto_0

    .line 928
    .end local v2    # "action":Ljava/lang/String;
    .restart local v8    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1
    const-string/jumbo v2, "chat_upload_audio"

    .restart local v2    # "action":Ljava/lang/String;
    goto :goto_1

    .line 931
    .end local v2    # "action":Ljava/lang/String;
    .end local v8    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2
    const-string/jumbo v2, "pm_upload_audio"

    .restart local v2    # "action":Ljava/lang/String;
    goto :goto_1

    .line 937
    .end local v2    # "action":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v16, -0x40800000    # -1.0f

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F
    invoke-static/range {v15 .. v16}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3202(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 938
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v18

    invoke-virtual/range {v15 .. v18}, Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->updateAudioRecordIntefrace()V
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3400(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1018
    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1019
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 941
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 942
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v16, -0x40800000    # -1.0f

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F
    invoke-static/range {v15 .. v16}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3202(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 944
    sget-object v15, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v16, "mainconfig"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 945
    .local v11, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v15, "confirmatin_audio"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 946
    .local v7, "confirmatinAudio":Z
    if-eqz v7, :cond_7

    .line 947
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v4, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 948
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v15, "AppName"

    const v16, 0x7f07009a

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 949
    const-string/jumbo v15, "AreYouSureYouWantToSendAudio"

    const v16, 0x7f0700b4

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 950
    const-string/jumbo v15, "OK"

    const v16, 0x7f07039f

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Lorg/telegram/ui/Components/ChatActivityEnterView$11$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$11$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$11;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 956
    const-string/jumbo v15, "Cancel"

    const v16, 0x7f0700f2

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Lorg/telegram/ui/Components/ChatActivityEnterView$11$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$11$2;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$11;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 962
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    .line 963
    .local v13, "visibleDialog":Landroid/app/Dialog;
    invoke-virtual {v13}, Landroid/app/Dialog;->show()V

    .line 964
    const v15, 0x102000b

    invoke-virtual {v13, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 965
    .local v12, "textView":Landroid/widget/TextView;
    const v15, 0x1020019

    invoke-virtual {v13, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 966
    .local v5, "button1":Landroid/widget/Button;
    const v15, 0x102001a

    invoke-virtual {v13, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 967
    .local v6, "button2":Landroid/widget/Button;
    const-string/jumbo v15, "fonts/rmedium.ttf"

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 968
    const-string/jumbo v15, "fonts/rmedium.ttf"

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 969
    const-string/jumbo v15, "fonts/rmedium.ttf"

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 974
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "button1":Landroid/widget/Button;
    .end local v6    # "button2":Landroid/widget/Button;
    .end local v12    # "textView":Landroid/widget/TextView;
    .end local v13    # "visibleDialog":Landroid/app/Dialog;
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/16 v16, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudio:Z
    invoke-static/range {v15 .. v16}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3602(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 975
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->updateAudioRecordIntefrace()V
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3400(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    goto/16 :goto_2

    .line 971
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    goto :goto_3

    .line 976
    .end local v7    # "confirmatinAudio":Z
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudio:Z
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    .line 978
    .local v14, "x":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v15

    neg-float v15, v15

    cmpg-float v15, v14, v15

    if-gez v15, :cond_9

    .line 979
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    .line 980
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/16 v16, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudio:Z
    invoke-static/range {v15 .. v16}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3602(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 981
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->updateAudioRecordIntefrace()V
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3400(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 984
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/ImageView;->getX()F

    move-result v15

    add-float/2addr v14, v15

    .line 985
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 986
    .local v10, "params":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v15

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_b

    .line 987
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v15

    sub-float v9, v14, v15

    .line 988
    .local v9, "dist":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v15

    invoke-virtual {v15, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setTranslationX(F)V

    .line 989
    const/high16 v15, 0x41f00000    # 30.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    float-to-int v0, v9

    move/from16 v16, v0

    add-int v15, v15, v16

    iput v15, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 990
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 991
    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v16

    div-float v16, v9, v16

    add-float v3, v15, v16

    .line 992
    .local v3, "alpha":F
    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v3, v15

    if-lez v15, :cond_d

    .line 993
    const/high16 v3, 0x3f800000    # 1.0f

    .line 997
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 999
    .end local v3    # "alpha":F
    .end local v9    # "dist":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getX()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v15, v15, v16

    const/high16 v16, 0x41f00000    # 30.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v15, v15, v16

    cmpg-float v15, v14, v15

    if-gtz v15, :cond_c

    .line 1000
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v15

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v15, v15, v16

    if-nez v15, :cond_c

    .line 1001
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F
    invoke-static {v15, v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3202(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 1002
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v17

    sub-int v16, v16, v17

    const/high16 v17, 0x42400000    # 48.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F
    invoke-static/range {v15 .. v16}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 1003
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v15

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_e

    .line 1004
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v16, 0x42a00000    # 80.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F
    invoke-static/range {v15 .. v16}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 1010
    :cond_c
    :goto_5
    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/high16 v16, 0x41f00000    # 30.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_4

    .line 1011
    const/high16 v15, 0x41f00000    # 30.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    iput v15, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1012
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setTranslationX(F)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v15

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v16, -0x40800000    # -1.0f

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F
    invoke-static/range {v15 .. v16}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3202(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    goto/16 :goto_2

    .line 994
    .restart local v3    # "alpha":F
    .restart local v9    # "dist":F
    :cond_d
    const/4 v15, 0x0

    cmpg-float v15, v3, v15

    if-gez v15, :cond_a

    .line 995
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 1005
    .end local v3    # "alpha":F
    .end local v9    # "dist":F
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F
    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v15

    const/high16 v16, 0x42a00000    # 80.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_c

    .line 1006
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$11;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v16, 0x42a00000    # 80.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F
    invoke-static/range {v15 .. v16}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    goto :goto_5
.end method
