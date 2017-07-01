.class Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;)V
    .locals 0

    .prologue
    .line 2315
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection$1;->this$1:Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2318
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2319
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "bazaar://details?id=com.tooskagroup.apogram"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2320
    const-string/jumbo v1, "com.farsitel.bazaar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2321
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection$1;->this$1:Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 2322
    return-void
.end method
