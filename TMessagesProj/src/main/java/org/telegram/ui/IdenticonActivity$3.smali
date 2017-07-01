.class Lorg/telegram/ui/IdenticonActivity$3;
.super Ljava/lang/Object;
.source "IdenticonActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IdenticonActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IdenticonActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IdenticonActivity;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lorg/telegram/ui/IdenticonActivity$3;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 173
    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity$3;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/ui/IdenticonActivity;->access$100(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 188
    :goto_0
    return v7

    .line 176
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity$3;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/ui/IdenticonActivity;->access$200(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 177
    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity$3;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/ui/IdenticonActivity;->access$300(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 178
    .local v0, "layout":Landroid/widget/LinearLayout;
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 179
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 181
    .local v2, "rotation":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    if-ne v2, v7, :cond_2

    .line 182
    :cond_1
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 187
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity$3;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/ui/IdenticonActivity;->access$700(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/IdenticonActivity$3;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;
    invoke-static {v4}, Lorg/telegram/ui/IdenticonActivity;->access$400(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/IdenticonActivity$3;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;
    invoke-static {v5}, Lorg/telegram/ui/IdenticonActivity;->access$500(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/IdenticonActivity$3;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;
    invoke-static {v6}, Lorg/telegram/ui/IdenticonActivity;->access$600(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v3, v4, v8, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1
.end method
