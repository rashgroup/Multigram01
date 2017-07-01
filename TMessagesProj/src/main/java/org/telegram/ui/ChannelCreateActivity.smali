.class public Lorg/telegram/ui/ChannelCreateActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChannelCreateActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private allSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/ChipSpan;",
            ">;"
        }
    .end annotation
.end field

.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

.field private beforeChangeIndex:I

.field private canCreatePublic:Z

.field private changeString:Ljava/lang/CharSequence;

.field private chatId:I

.field private checkReqId:I

.field private checkRunnable:Ljava/lang/Runnable;

.field private checkTextView:Landroid/widget/TextView;

.field private createAfterUpload:Z

.field private currentStep:I

.field private descriptionTextView:Landroid/widget/EditText;

.field private doneButton:Landroid/view/View;

.field private donePressed:Z

.field private emptyTextView:Landroid/widget/TextView;

.field private headerCell:Lorg/telegram/ui/Cells/HeaderCell;

.field private ignoreChange:Z

.field private invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

.field private isPrivate:Z

.field private lastCheckName:Ljava/lang/String;

.field private lastNameAvailable:Z

.field private linkContainer:Landroid/widget/LinearLayout;

.field private listView:Lorg/telegram/ui/Components/LetterSectionsListView;

.field private listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

.field private loadingInvite:Z

.field private nameTextView:Landroid/widget/EditText;

.field private nameToSet:Ljava/lang/String;

.field private privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private publicContainer:Landroid/widget/LinearLayout;

.field private radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

.field private radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

.field private searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

.field private searchWas:Z

.field private searching:Z

.field private selectedContacts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/ui/Components/ChipSpan;",
            ">;"
        }
    .end annotation
.end field

.field private typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 88
    iput-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 95
    iput-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameToSet:Ljava/lang/String;

    .line 105
    iput v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkReqId:I

    .line 106
    iput-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastCheckName:Ljava/lang/String;

    .line 107
    iput-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 108
    iput-boolean v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastNameAvailable:Z

    .line 109
    iput-boolean v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    .line 119
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->selectedContacts:Ljava/util/HashMap;

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->allSpans:Ljava/util/ArrayList;

    .line 127
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    .line 137
    const-string/jumbo v3, "step"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    .line 138
    iget v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    if-nez v3, :cond_0

    .line 139
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 140
    new-instance v1, Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarUpdater;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    .line 142
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;-><init>()V

    .line 143
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;
    const-string/jumbo v1, "1"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->username:Ljava/lang/String;

    .line 144
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 145
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelCreateActivity$1;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 163
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;
    :goto_0
    return-void

    .line 157
    :cond_0
    iget v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    if-ne v3, v1, :cond_1

    .line 158
    const-string/jumbo v3, "canCreatePublic"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    .line 159
    iget-boolean v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    if-nez v3, :cond_2

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    .line 161
    :cond_1
    const-string/jumbo v1, "chat_id"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->chatId:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 159
    goto :goto_1
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelCreateActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelCreateActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->chatId:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastCheckName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->selectedContacts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object p1
.end method

