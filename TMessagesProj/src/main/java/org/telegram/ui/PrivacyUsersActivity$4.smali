.class Lorg/telegram/ui/PrivacyUsersActivity$4;
.super Ljava/lang/Object;
.source "PrivacyUsersActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacyUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyUsersActivity;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity$4;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 178
    if-ltz p3, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$4;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    # getter for: Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$4;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/PrivacyUsersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v5

    .line 181
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PrivacyUsersActivity$4;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$4;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    # getter for: Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # setter for: Lorg/telegram/ui/PrivacyUsersActivity;->selectedUserId:I
    invoke-static {v3, v2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$502(Lorg/telegram/ui/PrivacyUsersActivity;I)I

    .line 183
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$4;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/PrivacyUsersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-array v1, v5, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string/jumbo v3, "Delete"

    const v4, 0x7f0701a0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 185
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v2, Lorg/telegram/ui/PrivacyUsersActivity$4$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PrivacyUsersActivity$4$1;-><init>(Lorg/telegram/ui/PrivacyUsersActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$4;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PrivacyUsersActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method
