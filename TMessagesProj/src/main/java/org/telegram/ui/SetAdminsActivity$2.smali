.class Lorg/telegram/ui/SetAdminsActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "SetAdminsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SetAdminsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SetAdminsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SetAdminsActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->searching:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/SetAdminsActivity;->access$002(Lorg/telegram/ui/SetAdminsActivity;Z)Z

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->searchWas:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/SetAdminsActivity;->access$302(Lorg/telegram/ui/SetAdminsActivity;Z)Z

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listAdapter:Lorg/telegram/ui/SetAdminsActivity$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$400(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$ListAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listAdapter:Lorg/telegram/ui/SetAdminsActivity$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$400(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->fragmentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Landroid/view/View;

    move-result-object v0

    const v1, -0xf0f10

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$600(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$600(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->search(Ljava/lang/String;)V

    .line 127
    :cond_1
    return-void
.end method

.method public onSearchExpand()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->searching:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/SetAdminsActivity;->access$002(Lorg/telegram/ui/SetAdminsActivity;Z)Z

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 3
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    const/4 v2, 0x1

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->searchWas:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/SetAdminsActivity;->access$302(Lorg/telegram/ui/SetAdminsActivity;Z)Z

    .line 134
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$600(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/SetAdminsActivity;->access$600(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 135
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/SetAdminsActivity;->access$600(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->fragmentView:Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$700(Lorg/telegram/ui/SetAdminsActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v2}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 139
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 140
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v2}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 143
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$600(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$600(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->search(Ljava/lang/String;)V

    .line 146
    :cond_2
    return-void
.end method
