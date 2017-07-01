.class Lorg/telegram/ui/LanguageSelectActivity$5;
.super Ljava/lang/Object;
.source "LanguageSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LanguageSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LanguageSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LanguageSelectActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$5;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
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
    .line 181
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 182
    .local v2, "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$5;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->searching:Z
    invoke-static {v3}, Lorg/telegram/ui/LanguageSelectActivity;->access$000(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$5;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->searchWas:Z
    invoke-static {v3}, Lorg/telegram/ui/LanguageSelectActivity;->access$100(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    if-ltz p3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$5;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v3, v3, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p3, v3, :cond_0

    .line 184
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$5;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v3, v3, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    check-cast v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 191
    .restart local v2    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$5;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/LanguageSelectActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_3

    .line 192
    :cond_1
    const/4 v3, 0x0

    .line 216
    :goto_1
    return v3

    .line 187
    :cond_2
    if-ltz p3, :cond_0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p3, v3, :cond_0

    .line 188
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    check-cast v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .restart local v2    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    goto :goto_0

    .line 194
    :cond_3
    move-object v1, v2

    .line 195
    .local v1, "finalLocaleInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$5;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/LanguageSelectActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 196
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "DeleteLocalization"

    const v4, 0x7f0701ae

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 197
    const-string/jumbo v3, "AppName"

    const v4, 0x7f07009a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 198
    const-string/jumbo v3, "Delete"

    const v4, 0x7f0701a0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/LanguageSelectActivity$5$1;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/LanguageSelectActivity$5$1;-><init>(Lorg/telegram/ui/LanguageSelectActivity$5;Lorg/telegram/messenger/LocaleController$LocaleInfo;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 215
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$5;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/LanguageSelectActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 216
    const/4 v3, 0x1

    goto :goto_1
.end method
