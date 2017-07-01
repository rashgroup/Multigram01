.class Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    .prologue
    .line 2305
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "boundService"    # Landroid/os/IBinder;

    .prologue
    .line 2307
    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p2}, Lcom/farsitel/bazaar/IUpdateCheckService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/farsitel/bazaar/IUpdateCheckService;

    move-result-object v10

    iput-object v10, v9, Lorg/telegram/ui/LaunchActivity;->service:Lcom/farsitel/bazaar/IUpdateCheckService;

    .line 2310
    :try_start_0
    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v9, v9, Lorg/telegram/ui/LaunchActivity;->service:Lcom/farsitel/bazaar/IUpdateCheckService;

    const-string/jumbo v10, "com.tooskagroup.apogram"

    invoke-interface {v9, v10}, Lcom/farsitel/bazaar/IUpdateCheckService;->getVersionCode(Ljava/lang/String;)J

    move-result-wide v4

    .line 2311
    .local v4, "vCode":J
    const-wide/16 v10, -0x1

    cmp-long v9, v4, v10

    if-eqz v9, :cond_0

    .line 2312
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2313
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v9, "AppName"

    const v10, 0x7f07009a

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2314
    const-string/jumbo v9, "BuyWarning"

    const v10, 0x7f070599

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2315
    const-string/jumbo v9, "BUY"

    const v10, 0x7f070598

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection$1;

    invoke-direct {v10, p0}, Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection$1;-><init>(Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2324
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 2325
    .local v6, "visibleDialog":Landroid/app/Dialog;
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 2326
    const v9, 0x102000b

    invoke-virtual {v6, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2327
    .local v3, "textView":Landroid/widget/TextView;
    const v9, 0x1020019

    invoke-virtual {v6, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2328
    .local v1, "button1":Landroid/widget/Button;
    const-string/jumbo v9, "fonts/rmedium.ttf"

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2329
    const-string/jumbo v9, "fonts/rmedium.ttf"

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2331
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 2332
    .local v7, "window":Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 2333
    .local v8, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/4 v9, -0x1

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2334
    const/4 v9, -0x1

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2335
    const/16 v9, 0x10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2336
    const/16 v9, 0x64

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2337
    invoke-virtual {v7, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2342
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "button1":Landroid/widget/Button;
    .end local v3    # "textView":Landroid/widget/TextView;
    .end local v4    # "vCode":J
    .end local v6    # "visibleDialog":Landroid/app/Dialog;
    .end local v7    # "window":Landroid/view/Window;
    .end local v8    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    const-string/jumbo v9, "UpdateCheck"

    const-string/jumbo v10, "onServiceConnected(): Connected"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    return-void

    .line 2339
    :catch_0
    move-exception v2

    .line 2340
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2346
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/LaunchActivity;->service:Lcom/farsitel/bazaar/IUpdateCheckService;

    .line 2347
    const-string/jumbo v0, "UpdateCheck"

    const-string/jumbo v1, "onServiceDisconnected(): Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    return-void
.end method
