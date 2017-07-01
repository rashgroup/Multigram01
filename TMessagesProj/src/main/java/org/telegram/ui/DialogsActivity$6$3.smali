.class Lorg/telegram/ui/DialogsActivity$6$3;
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

.field final synthetic val$isBot:Z

.field final synthetic val$isChat:Z

.field final synthetic val$isFavorite:Z

.field final synthetic val$isHide:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$6;ZZZZ)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$6$3;->val$isFavorite:Z

    iput-boolean p3, p0, Lorg/telegram/ui/DialogsActivity$6$3;->val$isHide:Z

    iput-boolean p4, p0, Lorg/telegram/ui/DialogsActivity$6$3;->val$isChat:Z

    iput-boolean p5, p0, Lorg/telegram/ui/DialogsActivity$6$3;->val$isBot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 739
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 740
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07009a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 741
    if-nez p2, :cond_2

    .line 742
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v5, v5, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v10

    long-to-int v5, v10

    move v8, v6

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZZ)V

    .line 779
    :cond_0
    :goto_0
    const-string/jumbo v1, "OK"

    const v2, 0x7f07039f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$6$3$1;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/DialogsActivity$6$3$1;-><init>(Lorg/telegram/ui/DialogsActivity$6$3;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 805
    if-eqz p2, :cond_1

    if-eq p2, v7, :cond_1

    if-eq p2, v12, :cond_1

    .line 806
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 807
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 809
    :cond_1
    return-void

    .line 743
    :cond_2
    if-ne p2, v7, :cond_4

    .line 744
    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->val$isFavorite:Z

    if-eqz v1, :cond_3

    .line 745
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 746
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fav_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

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

    .line 747
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 748
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 750
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 751
    .restart local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fav_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

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

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 752
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 754
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-ne p2, v12, :cond_7

    .line 755
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->val$chatPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 756
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/Apogram/SetPasswordActivity;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Apogram/SetPasswordActivity;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 758
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-boolean v1, v1, Lorg/telegram/ui/DialogsActivity$6;->val$chatUnlocked:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->val$isHide:Z

    if-eqz v1, :cond_6

    .line 759
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 760
    .restart local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hide_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

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

    .line 761
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 762
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 763
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-boolean v1, v1, Lorg/telegram/ui/DialogsActivity$6;->val$chatUnlocked:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->val$isHide:Z

    if-nez v1, :cond_0

    .line 764
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 765
    .restart local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hide_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

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

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 766
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 767
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 770
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_7
    const/4 v1, 0x3

    if-ne p2, v1, :cond_8

    .line 771
    const-string/jumbo v1, "AreYouSureClearHistory"

    const v2, 0x7f0700a0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 772
    :cond_8
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 773
    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$6$3;->val$isChat:Z

    if-eqz v1, :cond_9

    .line 774
    const-string/jumbo v1, "AreYouSureDeleteAndExit"

    const v2, 0x7f0700a3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 776
    :cond_9
    const-string/jumbo v1, "AreYouSureDeleteThisChat"

    const v2, 0x7f0700a8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0
.end method
