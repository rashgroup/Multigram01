.class Lorg/telegram/ui/DialogsActivity$6$2;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$6;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$6;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic val$isFavorite:Z

.field final synthetic val$isHide:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$6;ZZLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$isFavorite:Z

    iput-boolean p3, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$isHide:Z

    iput-object p4, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v3, 0x7f07039f

    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 649
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 650
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07009a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 651
    if-nez p2, :cond_2

    .line 652
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v5, v5, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v10

    long-to-int v5, v10

    move v8, v6

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZZ)V

    .line 716
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    if-eq p2, v7, :cond_1

    if-eq p2, v12, :cond_1

    .line 717
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 718
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 720
    :cond_1
    return-void

    .line 653
    :cond_2
    if-ne p2, v7, :cond_4

    .line 654
    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$isFavorite:Z

    if-eqz v1, :cond_3

    .line 655
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 656
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fav_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 657
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 658
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 660
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 661
    .restart local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fav_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 662
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 664
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-ne p2, v12, :cond_7

    .line 665
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->val$chatPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 666
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/Apogram/SetPasswordActivity;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Apogram/SetPasswordActivity;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 668
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-boolean v1, v1, Lorg/telegram/ui/DialogsActivity$6;->val$chatUnlocked:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$isHide:Z

    if-eqz v1, :cond_6

    .line 669
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 670
    .restart local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hide_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 671
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 672
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 673
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-boolean v1, v1, Lorg/telegram/ui/DialogsActivity$6;->val$chatUnlocked:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$isHide:Z

    if-nez v1, :cond_0

    .line 674
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 675
    .restart local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hide_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 676
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 677
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 680
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_7
    const/4 v1, 0x3

    if-ne p2, v1, :cond_9

    .line 681
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_8

    .line 682
    const-string/jumbo v1, "AreYouSureClearHistorySuper"

    const v2, 0x7f0700a2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 686
    :goto_1
    const-string/jumbo v1, "OK"

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$6$2$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivity$6$2$1;-><init>(Lorg/telegram/ui/DialogsActivity$6$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 684
    :cond_8
    const-string/jumbo v1, "AreYouSureClearHistoryChannel"

    const v2, 0x7f0700a1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 693
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_b

    .line 694
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_a

    .line 695
    const-string/jumbo v1, "MegaLeaveAlert"

    const v2, 0x7f0702e5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 706
    :goto_2
    const-string/jumbo v1, "OK"

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$6$2$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivity$6$2$2;-><init>(Lorg/telegram/ui/DialogsActivity$6$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 697
    :cond_a
    const-string/jumbo v1, "MegaDeleteAlert"

    const v2, 0x7f0702e3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 700
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_d

    .line 701
    :cond_c
    const-string/jumbo v1, "ChannelLeaveAlert"

    const v2, 0x7f070120

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 703
    :cond_d
    const-string/jumbo v1, "ChannelDeleteAlert"

    const v2, 0x7f070115

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method
