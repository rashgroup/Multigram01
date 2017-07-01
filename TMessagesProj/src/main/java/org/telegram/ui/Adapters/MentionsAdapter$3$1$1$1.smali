.class Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1$1;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;

.field final synthetic val$foundContextBotFinal:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1$1;->this$3:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1$1;->val$foundContextBotFinal:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 314
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1$1;->val$foundContextBotFinal:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_0

    .line 315
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "Notifications"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 316
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inlinegeo_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1$1;->val$foundContextBotFinal:Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 317
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1$1;->this$3:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # invokes: Lorg/telegram/ui/Adapters/MentionsAdapter;->checkLocationPermissionsOrStart()V
    invoke-static {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1100(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    .line 319
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