.method static synthetic access$1502(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$InputFile;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/AvatarDrawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ChannelCreateActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->updatePrivatePublic()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->donePressed:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelCreateActivity;->checkUserName(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->donePressed:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object v0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ChannelCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->ignoreChange:Z

    return v0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->ignoreChange:Z

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ChannelCreateActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->beforeChangeIndex:I

    return v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/ChannelCreateActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->beforeChangeIndex:I

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->changeString:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->changeString:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ChannelCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->searching:Z

    return v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->searching:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ChannelCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->allSpans:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->emptyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/ChipSpan;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelCreateActivity;->createAndPutChipForUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/ChipSpan;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingInvite:Z

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Cells/TextBlockCell;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    return-object v0
.end method

.method static synthetic access$3702(Lorg/telegram/ui/ChannelCreateActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkReqId:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/AvatarUpdater;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->createAfterUpload:Z

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->createAfterUpload:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/ChannelCreateActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastNameAvailable:Z

    return v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastNameAvailable:Z

    return p1
.end method

.method private checkUserName(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alert"    # Z

    .prologue
    const/16 v8, 0x30

    const v7, 0x7f0702c9

    const/4 v2, 0x1

    const v6, -0x30cfd0

    const/4 v3, 0x0

    .line 997
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 998
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1002
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 1101
    :cond_0
    :goto_1
    return v2

    .line 1000
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1005
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_3

    .line 1006
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1007
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 1008
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastCheckName:Ljava/lang/String;

    .line 1009
    iget v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkReqId:I

    if-eqz v4, :cond_3

    .line 1010
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkReqId:I

    invoke-virtual {v4, v5, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1013
    :cond_3
    iput-boolean v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastNameAvailable:Z

    .line 1014
    if-eqz p1, :cond_d

    .line 1015
    const-string/jumbo v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1016
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalid"

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move v2, v3

    .line 1018
    goto :goto_1

    .line 1020
    :cond_5
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_d

    .line 1021
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1022
    .local v1, "ch":C
    if-nez v0, :cond_7

    if-lt v1, v8, :cond_7

    const/16 v4, 0x39

    if-gt v1, v4, :cond_7

    .line 1023
    if-eqz p2, :cond_6

    .line 1024
    const-string/jumbo v2, "LinkInvalidStartNumber"

    const v4, 0x7f0702cd

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/ChannelCreateActivity;->showErrorAlert(Ljava/lang/String;)V

    :goto_3
    move v2, v3

    .line 1029
    goto :goto_1

    .line 1026
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalidStartNumber"

    const v5, 0x7f0702cd

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 1031
    :cond_7
    if-lt v1, v8, :cond_8

    const/16 v4, 0x39

    if-le v1, v4, :cond_c

    :cond_8
    const/16 v4, 0x61

    if-lt v1, v4, :cond_9

    const/16 v4, 0x7a

    if-le v1, v4, :cond_c

    :cond_9
    const/16 v4, 0x41

    if-lt v1, v4, :cond_a

    const/16 v4, 0x5a

    if-le v1, v4, :cond_c

    :cond_a
    const/16 v4, 0x5f

    if-eq v1, v4, :cond_c

    .line 1032
    if-eqz p2, :cond_b

    .line 1033
    const-string/jumbo v2, "LinkInvalid"

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/ChannelCreateActivity;->showErrorAlert(Ljava/lang/String;)V

    :goto_4
    move v2, v3

    .line 1038
    goto/16 :goto_1

    .line 1035
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalid"

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 1020
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1042
    .end local v0    # "a":I
    .end local v1    # "ch":C
    :cond_d
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_10

    .line 1043
    :cond_e
    if-eqz p2, :cond_f

    .line 1044
    const-string/jumbo v2, "LinkInvalidShort"

    const v4, 0x7f0702cb

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/ChannelCreateActivity;->showErrorAlert(Ljava/lang/String;)V

    :goto_5
    move v2, v3

    .line 1049
    goto/16 :goto_1

    .line 1046
    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalidShort"

    const v5, 0x7f0702cb

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 1051
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_12

    .line 1052
    if-eqz p2, :cond_11

    .line 1053
    const-string/jumbo v2, "LinkInvalidLong"

    const v4, 0x7f0702ca

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/ChannelCreateActivity;->showErrorAlert(Ljava/lang/String;)V

    :goto_6
    move v2, v3

    .line 1058
    goto/16 :goto_1

    .line 1055
    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalidLong"

    const v5, 0x7f0702ca

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 1061
    :cond_12
    if-nez p2, :cond_0

    .line 1062
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkChecking"

    const v5, 0x7f0702c5

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const v4, -0x92928e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1064
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastCheckName:Ljava/lang/String;

    .line 1065
    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$18;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ChannelCreateActivity$18;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 1099
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_1
.end method

.method private createAndPutChipForUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/ChipSpan;
    .locals 24
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 1143
    :try_start_0
    sget-object v20, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v21, "layout_inflater"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 1144
    .local v11, "lf":Landroid/view/LayoutInflater;
    const v20, 0x7f030029

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 1145
    .local v18, "textView":Landroid/view/View;
    const v20, 0x7f0e00c3

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1146
    .local v17, "text":Landroid/widget/TextView;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v12

    .line 1147
    .local v12, "name":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_0

    .line 1148
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "+"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1150
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 1153
    .local v15, "spec":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v15}, Landroid/view/View;->measure(II)V

    .line 1154
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1155
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v20

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v21

    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v20 .. v22}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1156
    .local v5, "b":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1157
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getScrollX()I

    move-result v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getScrollY()I

    move-result v21

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1158
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1159
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1160
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1161
    .local v7, "cacheBmp":Landroid/graphics/Bitmap;
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 1162
    .local v19, "viewBmp":Landroid/graphics/Bitmap;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->destroyDrawingCache()V

    .line 1164
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1165
    .local v6, "bmpDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 1167
    new-instance v16, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v20, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1168
    .local v16, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v14, Lorg/telegram/ui/Components/ChipSpan;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v14, v6, v0}, Lorg/telegram/ui/Components/ChipSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 1169
    .local v14, "span":Lorg/telegram/ui/Components/ChipSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity;->allSpans:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity;->selectedContacts:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity;->allSpans:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/text/style/ImageSpan;

    .line 1172
    .local v13, "sp":Landroid/text/style/ImageSpan;
    const-string/jumbo v20, "<<"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1173
    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x2

    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v21

    const/16 v22, 0x21

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1178
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v6    # "bmpDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v7    # "cacheBmp":Landroid/graphics/Bitmap;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "lf":Landroid/view/LayoutInflater;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "sp":Landroid/text/style/ImageSpan;
    .end local v14    # "span":Lorg/telegram/ui/Components/ChipSpan;
    .end local v15    # "spec":I
    .end local v16    # "ssb":Landroid/text/SpannableStringBuilder;
    .end local v17    # "text":Landroid/widget/TextView;
    .end local v18    # "textView":Landroid/view/View;
    .end local v19    # "viewBmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 1179
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v20, "tmessages"

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1181
    const/4 v14, 0x0

    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v14

    .line 1175
    .restart local v5    # "b":Landroid/graphics/Bitmap;
    .restart local v6    # "bmpDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v7    # "cacheBmp":Landroid/graphics/Bitmap;
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "lf":Landroid/view/LayoutInflater;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v14    # "span":Lorg/telegram/ui/Components/ChipSpan;
    .restart local v15    # "spec":I
    .restart local v16    # "ssb":Landroid/text/SpannableStringBuilder;
    .restart local v17    # "text":Landroid/widget/TextView;
    .restart local v18    # "textView":Landroid/view/View;
    .restart local v19    # "viewBmp":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private generateLink()V
    .locals 3

    .prologue
    .line 851
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingInvite:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    if-eqz v1, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingInvite:Z

    .line 855
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;-><init>()V

    .line 856
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;
    iget v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->chatId:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 857
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity$16;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelCreateActivity$16;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method private showErrorAlert(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1105
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1126
    :goto_0
    return-void

    .line 1108
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1109
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07009a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1110
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1121
    const-string/jumbo v1, "ErrorOccurred"

    const v2, 0x7f0701e8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1124
    :goto_2
    const-string/jumbo v1, "OK"

    const v2, 0x7f07039f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1125
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChannelCreateActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1110
    :sswitch_0
    const-string/jumbo v2, "USERNAME_INVALID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "USERNAME_OCCUPIED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "USERNAMES_UNAVAILABLE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 1112
    :pswitch_0
    const-string/jumbo v1, "LinkInvalid"

    const v2, 0x7f0702c9

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 1115
    :pswitch_1
    const-string/jumbo v1, "LinkInUse"

    const v2, 0x7f0702c7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 1118
    :pswitch_2
    const-string/jumbo v1, "FeatureUnavailable"

    const v2, 0x7f0701f5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 1110
    :sswitch_data_0
    .sparse-switch
        -0x87506d2 -> :sswitch_2
        0x1137676e -> :sswitch_0
        0x1fc79be7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updatePrivatePublic()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 875
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 876
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    iget-boolean v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 877
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ChannelPrivateLinkHelp"

    const v4, 0x7f070143

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 878
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ChannelInviteLinkTitle"

    const v4, 0x7f07011a

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    .line 879
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->publicContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 880
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_4
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/TextBlockCell;->setVisibility(I)V

    .line 881
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_5
    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 882
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    :goto_6
    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Cells/TextBlockCell;->setText(Ljava/lang/String;Z)V

    .line 883
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 884
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_7

    :goto_7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 886
    return-void

    :cond_0
    move v0, v2

    .line 875
    goto :goto_0

    .line 877
    :cond_1
    const-string/jumbo v0, "ChannelUsernameHelp"

    const v4, 0x7f070158

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 878
    :cond_2
    const-string/jumbo v0, "ChannelLinkTitle"

    const v4, 0x7f070122

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move v0, v2

    .line 879
    goto :goto_3

    :cond_4
    move v0, v3

    .line 880
    goto :goto_4

    .line 881
    :cond_5
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_5

    .line 882
    :cond_6
    const-string/jumbo v0, "Loading"

    const v4, 0x7f0702d1

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    move v2, v3

    .line 884
    goto :goto_7
.end method

.method private updateVisibleRows(I)V
    .locals 4
    .param p1, "mask"    # I

    .prologue
    .line 1129
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    if-nez v3, :cond_1

    .line 1139
    :cond_0
    return-void

    .line 1132
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildCount()I

    move-result v2

    .line 1133
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1134
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1135
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_2

    .line 1136
    check-cast v1, Lorg/telegram/ui/Cells/UserCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    .line 1133
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->searching:Z

    .line 207
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->searchWas:Z

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f020131

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelCreateActivity$2;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v17

    .line 316
    .local v17, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v2, 0x1

    const v3, 0x7f020152

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->doneButton:Landroid/view/View;

    .line 319
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 320
    new-instance v2, Landroid/widget/ScrollView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/ScrollView;

    .line 322
    .local v18, "scrollView":Landroid/widget/ScrollView;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 323
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 324
    .local v15, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    .end local v18    # "scrollView":Landroid/widget/ScrollView;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 337
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    if-nez v2, :cond_c

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "NewChannel"

    const v4, 0x7f070324

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 340
    new-instance v11, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 341
    .local v11, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setDrawPhoto(Z)V

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v20, v0

    const/16 v2, 0x40

    const/high16 v3, 0x42800000    # 64.0f

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    :goto_1
    or-int/lit8 v4, v4, 0x30

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :goto_2
    const/high16 v6, 0x41400000    # 12.0f

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_5

    const/high16 v7, 0x41800000    # 16.0f

    :goto_3
    const/high16 v8, 0x41400000    # 12.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelCreateActivity$4;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSuperTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v3, "EnterChannelName"

    const v4, 0x7f0701e1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameToSet:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameToSet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 389
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameToSet:Ljava/lang/String;

    .line 391
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    :goto_4
    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const v3, -0x686869

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/16 v3, 0x4001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 397
    const/4 v2, 0x1

    new-array v14, v2, [Landroid/text/InputFilter;

    .line 398
    .local v14, "inputFilters":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v14, v2

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v2, v14}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const v3, -0xdededf

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x10

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_7

    const/high16 v5, 0x41800000    # 16.0f

    :goto_5
    const/4 v6, 0x0

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_8

    const/high16 v7, 0x42c00000    # 96.0f

    :goto_6
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelCreateActivity$5;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 422
    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSuperTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    const v3, -0x686869

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    const v3, -0xdededf

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x5

    :goto_7
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    const v3, 0x2c001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 432
    const/4 v2, 0x1

    new-array v14, v2, [Landroid/text/InputFilter;

    .line 433
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x78

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v14, v2

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    invoke-virtual {v2, v14}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    const-string/jumbo v3, "DescriptionPlaceholder"

    const v4, 0x7f0701b8

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v5, 0x41900000    # 18.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelCreateActivity$6;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelCreateActivity$7;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 465
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 467
    .local v13, "helpTextView":Landroid/widget/TextView;
    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSuperTypeFace()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 468
    const/4 v2, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v13, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 469
    const v2, -0x92928e

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x5

    :goto_8
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 471
    const-string/jumbo v2, "DescriptionInfo"

    const v3, 0x7f0701b5

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_b

    const/4 v4, 0x5

    :goto_9
    const/16 v5, 0x18

    const/16 v6, 0xa

    const/16 v7, 0x18

    const/16 v8, 0x14

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 847
    .end local v11    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v13    # "helpTextView":Landroid/widget/TextView;
    .end local v14    # "inputFilters":[Landroid/text/InputFilter;
    :cond_1
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    return-object v2

    .line 326
    .end local v15    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_2
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelCreateActivity$3;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    check-cast v15, Landroid/widget/LinearLayout;

    .restart local v15    # "linearLayout":Landroid/widget/LinearLayout;
    goto/16 :goto_0

    .line 348
    .restart local v11    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_3
    const/4 v4, 0x3

    goto/16 :goto_1

    :cond_4
    const/high16 v5, 0x41800000    # 16.0f

    goto/16 :goto_2

    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 392
    :cond_6
    const/4 v2, 0x3

    goto/16 :goto_4

    .line 403
    .restart local v14    # "inputFilters":[Landroid/text/InputFilter;
    :cond_7
    const/high16 v5, 0x42c00000    # 96.0f

    goto/16 :goto_5

    :cond_8
    const/high16 v7, 0x41800000    # 16.0f

    goto/16 :goto_6

    .line 429
    :cond_9
    const/4 v2, 0x3

    goto/16 :goto_7

    .line 470
    .restart local v13    # "helpTextView":Landroid/widget/TextView;
    :cond_a
    const/4 v2, 0x3

    goto :goto_8

    .line 472
    :cond_b
    const/4 v4, 0x3

    goto :goto_9

    .line 473
    .end local v11    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v13    # "helpTextView":Landroid/widget/TextView;
    .end local v14    # "inputFilters":[Landroid/text/InputFilter;
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "ChannelSettings"

    const v4, 0x7f07014a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    const v3, -0xf0f10

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 477
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 478
    .local v16, "linearLayout2":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 479
    const/4 v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 480
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    new-instance v2, Lorg/telegram/ui/Cells/RadioButtonCell;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const v3, 0x7f0201ab

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setBackgroundResource(I)V

    .line 484
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const-string/jumbo v2, "ChannelPublic"

    const v4, 0x7f070144

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "ChannelPublicInfo"

    const v5, 0x7f070146

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-nez v2, :cond_d

    const/4 v2, 0x1

    :goto_b
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v2, v6}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelCreateActivity$8;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    new-instance v2, Lorg/telegram/ui/Cells/RadioButtonCell;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const v3, 0x7f0201ab

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setBackgroundResource(I)V

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const-string/jumbo v3, "ChannelPrivate"

    const v4, 0x7f070141

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ChannelPrivateInfo"

    const v5, 0x7f070142

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelCreateActivity$9;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    new-instance v19, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 521
    .local v19, "sectionCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 531
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->publicContainer:Landroid/widget/LinearLayout;

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->publicContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 533
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity;->publicContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/4 v2, -0x1

    const/16 v3, 0x24

    const/high16 v4, 0x41880000    # 17.0f

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v6, 0x41880000    # 17.0f

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    new-instance v9, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 536
    .local v9, "editText":Landroid/widget/EditText;
    const-string/jumbo v2, "telegram.me/"

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 537
    const/4 v2, 0x1

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v9, v2, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 538
    const v2, -0x686869

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 539
    const v2, -0xdededf

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 540
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 541
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setLines(I)V

    .line 542
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 543
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 545
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 546
    const v2, 0x28000

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 547
    const/4 v2, 0x6

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->publicContainer:Landroid/widget/LinearLayout;

    const/4 v3, -0x2

    const/16 v4, 0x24

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const v3, -0x686869

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const v3, -0xdededf

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLines(I)V

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const v3, 0x28020

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v3, "ChannelUsernamePlaceholder"

    const v4, 0x7f070159

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->publicContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v4, -0x1

    const/16 v5, 0x24

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelCreateActivity$10;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 581
    new-instance v2, Lorg/telegram/ui/Cells/TextBlockCell;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/TextBlockCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    const v3, 0x7f0201ab

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextBlockCell;->setBackgroundResource(I)V

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelCreateActivity$11;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextBlockCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x5

    :goto_c
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_f

    const/4 v4, 0x5

    :goto_d
    const/16 v5, 0x11

    const/4 v6, 0x3

    const/16 v7, 0x11

    const/4 v8, 0x7

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    new-instance v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const v3, 0x7f020127

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundResource(I)V

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChannelCreateActivity;->updatePrivatePublic()V

    goto/16 :goto_a

    .line 484
    .end local v9    # "editText":Landroid/widget/EditText;
    .end local v19    # "sectionCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 603
    .restart local v9    # "editText":Landroid/widget/EditText;
    .restart local v19    # "sectionCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    :cond_e
    const/4 v2, 0x3

    goto :goto_c

    .line 605
    :cond_f
    const/4 v4, 0x3

    goto :goto_d

    .line 612
    .end local v9    # "editText":Landroid/widget/EditText;
    .end local v16    # "linearLayout2":Landroid/widget/LinearLayout;
    .end local v19    # "sectionCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "ChannelAddMembers"

    const v4, 0x7f070101

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Members"

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelCreateActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 616
    new-instance v2, Lorg/telegram/ui/Adapters/SearchAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Adapters/SearchAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;ZZZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/SearchAdapter;->setCheckedMap(Ljava/util/HashMap;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/SearchAdapter;->setUseUserCell(Z)V

    .line 619
    new-instance v2, Lorg/telegram/ui/Adapters/ContactsAdapter;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Adapters/ContactsAdapter;-><init>(Landroid/content/Context;IZLjava/util/HashMap;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setCheckedMap(Ljava/util/HashMap;)V

    .line 622
    new-instance v11, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 623
    .restart local v11    # "frameLayout":Landroid/widget/FrameLayout;
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const v3, -0x686869

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const v3, -0xdededf

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const v3, 0xa00b0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/high16 v3, 0x42580000    # 54.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLines(I)V

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVerticalScrollBarEnabled(Z)V

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHorizontalScrollBarEnabled(Z)V

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v3, "AddMutual"

    const v4, 0x7f070074

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const v3, 0x10000006

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 640
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_11

    const/4 v2, 0x5

    :goto_e
    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelCreateActivity$12;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 722
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 723
    .local v10, "emptyTextLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x4

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 724
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 725
    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChannelCreateActivity$13;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 733
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->emptyTextView:Landroid/widget/TextView;

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->emptyTextView:Landroid/widget/TextView;

    const v3, -0x7f7f80

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->emptyTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "NoContacts"

    const v4, 0x7f070334

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->emptyTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    new-instance v12, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 741
    .local v12, "frameLayout2":Landroid/widget/FrameLayout;
    const/4 v2, -0x1

    const/4 v3, -0x1

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    new-instance v2, Lorg/telegram/ui/Components/LetterSectionsListView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/LetterSectionsListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/LetterSectionsListView;->setEmptyView(Landroid/view/View;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollBarEnabled(Z)V

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setDividerHeight(I)V

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollEnabled(Z)V

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setScrollBarStyle(I)V

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollAlwaysVisible(Z)V

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    :goto_f
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollbarPosition(I)V

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelCreateActivity$14;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelCreateActivity$15;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto/16 :goto_a

    .line 640
    .end local v10    # "emptyTextLayout":Landroid/widget/LinearLayout;
    .end local v12    # "frameLayout2":Landroid/widget/FrameLayout;
    :cond_11
    const/4 v2, 0x3

    goto/16 :goto_e

    .line 752
    .restart local v10    # "emptyTextLayout":Landroid/widget/LinearLayout;
    .restart local v12    # "frameLayout2":Landroid/widget/FrameLayout;
    :cond_12
    const/4 v2, 0x2

    goto :goto_f
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 958
    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v4, :cond_2

    .line 959
    aget-object v4, p2, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 960
    .local v3, "mask":I
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_0

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_0

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_1

    .line 961
    :cond_0
    invoke-direct {p0, v3}, Lorg/telegram/ui/ChannelCreateActivity;->updateVisibleRows(I)V

    .line 994
    .end local v3    # "mask":I
    :cond_1
    :goto_0
    return-void

    .line 963
    :cond_2
    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    if-ne p1, v4, :cond_4

    .line 964
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_3

    .line 966
    :try_start_0
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    :cond_3
    :goto_1
    iput-boolean v5, p0, Lorg/telegram/ui/ChannelCreateActivity;->donePressed:Z

    goto :goto_0

    .line 967
    :catch_0
    move-exception v2

    .line 968
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 972
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    if-ne p1, v4, :cond_7

    .line 973
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_5

    .line 975
    :try_start_1
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 980
    :cond_5
    :goto_2
    aget-object v4, p2, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 981
    .local v1, "chat_id":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 982
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "step"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 983
    const-string/jumbo v4, "chat_id"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 984
    const-string/jumbo v4, "canCreatePublic"

    iget-boolean v5, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 985
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-eqz v4, :cond_6

    .line 986
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelCreateActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v4, v1, v5}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V

    .line 988
    :cond_6
    new-instance v4, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4, v6}, Lorg/telegram/ui/ChannelCreateActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0

    .line 976
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "chat_id":I
    :catch_1
    move-exception v2

    .line 977
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 989
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    sget v4, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    if-ne p1, v4, :cond_1

    .line 990
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz v4, :cond_1

    .line 991
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/ContactsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public didUploadedPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 1
    .param p1, "file"    # Lorg/telegram/tgnet/TLRPC$InputFile;
    .param p2, "small"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .param p3, "big"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    .line 890
    new-instance v0, Lorg/telegram/ui/ChannelCreateActivity$17;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/ChannelCreateActivity$17;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 909
    return-void
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 913
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarUpdater;->onActivityResult(IILandroid/content/Intent;)V

    .line 914
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 169
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 170
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 171
    iget v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 172
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 176
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v0, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    .line 180
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0

    .line 173
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 174
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->generateLink()V

    goto :goto_0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 186
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 187
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 188
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 189
    iget v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 190
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->clear()V

    .line 195
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 196
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 201
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 202
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 950
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 951
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 952
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 954
    :cond_0
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 933
    iget v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    if-nez v1, :cond_1

    .line 934
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v1, :cond_0

    .line 935
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    const-string/jumbo v2, "path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    .line 937
    :cond_0
    const-string/jumbo v1, "nameTextView"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 939
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 940
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 946
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 942
    .restart local v0    # "text":Ljava/lang/String;
    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameToSet:Ljava/lang/String;

    goto :goto_0
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 918
    iget v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    if-nez v1, :cond_1

    .line 919
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 920
    const-string/jumbo v1, "path"

    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 923
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    const-string/jumbo v1, "nameTextView"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method
