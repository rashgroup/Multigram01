.class Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "ConvertGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ConvertGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ConvertGroupActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ConvertGroupActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    iput-object p1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    .line 136
    iput-object p2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 137
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/ConvertGroupActivity;->access$200(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 161
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 198
    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertRow:I
    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$000(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$300(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$400(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 201
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 172
    .local v1, "type":I
    if-nez v1, :cond_2

    .line 173
    if-nez p2, :cond_0

    .line 174
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 175
    .restart local p2    # "view":Landroid/view/View;
    const/4 v2, -0x1

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    move-object v0, p2

    .line 177
    check-cast v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 178
    .local v0, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertRow:I
    invoke-static {v2}, Lorg/telegram/ui/ConvertGroupActivity;->access$000(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 179
    const-string/jumbo v2, "ConvertGroup"

    const v3, 0x7f07017d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    .line 193
    .end local v0    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_1
    :goto_0
    return-object p2

    .line 181
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 182
    if-nez p2, :cond_3

    .line 183
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 185
    .restart local p2    # "view":Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertInfoRow:I
    invoke-static {v2}, Lorg/telegram/ui/ConvertGroupActivity;->access$300(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v2

    if-ne p1, v2, :cond_4

    move-object v2, p2

    .line 186
    check-cast v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v3, "ConvertGroupInfo2"

    const v4, 0x7f070181

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const v2, 0x7f020126

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 188
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertDetailRow:I
    invoke-static {v2}, Lorg/telegram/ui/ConvertGroupActivity;->access$400(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v2

    if-ne p1, v2, :cond_1

    move-object v2, p2

    .line 189
    check-cast v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v3, "ConvertGroupInfo3"

    const v4, 0x7f070182

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const v2, 0x7f020127

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertRow:I
    invoke-static {v0}, Lorg/telegram/ui/ConvertGroupActivity;->access$000(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
