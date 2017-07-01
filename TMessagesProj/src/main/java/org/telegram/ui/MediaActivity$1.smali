.class Lorg/telegram/ui/MediaActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 20
    .param p1, "id"    # I

    .prologue
    .line 254
    const/4 v12, -0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_3

    .line 255
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$500(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 256
    const/4 v1, 0x1

    .local v1, "a":I
    :goto_0
    if-ltz v1, :cond_0

    .line 257
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v12

    aget-object v12, v12, v1

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 256
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 259
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v13, 0x0

    # setter for: Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I
    invoke-static {v12, v13}, Lorg/telegram/ui/MediaActivity;->access$702(Lorg/telegram/ui/MediaActivity;I)I

    .line 260
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 261
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/Components/SectionsListView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/SectionsListView;->invalidateViews()V

    .line 497
    .end local v1    # "a":I
    :cond_1
    :goto_1
    return-void

    .line 263
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/MediaActivity;->finishFragment()V

    goto :goto_1

    .line 265
    :cond_3
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_4

    .line 266
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v12

    if-eqz v12, :cond_1

    .line 269
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v13, 0x0

    # setter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v12, v13}, Lorg/telegram/ui/MediaActivity;->access$1002(Lorg/telegram/ui/MediaActivity;I)I

    .line 270
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)V

    goto :goto_1

    .line 271
    :cond_4
    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_5

    .line 272
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    .line 275
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v13, 0x1

    # setter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v12, v13}, Lorg/telegram/ui/MediaActivity;->access$1002(Lorg/telegram/ui/MediaActivity;I)I

    .line 276
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)V

    goto :goto_1

    .line 277
    :cond_5
    const/4 v12, 0x5

    move/from16 v0, p1

    if-ne v0, v12, :cond_6

    .line 278
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_1

    .line 281
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v13, 0x3

    # setter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v12, v13}, Lorg/telegram/ui/MediaActivity;->access$1002(Lorg/telegram/ui/MediaActivity;I)I

    .line 282
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)V

    goto :goto_1

    .line 283
    :cond_6
    const/4 v12, 0x6

    move/from16 v0, p1

    if-ne v0, v12, :cond_7

    .line 284
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v12

    const/4 v13, 0x4

    if-eq v12, v13, :cond_1

    .line 287
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v13, 0x4

    # setter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v12, v13}, Lorg/telegram/ui/MediaActivity;->access$1002(Lorg/telegram/ui/MediaActivity;I)I

    .line 288
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)V

    goto/16 :goto_1

    .line 289
    :cond_7
    const/4 v12, 0x4

    move/from16 v0, p1

    if-ne v0, v12, :cond_8

    .line 290
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 293
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v3, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 294
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v12, "AreYouSureDeleteMessages"

    const v13, 0x7f0700a6

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "items"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v18

    add-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 295
    const-string/jumbo v12, "AppName"

    const v13, 0x7f07009a

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 296
    const-string/jumbo v12, "OK"

    const v13, 0x7f07039f

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/MediaActivity$1$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/ui/MediaActivity$1$1;-><init>(Lorg/telegram/ui/MediaActivity$1;)V

    invoke-virtual {v3, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 330
    const-string/jumbo v12, "Cancel"

    const v13, 0x7f0700f2

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 332
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_8
    const/16 v12, 0x64

    move/from16 v0, p1

    if-ne v0, v12, :cond_d

    .line 333
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v13, "mainconfig"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 334
    .local v11, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 335
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v12, "forward_type"

    const/4 v13, 0x1

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 336
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    const-string/jumbo v12, "multi_forward"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 339
    .local v10, "multiF":Z
    if-nez v10, :cond_9

    .line 340
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 341
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v12, "onlySelect"

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 342
    const-string/jumbo v12, "dialogsType"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 343
    new-instance v6, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v6, v2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 344
    .local v6, "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v12, Lorg/telegram/ui/MediaActivity$1$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/telegram/ui/MediaActivity$1$2;-><init>(Lorg/telegram/ui/MediaActivity$1;)V

    invoke-virtual {v6, v12}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v12, v6}, Lorg/telegram/ui/MediaActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1

    .line 390
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v6    # "fragment":Lorg/telegram/ui/DialogsActivity;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 393
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v5, "fmessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v1, 0x1

    .restart local v1    # "a":I
    :goto_2
    if-ltz v1, :cond_c

    .line 395
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v12

    aget-object v12, v12, v1

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 396
    .local v9, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 397
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 398
    .local v8, "idm":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_a

    .line 399
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v12

    aget-object v12, v12, v1

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 402
    .end local v8    # "idm":Ljava/lang/Integer;
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v12

    aget-object v12, v12, v1

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 394
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 404
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v13, 0x0

    # setter for: Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I
    invoke-static {v12, v13}, Lorg/telegram/ui/MediaActivity;->access$702(Lorg/telegram/ui/MediaActivity;I)I

    .line 405
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$1500(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 407
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    new-instance v13, Lorg/telegram/ui/Components/ShareAlert;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v14}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v13, v14, v5, v15, v0}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v12, v13}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 414
    .end local v1    # "a":I
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "fmessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v10    # "multiF":Z
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    :cond_d
    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_1

    .line 415
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v13, "mainconfig"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 416
    .restart local v11    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 417
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v12, "forward_type"

    const/4 v13, 0x2

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 418
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 420
    const-string/jumbo v12, "multi_forward"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 421
    .restart local v10    # "multiF":Z
    if-nez v10, :cond_e

    .line 422
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 423
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string/jumbo v12, "onlySelect"

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 424
    const-string/jumbo v12, "dialogsType"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    new-instance v6, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v6, v2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 426
    .restart local v6    # "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v12, Lorg/telegram/ui/MediaActivity$1$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/telegram/ui/MediaActivity$1$3;-><init>(Lorg/telegram/ui/MediaActivity$1;)V

    invoke-virtual {v6, v12}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v12, v6}, Lorg/telegram/ui/MediaActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1

    .line 472
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v6    # "fragment":Lorg/telegram/ui/DialogsActivity;
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 475
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .restart local v5    # "fmessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v1, 0x1

    .restart local v1    # "a":I
    :goto_4
    if-ltz v1, :cond_11

    .line 477
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v12

    aget-object v12, v12, v1

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 478
    .restart local v9    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 479
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_f
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 480
    .restart local v8    # "idm":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_f

    .line 481
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v12

    aget-object v12, v12, v1

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 484
    .end local v8    # "idm":Ljava/lang/Integer;
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v12

    aget-object v12, v12, v1

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 476
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 486
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v13, 0x0

    # setter for: Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I
    invoke-static {v12, v13}, Lorg/telegram/ui/MediaActivity;->access$702(Lorg/telegram/ui/MediaActivity;I)I

    .line 487
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v12}, Lorg/telegram/ui/MediaActivity;->access$1700(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 489
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    new-instance v13, Lorg/telegram/ui/Components/ShareAlert;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v14}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v13, v14, v5, v15, v0}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v12, v13}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1
.end method
