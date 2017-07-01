.class Lorg/telegram/ui/Components/WebFrameLayout$4;
.super Ljava/lang/Object;
.source "WebFrameLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/WebFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/WebFrameLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WebFrameLayout;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lorg/telegram/ui/Components/WebFrameLayout$4;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 281
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string/jumbo v3, "label"

    iget-object v4, p0, Lorg/telegram/ui/Components/WebFrameLayout$4;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->openUrl:Ljava/lang/String;
    invoke-static {v4}, Lorg/telegram/ui/Components/WebFrameLayout;->access$500(Lorg/telegram/ui/Components/WebFrameLayout;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 282
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/WebFrameLayout$4;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/WebFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "LinkCopied"

    const v5, 0x7f0702c6

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 287
    iget-object v3, p0, Lorg/telegram/ui/Components/WebFrameLayout$4;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->dialog:Lorg/telegram/ui/ActionBar/BottomSheet;
    invoke-static {v3}, Lorg/telegram/ui/Components/WebFrameLayout;->access$100(Lorg/telegram/ui/Components/WebFrameLayout;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 288
    iget-object v3, p0, Lorg/telegram/ui/Components/WebFrameLayout$4;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->dialog:Lorg/telegram/ui/ActionBar/BottomSheet;
    invoke-static {v3}, Lorg/telegram/ui/Components/WebFrameLayout;->access$100(Lorg/telegram/ui/Components/WebFrameLayout;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 290
    :cond_0
    return-void

    .line 283
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
