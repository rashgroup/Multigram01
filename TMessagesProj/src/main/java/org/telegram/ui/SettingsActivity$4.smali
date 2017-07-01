.class Lorg/telegram/ui/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 22
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->textSizeRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    if-nez v18, :cond_1

    .line 659
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 400
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 401
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v18, "TextSize"

    const v19, 0x7f0704b8

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 402
    new-instance v15, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 403
    .local v15, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 404
    const/16 v18, 0x1e

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 405
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->fontSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 406
    invoke-virtual {v6, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 407
    const-string/jumbo v18, "Done"

    const v19, 0x7f0701c2

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    new-instance v19, Lorg/telegram/ui/SettingsActivity$4$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lorg/telegram/ui/SettingsActivity$4$1;-><init>(Lorg/telegram/ui/SettingsActivity$4;Lorg/telegram/ui/Components/NumberPicker;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 421
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v15    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->enableAnimationsRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 422
    sget-object v18, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v19, "mainconfig"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 423
    .local v16, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v18, "view_animations"

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 424
    .local v5, "animations":Z
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 425
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v19, "view_animations"

    if-nez v5, :cond_3

    const/16 v18, 0x1

    :goto_1
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 426
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 428
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v5, :cond_4

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 425
    .restart local p2    # "view":Landroid/view/View;
    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    .line 428
    .end local p2    # "view":Landroid/view/View;
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 430
    .end local v5    # "animations":Z
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->notificationRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 432
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->backgroundRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/WallpapersActivity;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/ui/WallpapersActivity;-><init>()V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 434
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->askQuestionRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 438
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 439
    .local v13, "message":Landroid/widget/TextView;
    const-string/jumbo v18, "AskAQuestionInfo"

    const v19, 0x7f0700b6

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    const/high16 v18, 0x41900000    # 18.0f

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 441
    const v18, -0xd9874a

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 442
    const/high16 v18, 0x41000000    # 8.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    const/high16 v19, 0x40a00000    # 5.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    const/high16 v20, 0x41000000    # 8.0f

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v20

    const/high16 v21, 0x40c00000    # 6.0f

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 443
    new-instance v18, Lorg/telegram/ui/SettingsActivity$LinkMovementMethodMy;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lorg/telegram/ui/SettingsActivity$LinkMovementMethodMy;-><init>(Lorg/telegram/ui/SettingsActivity$1;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 445
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 446
    .restart local v6    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 447
    const-string/jumbo v18, "AskButton"

    const v19, 0x7f0700b7

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    new-instance v19, Lorg/telegram/ui/SettingsActivity$4$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/SettingsActivity$4$2;-><init>(Lorg/telegram/ui/SettingsActivity$4;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 453
    const-string/jumbo v18, "Cancel"

    const v19, 0x7f0700f2

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 455
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "message":Landroid/widget/TextView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendLogsRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$1000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # invokes: Lorg/telegram/ui/SettingsActivity;->sendLogs()V
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$1100(Lorg/telegram/ui/SettingsActivity;)V

    goto/16 :goto_0

    .line 457
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->clearLogsRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$1200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 458
    invoke-static {}, Lorg/telegram/messenger/FileLog;->cleanupLogs()V

    goto/16 :goto_0

    .line 459
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendByEnterRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$1300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 460
    sget-object v18, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v19, "mainconfig"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 461
    .restart local v16    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v18, "send_by_enter"

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 462
    .local v17, "send":Z
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 463
    .restart local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v19, "send_by_enter"

    if-nez v17, :cond_b

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 464
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 465
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 466
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v17, :cond_c

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 463
    .restart local p2    # "view":Landroid/view/View;
    :cond_b
    const/16 v18, 0x0

    goto :goto_3

    .line 466
    .end local p2    # "view":Landroid/view/View;
    :cond_c
    const/16 v18, 0x0

    goto :goto_4

    .line 468
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "preferences":Landroid/content/SharedPreferences;
    .end local v17    # "send":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->raiseToSpeakRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$1400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 469
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MediaController;->toogleRaiseToSpeak()V

    .line 470
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 471
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MediaController;->canRaiseToSpeak()Z

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 473
    .restart local p2    # "view":Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->autoplayGifsRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$1500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 474
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MediaController;->toggleAutoplayGifs()V

    .line 475
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 476
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MediaController;->canAutoplayGifs()Z

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 478
    .restart local p2    # "view":Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->saveToGalleryRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$1600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 479
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MediaController;->toggleSaveToGallery()V

    .line 480
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 481
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MediaController;->canSaveToGallery()Z

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 483
    .restart local p2    # "view":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->customTabsRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$1700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 484
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MediaController;->toggleCustomTabs()V

    .line 485
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 486
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MediaController;->canCustomTabs()Z

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 488
    .restart local p2    # "view":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->directShareRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$1800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 489
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MediaController;->toggleDirectShare()V

    .line 490
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 491
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MediaController;->canDirectShare()Z

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 493
    .restart local p2    # "view":Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$1900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 495
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->languageRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$2000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/ui/LanguageSelectActivity;-><init>()V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 497
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->switchBackendButtonRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$2100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 501
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 502
    .restart local v6    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v18, "AreYouSure"

    const v19, 0x7f07009e

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 503
    const-string/jumbo v18, "AppName"

    const v19, 0x7f07009a

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 504
    const-string/jumbo v18, "OK"

    const v19, 0x7f07039f

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    new-instance v19, Lorg/telegram/ui/SettingsActivity$4$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/SettingsActivity$4$3;-><init>(Lorg/telegram/ui/SettingsActivity$4;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 510
    const-string/jumbo v18, "Cancel"

    const v19, 0x7f0700f2

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 512
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->telegramFaqRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$2200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "TelegramFaqUrl"

    const v20, 0x7f0704b4

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 514
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyPolicyRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$2300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "PrivacyPolicyUrl"

    const v20, 0x7f0703f7

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 516
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsReimportRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$2400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsSortRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$2500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 522
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 523
    .restart local v6    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v18, "SortBy"

    const v19, 0x7f070494

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 524
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "Default"

    const v21, 0x7f07019d

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "SortFirstName"

    const v21, 0x7f070495

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string/jumbo v20, "SortLastName"

    const v21, 0x7f070496

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    new-instance v19, Lorg/telegram/ui/SettingsActivity$4$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/SettingsActivity$4$4;-><init>(Lorg/telegram/ui/SettingsActivity$4;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 540
    const-string/jumbo v18, "Cancel"

    const v19, 0x7f0700f2

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 542
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->wifiDownloadRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$2600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->mobileDownloadRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$2700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->roamingDownloadRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$2800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_2a

    .line 543
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 546
    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v12, v0, [Z

    .line 547
    .local v12, "maskValues":[Z
    new-instance v6, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 549
    .local v6, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/4 v11, 0x0

    .line 550
    .local v11, "mask":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->mobileDownloadRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$2700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    .line 551
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    move-object/from16 v0, v18

    iget v11, v0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 558
    :cond_1a
    :goto_5
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 559
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 560
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 561
    .local v10, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 562
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_6
    const/16 v18, 0x6

    move/from16 v0, v18

    if-ge v4, v0, :cond_29

    .line 563
    const/4 v14, 0x0

    .line 564
    .local v14, "name":Ljava/lang/String;
    if-nez v4, :cond_1f

    .line 565
    and-int/lit8 v18, v11, 0x1

    if-eqz v18, :cond_1e

    const/16 v18, 0x1

    :goto_7
    aput-boolean v18, v12, v4

    .line 566
    const-string/jumbo v18, "AttachPhoto"

    const v19, 0x7f0700bf

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 583
    :cond_1b
    :goto_8
    new-instance v8, Lorg/telegram/ui/Cells/CheckBoxCell;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;)V

    .line 584
    .local v8, "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTag(Ljava/lang/Object;)V

    .line 585
    const v18, 0x7f0201ab

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundResource(I)V

    .line 586
    const/16 v18, -0x1

    const/16 v19, 0x30

    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    const-string/jumbo v18, ""

    aget-boolean v19, v12, v4

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v8, v14, v0, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 588
    new-instance v18, Lorg/telegram/ui/SettingsActivity$4$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lorg/telegram/ui/SettingsActivity$4$5;-><init>(Lorg/telegram/ui/SettingsActivity$4;[Z)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 552
    .end local v4    # "a":I
    .end local v8    # "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v10    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v14    # "name":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->wifiDownloadRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$2600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d

    .line 553
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    move-object/from16 v0, v18

    iget v11, v0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    goto/16 :goto_5

    .line 554
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->roamingDownloadRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$2800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a

    .line 555
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    move-object/from16 v0, v18

    iget v11, v0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    goto/16 :goto_5

    .line 565
    .restart local v4    # "a":I
    .restart local v10    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v14    # "name":Ljava/lang/String;
    :cond_1e
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 567
    :cond_1f
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_21

    .line 568
    and-int/lit8 v18, v11, 0x2

    if-eqz v18, :cond_20

    const/16 v18, 0x1

    :goto_9
    aput-boolean v18, v12, v4

    .line 569
    const-string/jumbo v18, "AttachAudio"

    const v19, 0x7f0700b8

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_8

    .line 568
    :cond_20
    const/16 v18, 0x0

    goto :goto_9

    .line 570
    :cond_21
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v4, v0, :cond_23

    .line 571
    and-int/lit8 v18, v11, 0x4

    if-eqz v18, :cond_22

    const/16 v18, 0x1

    :goto_a
    aput-boolean v18, v12, v4

    .line 572
    const-string/jumbo v18, "AttachVideo"

    const v19, 0x7f0700c1

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_8

    .line 571
    :cond_22
    const/16 v18, 0x0

    goto :goto_a

    .line 573
    :cond_23
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v4, v0, :cond_25

    .line 574
    and-int/lit8 v18, v11, 0x8

    if-eqz v18, :cond_24

    const/16 v18, 0x1

    :goto_b
    aput-boolean v18, v12, v4

    .line 575
    const-string/jumbo v18, "AttachDocument"

    const v19, 0x7f0700bb

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_8

    .line 574
    :cond_24
    const/16 v18, 0x0

    goto :goto_b

    .line 576
    :cond_25
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v4, v0, :cond_27

    .line 577
    and-int/lit8 v18, v11, 0x10

    if-eqz v18, :cond_26

    const/16 v18, 0x1

    :goto_c
    aput-boolean v18, v12, v4

    .line 578
    const-string/jumbo v18, "AttachMusic"

    const v19, 0x7f0700be

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_8

    .line 577
    :cond_26
    const/16 v18, 0x0

    goto :goto_c

    .line 579
    :cond_27
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v4, v0, :cond_1b

    .line 580
    and-int/lit8 v18, v11, 0x20

    if-eqz v18, :cond_28

    const/16 v18, 0x1

    :goto_d
    aput-boolean v18, v12, v4

    .line 581
    const-string/jumbo v18, "AttachGif"

    const v19, 0x7f0700bc

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_8

    .line 580
    :cond_28
    const/16 v18, 0x0

    goto :goto_d

    .line 598
    .end local v14    # "name":Ljava/lang/String;
    :cond_29
    new-instance v7, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 599
    .local v7, "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    const v18, 0x7f0201ab

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundResource(I)V

    .line 600
    const-string/jumbo v18, "Save"

    const v19, 0x7f07042e

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 601
    const v18, -0xc57331

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 602
    new-instance v18, Lorg/telegram/ui/SettingsActivity$4$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p3

    invoke-direct {v0, v1, v12, v2}, Lorg/telegram/ui/SettingsActivity$4$6;-><init>(Lorg/telegram/ui/SettingsActivity$4;[ZI)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    const/16 v18, -0x1

    const/16 v19, 0x30

    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    invoke-virtual {v6, v10}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 650
    .end local v4    # "a":I
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .end local v7    # "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    .end local v10    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v11    # "mask":I
    .end local v12    # "maskValues":[Z
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->usernameRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$3100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_2b

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/ui/ChangeUsernameActivity;-><init>()V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 652
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->numberRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$3200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_2c

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/ChangePhoneHelpActivity;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/ui/ChangePhoneHelpActivity;-><init>()V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 654
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->stickersRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$3300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_2d

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/StickersActivity;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/ui/StickersActivity;-><init>()V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 656
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->cacheRow:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/SettingsActivity;->access$3400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v18

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0
.end method
