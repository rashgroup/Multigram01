.class Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabOnClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;

.field final synthetic val$tabInPos:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$SlidingTabView;ILandroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 2607
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->this$1:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$tabInPos:I

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p4, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 18
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2610
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->this$1:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2611
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "AppName"

    const v6, 0x7f07009a

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2612
    packed-switch p2, :pswitch_data_0

    .line 2670
    :cond_0
    :goto_0
    return-void

    .line 2614
    :pswitch_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$tabInPos:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_1

    .line 2615
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->this$1:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v6, "TabAllDisable"

    const v7, 0x7f0705bd

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    .line 2616
    .local v15, "toast":Landroid/widget/Toast;
    invoke-virtual {v15}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 2617
    .local v16, "toastLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 2618
    .local v17, "toastTV":Landroid/widget/TextView;
    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2619
    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2621
    .end local v15    # "toast":Landroid/widget/Toast;
    .end local v16    # "toastLayout":Landroid/widget/LinearLayout;
    .end local v17    # "toastTV":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$tabInPos:I

    packed-switch v3, :pswitch_data_1

    .line 2644
    :goto_1
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "default_tab"

    const/4 v7, 0x6

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2645
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "tab_count"

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "tab_count"

    const/16 v9, 0x8

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2646
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2648
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->this$1:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->this$1:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    iget-object v6, v6, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 2649
    .local v14, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v14, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2650
    const v3, 0x8000

    invoke-virtual {v14, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2651
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->this$1:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2623
    .end local v14    # "intent":Landroid/content/Intent;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "tab_bot"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 2626
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "tab_channel"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 2629
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "tab_supergroup"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 2632
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "tab_group"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 2635
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "tab_contact"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 2638
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "tab_favorite"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 2641
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "tab_unread"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 2655
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "default_tab"

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->this$1:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    # getter for: Lorg/telegram/ui/DialogsActivity$SlidingTabView;->selectedTab:I
    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->access$4600(Lorg/telegram/ui/DialogsActivity$SlidingTabView;)I

    move-result v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2656
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 2659
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;->this$1:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->getDialogsArray()Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v12

    .line 2661
    .local v12, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_0

    .line 2662
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 2663
    .local v11, "dialog1":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget v3, v11, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-lez v3, :cond_2

    .line 2664
    iget-wide v4, v11, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 2665
    .local v4, "sDialog":J
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    long-to-int v6, v4

    long-to-int v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZZ)V

    .line 2661
    .end local v4    # "sDialog":J
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2612
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 2621
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method
