.class Lorg/telegram/ui/DialogsActivity$13$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$13;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$13;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$13$1;->this$1:Lorg/telegram/ui/DialogsActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 956
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 957
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 958
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p2, :cond_1

    .line 959
    const-string/jumbo v2, "op_type"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 960
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 961
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13$1;->this$1:Lorg/telegram/ui/DialogsActivity$13;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/Apogram/BatchDialogsActivity;

    invoke-direct {v3}, Lorg/telegram/ui/Apogram/BatchDialogsActivity;-><init>()V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    if-ne p2, v5, :cond_2

    .line 963
    const-string/jumbo v2, "op_type"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 964
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 965
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13$1;->this$1:Lorg/telegram/ui/DialogsActivity$13;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/Apogram/BatchDialogsActivity;

    invoke-direct {v3}, Lorg/telegram/ui/Apogram/BatchDialogsActivity;-><init>()V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 966
    :cond_2
    if-ne p2, v6, :cond_3

    .line 967
    const-string/jumbo v2, "op_type"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 968
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 969
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13$1;->this$1:Lorg/telegram/ui/DialogsActivity$13;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/Apogram/BatchDialogsActivity;

    invoke-direct {v3}, Lorg/telegram/ui/Apogram/BatchDialogsActivity;-><init>()V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 970
    :cond_3
    if-ne p2, v7, :cond_0

    .line 971
    const-string/jumbo v2, "op_type"

    const/4 v3, 0x4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 972
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 973
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13$1;->this$1:Lorg/telegram/ui/DialogsActivity$13;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/Apogram/BatchDialogsActivity;

    invoke-direct {v3}, Lorg/telegram/ui/Apogram/BatchDialogsActivity;-><init>()V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0
.end method
