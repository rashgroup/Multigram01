.class Lorg/telegram/ui/PasscodeActivity$6;
.super Ljava/lang/Object;
.source "PasscodeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PasscodeActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 311
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I
    invoke-static {v7}, Lorg/telegram/ui/PasscodeActivity;->access$800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v7

    if-ne p3, v7, :cond_1

    .line 312
    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    new-instance v8, Lorg/telegram/ui/PasscodeActivity;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lorg/telegram/ui/PasscodeActivity;-><init>(I)V

    invoke-virtual {v7, v8}, Lorg/telegram/ui/PasscodeActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 396
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 313
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeRow:I
    invoke-static {v7}, Lorg/telegram/ui/PasscodeActivity;->access$900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v7

    if-ne p3, v7, :cond_6

    move-object v2, p2

    .line 314
    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 315
    .local v2, "cell":Lorg/telegram/ui/Cells/TextCheckCell;
    sget-object v7, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    .line 316
    const-string/jumbo v7, ""

    sput-object v7, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 317
    const/4 v7, 0x0

    sput-boolean v7, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 318
    const/4 v7, 0x0

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 319
    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->listView:Landroid/widget/ListView;
    invoke-static {v7}, Lorg/telegram/ui/PasscodeActivity;->access$1000(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    .line 320
    .local v4, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 321
    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->listView:Landroid/widget/ListView;
    invoke-static {v7}, Lorg/telegram/ui/PasscodeActivity;->access$1000(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 322
    .local v3, "child":Landroid/view/View;
    instance-of v7, v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v7, :cond_3

    move-object v6, v3

    .line 323
    check-cast v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 324
    .local v6, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    const v7, -0x39393a

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 328
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_2
    sget-object v7, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 329
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 320
    .restart local v3    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 328
    .end local v3    # "child":Landroid/view/View;
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 331
    .end local v0    # "a":I
    .end local v4    # "count":I
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    new-instance v8, Lorg/telegram/ui/PasscodeActivity;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lorg/telegram/ui/PasscodeActivity;-><init>(I)V

    invoke-virtual {v7, v8}, Lorg/telegram/ui/PasscodeActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 333
    .end local v2    # "cell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_6
    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I
    invoke-static {v7}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v7

    if-ne p3, v7, :cond_c

    .line 334
    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 337
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 338
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v7, "AutoLock"

    const v8, 0x7f0700c6

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 339
    new-instance v5, Lorg/telegram/ui/Components/NumberPicker;

    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 340
    .local v5, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 341
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 342
    sget v7, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    if-nez v7, :cond_8

    .line 343
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 353
    :cond_7
    :goto_3
    new-instance v7, Lorg/telegram/ui/PasscodeActivity$6$1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/PasscodeActivity$6$1;-><init>(Lorg/telegram/ui/PasscodeActivity$6;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/NumberPicker;->setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V

    .line 370
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 371
    const-string/jumbo v7, "Done"

    const v8, 0x7f0701c2

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/PasscodeActivity$6$2;

    invoke-direct {v8, p0, v5}, Lorg/telegram/ui/PasscodeActivity$6$2;-><init>(Lorg/telegram/ui/PasscodeActivity$6;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 390
    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/PasscodeActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 344
    :cond_8
    sget v7, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_9

    .line 345
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_3

    .line 346
    :cond_9
    sget v7, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v8, 0x12c

    if-ne v7, v8, :cond_a

    .line 347
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_3

    .line 348
    :cond_a
    sget v7, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v8, 0xe10

    if-ne v7, v8, :cond_b

    .line 349
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_3

    .line 350
    :cond_b
    sget v7, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v8, 0x4650

    if-ne v7, v8, :cond_7

    .line 351
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_3

    .line 391
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_c
    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I
    invoke-static {v7}, Lorg/telegram/ui/PasscodeActivity;->access$1200(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v7

    if-ne p3, v7, :cond_0

    .line 392
    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    if-nez v7, :cond_d

    const/4 v7, 0x1

    :goto_4
    sput-boolean v7, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    .line 393
    const/4 v7, 0x0

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 394
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    invoke-virtual {p2, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 392
    .restart local p2    # "view":Landroid/view/View;
    :cond_d
    const/4 v7, 0x0

    goto :goto_4
.end method
