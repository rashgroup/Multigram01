.class Lorg/telegram/ui/Components/WebFrameLayout$5;
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
    .line 302
    iput-object p1, p0, Lorg/telegram/ui/Components/WebFrameLayout$5;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 305
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$5;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout$5;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->openUrl:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/ui/Components/WebFrameLayout;->access$500(Lorg/telegram/ui/Components/WebFrameLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$5;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->dialog:Lorg/telegram/ui/ActionBar/BottomSheet;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$100(Lorg/telegram/ui/Components/WebFrameLayout;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$5;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->dialog:Lorg/telegram/ui/ActionBar/BottomSheet;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$100(Lorg/telegram/ui/Components/WebFrameLayout;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 309
    :cond_0
    return-void
.end method
