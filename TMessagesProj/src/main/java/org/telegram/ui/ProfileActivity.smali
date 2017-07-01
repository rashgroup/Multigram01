.class public Lorg/telegram/ui/ProfileActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ProfileActivity$ListAdapter;,
        Lorg/telegram/ui/ProfileActivity$TopView;
    }
.end annotation


# static fields
.field private static final add_contact:I = 0x1

.field private static final add_shortcut:I = 0xe

.field private static final block_contact:I = 0x2

.field private static final convert_to_supergroup:I = 0xd

.field private static final delete_chat_return:I = 0x70

.field private static final delete_contact:I = 0x5

.field private static final edit_channel:I = 0xc

.field private static final edit_contact:I = 0x4

.field private static final edit_name:I = 0x8

.field private static final invite_to_group:I = 0x9

.field private static final leave_group:I = 0x7

.field private static final set_admins:I = 0xb

.field private static final share:I = 0xa

.field private static final share_contact:I = 0x3

.field private static final special_contact:I = 0x72


# instance fields
.field private addMemberRow:I

.field private allowProfileAnimation:Z

.field private animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private animationProgress:F

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

.field private blockedUsersRow:I

.field private botInfo:Lorg/telegram/tgnet/TLRPC$BotInfo;

.field private channelInfoRow:I

.field private channelNameRow:I

.field private chat_id:I

.field private convertHelpRow:I

.field private convertRow:I

.field private creatingChat:Z

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private dialog_id:J

.field private emptyRow:I

.field private emptyRowChat:I

.field private emptyRowChat2:I

.field private extraHeight:I

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private initialAnimationExtraHeight:I

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private leaveChannelRow:I

.field private listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadMoreMembersRow:I

.field private loadingUsers:Z

.field private managementRow:I

.field private membersEndRow:I

.field private membersRow:I

.field private membersSectionRow:I

.field private mergeDialogId:J

.field private nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private onlineCount:I

.field private onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private openAnimationInProgress:Z

.field private participantsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private phoneRow:I

.field private playProfileAnimation:Z

.field private rowCount:I

.field private sectionRow:I

.field private selectedUser:I

.field private settingsKeyRow:I

.field private settingsNotificationsRow:I

.field private settingsTimerRow:I

.field private sharedMediaRow:I

.field private sortedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startSecretChatRow:I

.field private topView:Lorg/telegram/ui/ProfileActivity$TopView;

.field private totalMediaCount:I

.field private totalMediaCountMerge:I

.field private userBlocked:Z

.field private userInfoRow:I

.field private userSectionRow:I

.field private user_id:I

.field private usernameRow:I

.field private usersEndReached:Z

.field private writeButton:Landroid/widget/ImageView;

.field private writeButtonAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 224
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 110
    new-array v0, v2, [Lorg/telegram/ui/ActionBar/SimpleTextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 111
    new-array v0, v2, [Lorg/telegram/ui/ActionBar/SimpleTextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->allowProfileAnimation:Z

    .line 138
    iput v1, p0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    .line 145
    iput v1, p0, Lorg/telegram/ui/ProfileActivity;->totalMediaCount:I

    .line 146
    iput v1, p0, Lorg/telegram/ui/ProfileActivity;->totalMediaCountMerge:I

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    .line 225
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$BotInfo;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->botInfo:Lorg/telegram/tgnet/TLRPC$BotInfo;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->checkListViewScroll()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ProfileActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    return-wide v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->settingsKeyRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->settingsTimerRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->startSecretChatRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/ProfileActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity;->creatingChat:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->membersEndRow:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->addMemberRow:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->openAddMember()V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->channelNameRow:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->leaveChannelRow:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->membersRow:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->blockedUsersRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->managementRow:I

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->convertRow:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ProfileActivity;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity;->processOnClickOrPress(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->selectedUser:I

    return v0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/ProfileActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 104
    iput p1, p0, Lorg/telegram/ui/ProfileActivity;->selectedUser:I

    return p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ProfileActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    return v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/AvatarUpdater;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->loadMoreMembersRow:I

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ProfileActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity;->getChannelParticipants(Z)V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I

    return v0
.end method

.method static synthetic access$4502(Lorg/telegram/ui/ProfileActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity;->usersEndReached:Z

    return p1
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V

    return-void
.end method

.method static synthetic access$4702(Lorg/telegram/ui/ProfileActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity;->loadingUsers:Z

    return p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    return-void
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    return v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ProfileActivity;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/ProfileActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->needLayout()V

    return-void
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$5502(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p1
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    return v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat:I

    return v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    return v0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->usernameRow:I

    return v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->totalMediaCount:I

    return v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->totalMediaCountMerge:I

    return v0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->userInfoRow:I

    return v0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->emptyRow:I

    return v0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->sectionRow:I

    return v0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->userSectionRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ProfileActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    return v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->membersSectionRow:I

    return v0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->convertHelpRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->leaveChatPressed()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/ProfileActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity;->kickUser(I)V

    return-void
.end method

.method private checkListViewScroll()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1208
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    iget-boolean v5, p0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    if-eqz v5, :cond_1

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1213
    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ProfileActivity$ListAdapter$Holder;

    .line 1214
    .local v1, "holder":Lorg/telegram/ui/ProfileActivity$ListAdapter$Holder;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1215
    .local v3, "top":I
    const/4 v2, 0x0

    .line 1216
    .local v2, "newOffset":I
    if-ltz v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter$Holder;->getAdapterPosition()I

    move-result v5

    if-nez v5, :cond_2

    .line 1217
    move v2, v3

    .line 1219
    :cond_2
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    if-eq v5, v2, :cond_0

    .line 1220
    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    .line 1221
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    invoke-virtual {v5}, Lorg/telegram/ui/ProfileActivity$TopView;->invalidate()V

    .line 1222
    iget-boolean v5, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    if-eqz v5, :cond_4

    .line 1223
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->allowProfileAnimation:Z

    .line 1225
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->needLayout()V

    goto :goto_0
.end method

.method private createActionBarMenu()V
    .locals 15

    .prologue
    const v14, 0x7f0700d7

    const/4 v13, 0x2

    const v12, 0x7f02013e

    const/16 v11, 0xa

    const/4 v10, 0x0

    .line 2200
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v4

    .line 2201
    .local v4, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->clearItems()V

    .line 2202
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2204
    const/4 v3, 0x0

    .line 2205
    .local v3, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v7, :cond_d

    .line 2206
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v8, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_a

    .line 2207
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 2208
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v6, :cond_0

    .line 2291
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_0
    return-void

    .line 2211
    .restart local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    invoke-virtual {v4, v11, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    .line 2212
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v7, :cond_2

    .line 2213
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    if-nez v7, :cond_1

    .line 2214
    const/16 v7, 0x9

    const-string/jumbo v8, "BotInvite"

    const v9, 0x7f0700e1

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 2216
    :cond_1
    const-string/jumbo v7, "BotShare"

    const v8, 0x7f0700e5

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v11, v7, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 2218
    :cond_2
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    .line 2219
    const/4 v7, 0x1

    const-string/jumbo v8, "AddContact"

    const v9, 0x7f07006f

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 2220
    const/4 v7, 0x3

    const-string/jumbo v8, "ShareContact"

    const v9, 0x7f070471

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 2221
    iget-boolean v7, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    if-nez v7, :cond_5

    const-string/jumbo v7, "BlockContact"

    invoke-static {v7, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v3, v13, v7, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 2287
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 2288
    invoke-virtual {v4, v11, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    .line 2290
    :cond_4
    const/16 v7, 0xe

    const-string/jumbo v8, "AddShortcut"

    const v9, 0x7f070076

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    goto :goto_0

    .line 2221
    .restart local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    const-string/jumbo v7, "Unblock"

    const v8, 0x7f0704d2

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 2223
    :cond_6
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v7, :cond_8

    .line 2224
    iget-boolean v7, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    if-nez v7, :cond_7

    const-string/jumbo v7, "BotStop"

    const v8, 0x7f0700e9

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v3, v13, v7, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    goto :goto_2

    :cond_7
    const-string/jumbo v7, "BotRestart"

    const v8, 0x7f0700e3

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 2226
    :cond_8
    iget-boolean v7, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    if-nez v7, :cond_9

    const-string/jumbo v7, "BlockContact"

    invoke-static {v7, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v3, v13, v7, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    goto :goto_2

    :cond_9
    const-string/jumbo v7, "Unblock"

    const v8, 0x7f0704d2

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 2230
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_a
    invoke-virtual {v4, v11, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    .line 2231
    const/4 v7, 0x3

    const-string/jumbo v8, "ShareContact"

    const v9, 0x7f070471

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 2232
    iget-boolean v7, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    if-nez v7, :cond_b

    const-string/jumbo v7, "BlockContact"

    invoke-static {v7, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v3, v13, v7, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 2233
    const/4 v7, 0x4

    const-string/jumbo v8, "EditContact"

    const v9, 0x7f0701c4

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 2234
    const/4 v7, 0x5

    const-string/jumbo v8, "DeleteContact"

    const v9, 0x7f0701ab

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 2236
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "mainconfig"

    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2237
    .local v5, "preferences":Landroid/content/SharedPreferences;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "specific_c"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    .line 2238
    .local v2, "isSpecific":Z
    if-eqz v2, :cond_c

    .line 2239
    const/16 v7, 0x72

    const-string/jumbo v8, "DeleteFromSpecifics"

    const v9, 0x7f0705a0

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    goto/16 :goto_2

    .line 2232
    .end local v2    # "isSpecific":Z
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    :cond_b
    const-string/jumbo v7, "Unblock"

    const v8, 0x7f0704d2

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 2241
    .restart local v2    # "isSpecific":Z
    .restart local v5    # "preferences":Landroid/content/SharedPreferences;
    :cond_c
    const/16 v7, 0x72

    const-string/jumbo v8, "AddToSpecifics"

    const v9, 0x7f070594

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    goto/16 :goto_2

    .line 2244
    .end local v2    # "isSpecific":Z
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    :cond_d
    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v7, :cond_3

    .line 2245
    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-lez v7, :cond_1b

    .line 2246
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2247
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_10

    .line 2248
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    .line 2249
    .local v1, "isChannel":Z
    if-eqz v1, :cond_e

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v7, :cond_e

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_f

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v7, :cond_f

    :cond_e
    if-nez v1, :cond_14

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-nez v7, :cond_14

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v7, :cond_14

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v7, :cond_14

    .line 2250
    :cond_f
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v8, 0x7f02011e

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2251
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v7, v10, v8, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2257
    .end local v1    # "isChannel":Z
    :cond_10
    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 2258
    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v7, :cond_11

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_12

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v7, :cond_12

    .line 2259
    :cond_11
    invoke-virtual {v4, v11, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    .line 2260
    const/16 v7, 0xc

    const-string/jumbo v8, "ChannelEdit"

    const v9, 0x7f070118

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 2262
    :cond_12
    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v7, :cond_3

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v7, :cond_3

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v7, :cond_3

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_3

    .line 2263
    if-nez v3, :cond_13

    .line 2264
    invoke-virtual {v4, v11, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    .line 2266
    :cond_13
    const/4 v7, 0x7

    const-string/jumbo v8, "LeaveMegaMenu"

    const v9, 0x7f0702c0

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    goto/16 :goto_2

    .line 2253
    .restart local v1    # "isChannel":Z
    :cond_14
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v8, 0x7f02011c

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2254
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_6

    .line 2269
    .end local v1    # "isChannel":Z
    :cond_15
    invoke-virtual {v4, v11, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    .line 2270
    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v7, :cond_16

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-lez v7, :cond_16

    .line 2271
    const/16 v7, 0xb

    const-string/jumbo v8, "SetAdmins"

    const v9, 0x7f070464

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 2273
    :cond_16
    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v7, :cond_17

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v7, :cond_17

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-eqz v7, :cond_18

    .line 2274
    :cond_17
    const/16 v7, 0x8

    const-string/jumbo v8, "EditName"

    const v9, 0x7f0701c7

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 2276
    :cond_18
    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v7, :cond_19

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1a

    .line 2277
    :cond_19
    const/16 v7, 0xd

    const-string/jumbo v8, "ConvertGroupMenu"

    const v9, 0x7f070183

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 2279
    :cond_1a
    const/4 v7, 0x7

    const-string/jumbo v8, "DeleteAndExit"

    const v9, 0x7f0701a6

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 2280
    const/16 v7, 0x70

    const-string/jumbo v8, "LeaveWithReturn"

    const v9, 0x7f0702c1

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    goto/16 :goto_2

    .line 2283
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1b
    invoke-virtual {v4, v11, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    .line 2284
    const/16 v7, 0x8

    const-string/jumbo v8, "EditName"

    const v9, 0x7f0701c7

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    goto/16 :goto_2
.end method

.method private fetchUsersFromChannelInfo()V
    .locals 4

    .prologue
    .line 1863
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v2, :cond_0

    .line 1864
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1865
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1866
    .local v1, "chatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1869
    .end local v0    # "a":I
    .end local v1    # "chatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_0
    return-void
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 1332
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1346
    :goto_0
    return-void

    .line 1335
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ProfileActivity$21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileActivity$21;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private getChannelParticipants(Z)V
    .locals 5
    .param p1, "reload"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1123
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->loadingUsers:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v4, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->loadingUsers:Z

    .line 1127
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    const/16 v0, 0x12c

    .line 1129
    .local v0, "delay":I
    :goto_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 1130
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1131
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 1132
    if-eqz p1, :cond_3

    :goto_2
    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 1133
    const/16 v3, 0xc8

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 1134
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ProfileActivity$18;

    invoke-direct {v4, p0, v1, v0}, Lorg/telegram/ui/ProfileActivity$18;-><init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;I)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 1174
    .local v2, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .end local v0    # "delay":I
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    .end local v2    # "reqId":I
    :cond_2
    move v0, v3

    .line 1127
    goto :goto_1

    .line 1132
    .restart local v0    # "delay":I
    .restart local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    goto :goto_2
.end method

.method private kickUser(I)V
    .locals 11
    .param p1, "uid"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 1872
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "mainconfig"

    invoke-virtual {v5, v6, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1873
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1874
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "return_dlg_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    neg-int v6, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1875
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1876
    if-eqz p1, :cond_6

    .line 1877
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v5, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1878
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v5, :cond_3

    .line 1879
    const/4 v1, 0x0

    .line 1880
    .local v1, "changed":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1881
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1882
    .local v3, "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    if-ne v5, p1, :cond_4

    .line 1883
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v5, :cond_0

    .line 1884
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    .line 1886
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1887
    const/4 v1, 0x1

    .line 1891
    .end local v3    # "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v5, :cond_2

    .line 1892
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 1893
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1894
    .local v3, "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    if-ne v5, p1, :cond_5

    .line 1895
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1896
    const/4 v1, 0x1

    .line 1901
    .end local v3    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_2
    if-eqz v1, :cond_3

    .line 1902
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V

    .line 1903
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 1904
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    invoke-virtual {v5}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1918
    .end local v0    # "a":I
    .end local v1    # "changed":Z
    :cond_3
    :goto_2
    return-void

    .line 1880
    .restart local v0    # "a":I
    .restart local v1    # "changed":Z
    .local v3, "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1892
    .local v3, "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1908
    .end local v0    # "a":I
    .end local v1    # "changed":Z
    .end local v3    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1909
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1910
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    int-to-long v8, v8

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1914
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v5, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1915
    iput-boolean v10, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    .line 1916
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->finishFragment()V

    goto :goto_2

    .line 1912
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private leaveChatPressed()V
    .locals 3

    .prologue
    const v2, 0x7f0700a3

    .line 1079
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1080
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_1

    .line 1081
    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ChannelLeaveAlert"

    const v2, 0x7f070120

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1085
    :goto_1
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07009a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1086
    const-string/jumbo v1, "OK"

    const v2, 0x7f07039f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ProfileActivity$17;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileActivity$17;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1092
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1093
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1094
    return-void

    .line 1081
    :cond_0
    const-string/jumbo v1, "AreYouSureDeleteAndExit"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1083
    :cond_1
    const-string/jumbo v1, "AreYouSureDeleteAndExit"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private needLayout()V
    .locals 20

    .prologue
    .line 1231
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v12

    if-eqz v12, :cond_4

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v13

    add-int v7, v12, v13

    .line 1232
    .local v7, "newTop":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    if-nez v12, :cond_0

    .line 1233
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1234
    .local v6, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v12, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v12, v7, :cond_0

    .line 1235
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1236
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1240
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v12, :cond_e

    .line 1241
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    int-to-float v12, v12

    const/high16 v13, 0x42b00000    # 88.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    div-float v5, v12, v13

    .line 1242
    .local v5, "diff":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    if-eqz v12, :cond_2

    .line 1245
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v12

    if-eqz v12, :cond_5

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v14

    add-int/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    add-int/2addr v12, v14

    const/high16 v14, 0x41ec0000    # 29.5f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sub-int/2addr v12, v14

    int-to-float v12, v12

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1247
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    if-nez v12, :cond_2

    .line 1248
    const v12, 0x3e4ccccd    # 0.2f

    cmpl-float v12, v5, v12

    if-lez v12, :cond_6

    const/4 v9, 0x1

    .line 1249
    .local v9, "setVisible":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_7

    const/4 v4, 0x1

    .line 1250
    .local v4, "currentVisible":Z
    :goto_3
    if-eq v9, v4, :cond_2

    .line 1251
    if-eqz v9, :cond_8

    .line 1252
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1256
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz v12, :cond_1

    .line 1257
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1258
    .local v8, "old":Landroid/animation/AnimatorSet;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1259
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1261
    .end local v8    # "old":Landroid/animation/AnimatorSet;
    :cond_1
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1262
    if-eqz v9, :cond_9

    .line 1263
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v16, "scaleX"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v16, "scaleY"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v16, "alpha"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1277
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v14, 0x96

    invoke-virtual {v12, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1278
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v13, Lorg/telegram/ui/ProfileActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/ui/ProfileActivity$20;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 1291
    .end local v4    # "currentVisible":Z
    .end local v9    # "setVisible":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v12

    if-eqz v12, :cond_a

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_6
    int-to-float v12, v12

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    add-float/2addr v14, v5

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/high16 v13, 0x41a80000    # 21.0f

    sget v14, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    const/high16 v13, 0x41d80000    # 27.0f

    sget v14, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v13, v14

    mul-float/2addr v13, v5

    add-float v3, v12, v13

    .line 1292
    .local v3, "avatarY":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v13, 0x42280000    # 42.0f

    const/high16 v14, 0x41900000    # 18.0f

    mul-float/2addr v14, v5

    add-float/2addr v13, v14

    const/high16 v14, 0x42280000    # 42.0f

    div-float/2addr v13, v14

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/BackupImageView;->setScaleX(F)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v13, 0x42280000    # 42.0f

    const/high16 v14, 0x41900000    # 18.0f

    mul-float/2addr v14, v5

    add-float/2addr v13, v14

    const/high16 v14, 0x42280000    # 42.0f

    div-float/2addr v13, v14

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/BackupImageView;->setScaleY(F)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v13, 0x423c0000    # 47.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    mul-float/2addr v13, v5

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/BackupImageView;->setTranslationX(F)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v13, v14

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/BackupImageView;->setTranslationY(F)V

    .line 1296
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_7
    const/4 v12, 0x2

    if-ge v2, v12, :cond_e

    .line 1297
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    if-nez v12, :cond_b

    .line 1296
    :cond_3
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1231
    .end local v2    # "a":I
    .end local v3    # "avatarY":F
    .end local v5    # "diff":F
    .end local v7    # "newTop":I
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1245
    .restart local v5    # "diff":F
    .restart local v7    # "newTop":I
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1248
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1249
    .restart local v9    # "setVisible":Z
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1254
    .restart local v4    # "currentVisible":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1270
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v13, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v16, "scaleX"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const v19, 0x3e4ccccd    # 0.2f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v16, "scaleY"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const v19, 0x3e4ccccd    # 0.2f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v16, "alpha"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_5

    .line 1291
    .end local v4    # "currentVisible":Z
    .end local v9    # "setVisible":Z
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 1300
    .restart local v2    # "a":I
    .restart local v3    # "avatarY":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    const/high16 v13, -0x3e580000    # -21.0f

    sget v14, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v13, v14

    mul-float/2addr v13, v5

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTranslationX(F)V

    .line 1301
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-float v13, v14

    const v14, 0x3fa66666    # 1.3f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    const/high16 v14, 0x40e00000    # 7.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v5

    add-float/2addr v13, v14

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTranslationY(F)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    const/high16 v13, -0x3e580000    # -21.0f

    sget v14, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v13, v14

    mul-float/2addr v13, v5

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTranslationX(F)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-float v13, v14

    const/high16 v14, 0x41c00000    # 24.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    const/high16 v14, 0x41300000    # 11.0f

    sget v15, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v14, v5

    add-float/2addr v13, v14

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTranslationY(F)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3df5c28f    # 0.12f

    mul-float/2addr v14, v5

    add-float/2addr v13, v14

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setScaleX(F)V

    .line 1305
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3df5c28f    # 0.12f

    mul-float/2addr v14, v5

    add-float/2addr v13, v14

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setScaleY(F)V

    .line 1306
    const/4 v12, 0x1

    if-ne v2, v12, :cond_3

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    if-nez v12, :cond_3

    .line 1308
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1309
    const/high16 v12, 0x43f50000    # 490.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    .line 1313
    .local v10, "width":I
    :goto_9
    const/high16 v12, 0x42fc0000    # 126.0f

    const/high16 v13, 0x42200000    # 40.0f

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v5

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int v12, v10, v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTranslationX()F

    move-result v13

    sub-float/2addr v12, v13

    float-to-int v10, v12

    .line 1314
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getScaleX()F

    move-result v13

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getSideDrawablesSize()I

    move-result v13

    int-to-float v13, v13

    add-float v11, v12, v13

    .line 1315
    .local v11, "width2":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1316
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    int-to-float v12, v10

    cmpg-float v12, v12, v11

    if-gez v12, :cond_d

    .line 1317
    int-to-float v12, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getScaleX()F

    move-result v13

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1321
    :goto_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    invoke-virtual {v12, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1324
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTranslationX()F

    move-result v12

    const/high16 v13, 0x41000000    # 8.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    const/high16 v13, 0x42200000    # 40.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v5

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1325
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    invoke-virtual {v12, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    .line 1311
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "width":I
    .end local v11    # "width2":F
    :cond_c
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v12, Landroid/graphics/Point;->x:I

    .restart local v10    # "width":I
    goto/16 :goto_9

    .line 1319
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "width2":F
    :cond_d
    const/4 v12, -0x2

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_a

    .line 1329
    .end local v2    # "a":I
    .end local v3    # "avatarY":F
    .end local v5    # "diff":F
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "width":I
    .end local v11    # "width2":F
    :cond_e
    return-void
.end method

.method private openAddMember()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 1178
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1179
    .local v1, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "onlyUsers"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1180
    const-string/jumbo v5, "destroyAfterSelect"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1181
    const-string/jumbo v5, "returnAsResult"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1182
    const-string/jumbo v5, "needForwardCount"

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1184
    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-lez v4, :cond_1

    .line 1185
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v4, :cond_0

    .line 1186
    const-string/jumbo v4, "chat_id"

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1188
    :cond_0
    const-string/jumbo v4, "selectAlertString"

    const-string/jumbo v5, "AddToTheGroup"

    const v6, 0x7f07007d

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    :cond_1
    new-instance v2, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1191
    .local v2, "fragment":Lorg/telegram/ui/ContactsActivity;
    new-instance v4, Lorg/telegram/ui/ProfileActivity$19;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ProfileActivity$19;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ContactsActivity;->setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V

    .line 1197
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v4, :cond_4

    .line 1198
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1199
    .local v3, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1200
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1182
    .end local v0    # "a":I
    .end local v2    # "fragment":Lorg/telegram/ui/ContactsActivity;
    .end local v3    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1202
    .restart local v0    # "a":I
    .restart local v2    # "fragment":Lorg/telegram/ui/ContactsActivity;
    .restart local v3    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ContactsActivity;->setIgnoreUsers(Ljava/util/HashMap;)V

    .line 1204
    .end local v0    # "a":I
    .end local v3    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_4
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1205
    return-void
.end method

.method private processOnClickOrPress(I)Z
    .locals 8
    .param p1, "position"    # I

    .prologue
    const v7, 0x7f070184

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 996
    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->usernameRow:I

    if-ne p1, v4, :cond_2

    .line 997
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 998
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-nez v4, :cond_1

    :cond_0
    move v2, v3

    .line 1075
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_0
    return v2

    .line 1001
    .restart local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1002
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-array v4, v2, [Ljava/lang/CharSequence;

    const-string/jumbo v5, "Copy"

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    new-instance v3, Lorg/telegram/ui/ProfileActivity$14;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/ProfileActivity$14;-><init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1016
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1018
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    if-ne p1, v4, :cond_5

    .line 1019
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1020
    .restart local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v1, :cond_3

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_3
    move v2, v3

    .line 1021
    goto :goto_0

    .line 1024
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1025
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    const-string/jumbo v5, "Call"

    const v6, 0x7f0700ef

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string/jumbo v3, "Copy"

    invoke-static {v3, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    new-instance v3, Lorg/telegram/ui/ProfileActivity$15;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/ProfileActivity$15;-><init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1047
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1049
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I

    if-eq p1, v4, :cond_6

    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->userInfoRow:I

    if-ne p1, v4, :cond_7

    .line 1050
    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1051
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    new-array v4, v2, [Ljava/lang/CharSequence;

    const-string/jumbo v5, "Copy"

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    new-instance v3, Lorg/telegram/ui/ProfileActivity$16;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ProfileActivity$16;-><init>(Lorg/telegram/ui/ProfileActivity;I)V

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1072
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_7
    move v2, v3

    .line 1075
    goto/16 :goto_0
.end method

.method private updateOnlineCount()V
    .locals 8

    .prologue
    .line 1787
    const/4 v5, 0x0

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    .line 1788
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    .line 1789
    .local v1, "currentTime":I
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1790
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v5, :cond_4

    .line 1791
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 1792
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1793
    .local v3, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1794
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_2

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gt v5, v1, :cond_1

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v5, v6, :cond_2

    :cond_1
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    const/16 v6, 0x2710

    if-le v5, v6, :cond_2

    .line 1795
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    .line 1797
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1791
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1801
    .end local v3    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/ProfileActivity$25;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ProfileActivity$25;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1848
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    if-eqz v5, :cond_4

    .line 1849
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyItemRangeChanged(II)V

    .line 1852
    .end local v0    # "a":I
    :cond_4
    return-void

    .line 1844
    .restart local v0    # "a":I
    :catch_0
    move-exception v2

    .line 1845
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private updateProfileData()V
    .locals 21

    .prologue
    .line 2057
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v15, :cond_1

    .line 2197
    :cond_0
    :goto_0
    return-void

    .line 2060
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v15, :cond_12

    .line 2061
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v14

    .line 2062
    .local v14, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v9, 0x0

    .line 2063
    .local v9, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v10, 0x0

    .line 2064
    .local v10, "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v15, :cond_2

    .line 2065
    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v9, v15, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2066
    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v10, v15, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2068
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v15, v14}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 2069
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v16, "50_50"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v9, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 2071
    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    .line 2073
    .local v6, "newString":Ljava/lang/String;
    iget v15, v14, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v16, 0x514c8

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    iget v15, v14, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v16, 0xbdb28

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 2074
    :cond_3
    const-string/jumbo v15, "ServiceNotifications"

    const v16, 0x7f07045e

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 2080
    .local v7, "newString2":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_2
    const/4 v15, 0x2

    if-ge v2, v15, :cond_10

    .line 2081
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    if-nez v15, :cond_6

    .line 2080
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2075
    .end local v2    # "a":I
    .end local v7    # "newString2":Ljava/lang/String;
    :cond_4
    iget-boolean v15, v14, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v15, :cond_5

    .line 2076
    const-string/jumbo v15, "Bot"

    const v16, 0x7f0700dd

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "newString2":Ljava/lang/String;
    goto :goto_1

    .line 2078
    .end local v7    # "newString2":Ljava/lang/String;
    :cond_5
    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "newString2":Ljava/lang/String;
    goto :goto_1

    .line 2084
    .restart local v2    # "a":I
    :cond_6
    if-nez v2, :cond_b

    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v15, :cond_b

    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_b

    iget v15, v14, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v15, v15, 0x3e8

    const/16 v16, 0x309

    move/from16 v0, v16

    if-eq v15, v0, :cond_b

    iget v15, v14, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v15, v15, 0x3e8

    const/16 v16, 0x14d

    move/from16 v0, v16

    if-eq v15, v0, :cond_b

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v15

    iget-object v15, v15, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v0, v14, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_b

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v15

    iget-object v15, v15, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-nez v15, :cond_7

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/messenger/ContactsController;->isLoadingContacts()Z

    move-result v15

    if-nez v15, :cond_b

    .line 2086
    :cond_7
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "+"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v14, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2087
    .local v8, "phoneString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 2088
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2095
    .end local v8    # "phoneString":Ljava/lang/String;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 2096
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2098
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v15, :cond_c

    const v5, 0x7f020163

    .line 2099
    .local v5, "leftIcon":I
    :goto_5
    const/4 v12, 0x0

    .line 2100
    .local v12, "rightIcon":I
    if-nez v2, :cond_f

    .line 2101
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    move-wide/from16 v16, v0

    :goto_6
    invoke-virtual/range {v15 .. v17}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v15

    if-eqz v15, :cond_e

    const v12, 0x7f0201f4

    .line 2105
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(I)V

    .line 2106
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(I)V

    goto/16 :goto_3

    .line 2091
    .end local v5    # "leftIcon":I
    .end local v12    # "rightIcon":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 2092
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2098
    :cond_c
    const/4 v5, 0x0

    goto :goto_5

    .line 2101
    .restart local v5    # "leftIcon":I
    .restart local v12    # "rightIcon":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    goto :goto_6

    :cond_e
    const/4 v12, 0x0

    goto :goto_7

    .line 2102
    :cond_f
    iget-boolean v15, v14, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v15, :cond_a

    .line 2103
    const v12, 0x7f0200a8

    goto :goto_7

    .line 2109
    .end local v5    # "leftIcon":I
    .end local v12    # "rightIcon":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v16

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v15

    invoke-virtual {v15, v10}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z

    move-result v15

    if-nez v15, :cond_11

    const/4 v15, 0x1

    :goto_8
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    goto/16 :goto_0

    :cond_11
    const/4 v15, 0x0

    goto :goto_8

    .line 2110
    .end local v2    # "a":I
    .end local v6    # "newString":Ljava/lang/String;
    .end local v7    # "newString2":Ljava/lang/String;
    .end local v9    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v10    # "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v14    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_12
    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v15, :cond_0

    .line 2111
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 2112
    .local v3, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_15

    .line 2113
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2119
    :goto_9
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 2120
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v15, :cond_18

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-nez v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_participants:Z

    if-eqz v15, :cond_18

    .line 2121
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v15, :cond_16

    .line 2122
    const-string/jumbo v15, "Loading"

    const v16, 0x7f0702d1

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 2155
    .restart local v6    # "newString":Ljava/lang/String;
    :goto_a
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_b
    const/4 v15, 0x2

    if-ge v2, v15, :cond_26

    .line 2156
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    if-nez v15, :cond_1e

    .line 2155
    :cond_14
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2115
    .end local v2    # "a":I
    .end local v6    # "newString":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_9

    .line 2124
    :cond_16
    iget v15, v3, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v15, v15, 0x40

    if-eqz v15, :cond_17

    .line 2125
    const-string/jumbo v15, "ChannelPublic"

    const v16, 0x7f070144

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "newString":Ljava/lang/String;
    goto :goto_a

    .line 2127
    .end local v6    # "newString":Ljava/lang/String;
    :cond_17
    const-string/jumbo v15, "ChannelPrivate"

    const v16, 0x7f070141

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "newString":Ljava/lang/String;
    goto :goto_a

    .line 2131
    .end local v6    # "newString":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-gt v15, v0, :cond_1a

    .line 2132
    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eqz v15, :cond_19

    .line 2133
    const-string/jumbo v15, "%s, %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "Members"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string/jumbo v18, "Online"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "newString":Ljava/lang/String;
    goto/16 :goto_a

    .line 2135
    .end local v6    # "newString":Ljava/lang/String;
    :cond_19
    const-string/jumbo v15, "Members"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "newString":Ljava/lang/String;
    goto/16 :goto_a

    .line 2138
    .end local v6    # "newString":Ljava/lang/String;
    :cond_1a
    const/4 v15, 0x1

    new-array v11, v15, [I

    .line 2139
    .local v11, "result":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v15, v11}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;

    move-result-object v13

    .line 2140
    .local v13, "shortNumber":Ljava/lang/String;
    const-string/jumbo v15, "Members"

    const/16 v16, 0x0

    aget v16, v11, v16

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "%d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aget v19, v11, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 2141
    .restart local v6    # "newString":Ljava/lang/String;
    goto/16 :goto_a

    .line 2144
    .end local v6    # "newString":Ljava/lang/String;
    .end local v11    # "result":[I
    .end local v13    # "shortNumber":Ljava/lang/String;
    :cond_1b
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 2145
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v15, :cond_1c

    .line 2146
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2148
    :cond_1c
    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_1d

    .line 2149
    const-string/jumbo v15, "%s, %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "Members"

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string/jumbo v18, "Online"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "newString":Ljava/lang/String;
    goto/16 :goto_a

    .line 2151
    .end local v6    # "newString":Ljava/lang/String;
    :cond_1d
    const-string/jumbo v15, "Members"

    invoke-static {v15, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "newString":Ljava/lang/String;
    goto/16 :goto_a

    .line 2159
    .end local v4    # "count":I
    .restart local v2    # "a":I
    :cond_1e
    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    if-eqz v15, :cond_1f

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1f

    .line 2160
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2162
    :cond_1f
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2163
    if-eqz v2, :cond_21

    .line 2164
    iget-boolean v15, v3, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    if-eqz v15, :cond_20

    .line 2165
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    const v16, 0x7f0200a8

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(I)V

    .line 2172
    :goto_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v15, :cond_23

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v15, :cond_23

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-gt v15, v0, :cond_23

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    if-lez v15, :cond_23

    .line 2173
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    .line 2174
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 2167
    :cond_20
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    .line 2170
    :cond_21
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v16, v15, v2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v15

    if-eqz v15, :cond_22

    const v15, 0x7f0201f4

    :goto_e
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(I)V

    goto :goto_d

    :cond_22
    const/4 v15, 0x0

    goto :goto_e

    .line 2176
    :cond_23
    if-nez v2, :cond_25

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v15}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v15

    if-eqz v15, :cond_25

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v15, :cond_25

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eqz v15, :cond_25

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v15, :cond_24

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-eqz v15, :cond_25

    .line 2177
    :cond_24
    const/4 v15, 0x1

    new-array v11, v15, [I

    .line 2178
    .restart local v11    # "result":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v15, v11}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;

    move-result-object v13

    .line 2179
    .restart local v13    # "shortNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    const-string/jumbo v16, "Members"

    const/16 v17, 0x0

    aget v17, v11, v17

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "%d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aget v20, v11, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 2181
    .end local v11    # "result":[I
    .end local v13    # "shortNumber":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    .line 2182
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 2187
    :cond_26
    const/4 v9, 0x0

    .line 2188
    .restart local v9    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v10, 0x0

    .line 2189
    .restart local v10    # "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v15, :cond_27

    .line 2190
    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v9, v15, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2191
    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v10, v15, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2193
    :cond_27
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v15, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 2194
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v16, "50_50"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v9, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 2195
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v16

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v15

    invoke-virtual {v15, v10}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z

    move-result v15

    if-nez v15, :cond_28

    const/4 v15, 0x1

    :goto_f
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    goto/16 :goto_0

    :cond_28
    const/4 v15, 0x0

    goto :goto_f
.end method

.method private updateRowsIds()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1925
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->emptyRow:I

    .line 1926
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    .line 1927
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->userInfoRow:I

    .line 1928
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->userSectionRow:I

    .line 1929
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->sectionRow:I

    .line 1930
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    .line 1931
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I

    .line 1932
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->usernameRow:I

    .line 1933
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->settingsTimerRow:I

    .line 1934
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->settingsKeyRow:I

    .line 1935
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->startSecretChatRow:I

    .line 1936
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->membersEndRow:I

    .line 1937
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    .line 1938
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->addMemberRow:I

    .line 1939
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I

    .line 1940
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->channelNameRow:I

    .line 1941
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->convertRow:I

    .line 1942
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->convertHelpRow:I

    .line 1943
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat:I

    .line 1944
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->membersSectionRow:I

    .line 1945
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->membersRow:I

    .line 1946
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->managementRow:I

    .line 1947
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->leaveChannelRow:I

    .line 1948
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->loadMoreMembersRow:I

    .line 1949
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->blockedUsersRow:I

    .line 1951
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    .line 1952
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v2, :cond_6

    .line 1953
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1954
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->emptyRow:I

    .line 1955
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v2, :cond_1

    .line 1956
    :cond_0
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    .line 1958
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1959
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->usernameRow:I

    .line 1961
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserAbout(I)Ljava/lang/String;

    move-result-object v0

    .line 1962
    .local v0, "about":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1963
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->userSectionRow:I

    .line 1964
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->userInfoRow:I

    .line 1969
    :goto_0
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->sectionRow:I

    .line 1970
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I

    .line 1971
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    .line 1972
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v2, :cond_3

    .line 1973
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->settingsTimerRow:I

    .line 1974
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->settingsKeyRow:I

    .line 1976
    :cond_3
    if-eqz v1, :cond_4

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v2, :cond_4

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 1977
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->startSecretChatRow:I

    .line 2054
    .end local v0    # "about":Ljava/lang/String;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    :goto_1
    return-void

    .line 1966
    .restart local v0    # "about":Ljava/lang/String;
    .restart local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->userSectionRow:I

    .line 1967
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->userInfoRow:I

    goto :goto_0

    .line 1979
    .end local v0    # "about":Ljava/lang/String;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v2, :cond_4

    .line 1980
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-lez v2, :cond_1b

    .line 1981
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->emptyRow:I

    .line 1982
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 1983
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 1984
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I

    .line 1986
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 1987
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->channelNameRow:I

    .line 1989
    :cond_a
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->sectionRow:I

    .line 1991
    :cond_b
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I

    .line 1992
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    .line 1993
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1994
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_participants:Z

    if-eqz v2, :cond_d

    .line 1995
    :cond_c
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->membersRow:I

    .line 1997
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_f

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->moderator:Z

    if-eqz v2, :cond_f

    .line 1998
    :cond_e
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->managementRow:I

    .line 2000
    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v2, :cond_11

    .line 2001
    :cond_10
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->blockedUsersRow:I

    .line 2003
    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_12

    .line 2004
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->leaveChannelRow:I

    .line 2006
    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_15

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v2, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-eqz v2, :cond_15

    .line 2007
    :cond_13
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    if-ge v2, v3, :cond_15

    .line 2008
    :cond_14
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->addMemberRow:I

    .line 2011
    :cond_15
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2012
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat:I

    .line 2013
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->membersSectionRow:I

    .line 2014
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    .line 2015
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    .line 2016
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->membersEndRow:I

    .line 2017
    iget-boolean v2, p0, Lorg/telegram/ui/ProfileActivity;->usersEndReached:Z

    if-nez v2, :cond_4

    .line 2018
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->loadMoreMembersRow:I

    goto/16 :goto_1

    .line 2022
    :cond_16
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_19

    .line 2023
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;

    if-nez v2, :cond_18

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    if-ge v2, v3, :cond_18

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-nez v2, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v2, :cond_18

    .line 2026
    :cond_17
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->addMemberRow:I

    .line 2029
    :cond_18
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v2, :cond_19

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->minGroupConvertSize:I

    if-lt v2, v3, :cond_19

    .line 2030
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->convertRow:I

    .line 2033
    :cond_19
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat:I

    .line 2034
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->convertRow:I

    if-eq v2, v4, :cond_1a

    .line 2035
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->convertHelpRow:I

    .line 2039
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;

    if-nez v2, :cond_4

    .line 2040
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    .line 2041
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    .line 2042
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->membersEndRow:I

    goto/16 :goto_1

    .line 2037
    :cond_1a
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->membersSectionRow:I

    goto :goto_2

    .line 2046
    :cond_1b
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;

    if-nez v2, :cond_4

    .line 2047
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->addMemberRow:I

    .line 2048
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    .line 2049
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    .line 2050
    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->membersEndRow:I

    goto/16 :goto_1
.end method


# virtual methods
.method public cancelButtonPressed()Z
    .locals 1

    .prologue
    .line 1778
    const/4 v0, 0x1

    return v0
.end method

.method protected createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 351
    new-instance v0, Lorg/telegram/ui/ProfileActivity$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ProfileActivity$3;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    .line 357
    .local v0, "actionBar":Lorg/telegram/ui/ActionBar/ActionBar;
    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x5

    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getButtonColorForId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(I)V

    .line 358
    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 360
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 361
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 362
    return-object v0

    .line 357
    :cond_1
    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 361
    goto :goto_1
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->hasOwnBackground:Z

    .line 368
    const/high16 v0, 0x42b00000    # 88.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ProfileActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileActivity$4;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 571
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    .line 573
    new-instance v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    .line 574
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 575
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setProfile(Z)V

    .line 577
    new-instance v0, Lorg/telegram/ui/ProfileActivity$5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ProfileActivity$5;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    .line 589
    iget-object v10, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    check-cast v10, Landroid/widget/FrameLayout;

    .line 591
    .local v10, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v0, Lorg/telegram/ui/ProfileActivity$6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ProfileActivity$6;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 597
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 598
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    const/high16 v2, 0x42b00000    # 88.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 600
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 601
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 602
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 604
    new-instance v0, Lorg/telegram/ui/ProfileActivity$7;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ProfileActivity$7;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 610
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 611
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 612
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x5

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileBackColorForId(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 613
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 616
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ProfileActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileActivity$8;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 718
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ProfileActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileActivity$9;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 826
    new-instance v0, Lorg/telegram/ui/ProfileActivity$TopView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ProfileActivity$TopView;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    .line 827
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x5

    :goto_1
    invoke-static {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileBackColorForId(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ProfileActivity$TopView;->setBackgroundColor(I)V

    .line 828
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 830
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 832
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 833
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 834
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setPivotX(F)V

    .line 835
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setPivotY(F)V

    .line 836
    iget-object v12, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x2a

    const/high16 v1, 0x42280000    # 42.0f

    const/16 v2, 0x33

    const/high16 v3, 0x42800000    # 64.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v1, Lorg/telegram/ui/ProfileActivity$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileActivity$10;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 856
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_2
    const/4 v0, 0x2

    if-ge v7, v0, :cond_9

    .line 857
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    if-nez v0, :cond_4

    if-nez v7, :cond_4

    .line 856
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 612
    .end local v7    # "a":I
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    goto/16 :goto_0

    .line 827
    :cond_3
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    goto :goto_1

    .line 860
    .restart local v7    # "a":I
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v7

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v7

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 862
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v7

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 863
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v7

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 864
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v7

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 865
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v7

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawableTopPadding(I)V

    .line 866
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v7

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableTopPadding(I)V

    .line 867
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v7

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setPivotX(F)V

    .line 868
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v7

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setPivotY(F)V

    .line 869
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v0, v7

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x42ec0000    # 118.0f

    const/4 v4, 0x0

    if-nez v7, :cond_6

    const/high16 v5, 0x42400000    # 48.0f

    :goto_4
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v7

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v0, v7

    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x5

    :goto_5
    invoke-static {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileTextColorForId(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 873
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v7

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 874
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v7

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 875
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v0, v7

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x42ec0000    # 118.0f

    const/4 v4, 0x0

    if-nez v7, :cond_8

    const/high16 v5, 0x42400000    # 48.0f

    :goto_6
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v7

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_3

    .line 869
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 872
    :cond_7
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    goto :goto_5

    .line 875
    :cond_8
    const/high16 v5, 0x41000000    # 8.0f

    goto :goto_6

    .line 880
    :cond_9
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v0, :cond_a

    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-ltz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isLeftFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 881
    :cond_a
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    .line 883
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v1, 0x7f020122

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 888
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v0, :cond_e

    .line 889
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 890
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 900
    :cond_b
    :goto_8
    iget-object v12, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_c

    .line 902
    new-instance v8, Landroid/animation/StateListAnimator;

    invoke-direct {v8}, Landroid/animation/StateListAnimator;-><init>()V

    .line 903
    .local v8, "animator":Landroid/animation/StateListAnimator;
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v2, "translationZ"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 904
    const/4 v0, 0x0

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v2, "translationZ"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 905
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/ProfileActivity$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileActivity$11;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 914
    .end local v8    # "animator":Landroid/animation/StateListAnimator;
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/ProfileActivity$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileActivity$12;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 980
    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->needLayout()V

    .line 982
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ProfileActivity$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileActivity$13;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 992
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 884
    :catch_0
    move-exception v9

    .line 885
    .local v9, "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 891
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_e
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v0, :cond_b

    .line 892
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v11

    .line 893
    .local v11, "isChannel":Z
    if-eqz v11, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v0, :cond_10

    :cond_f
    if-nez v11, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v0, :cond_11

    .line 894
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 895
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_8

    .line 897
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v1, 0x7f02011c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 30
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1357
    sget v23, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 1358
    const/16 v23, 0x0

    aget-object v23, p2, v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 1359
    .local v19, "mask":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 1360
    and-int/lit8 v23, v19, 0x2

    if-nez v23, :cond_0

    and-int/lit8 v23, v19, 0x1

    if-nez v23, :cond_0

    and-int/lit8 v23, v19, 0x4

    if-eqz v23, :cond_1

    .line 1361
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateProfileData()V

    .line 1363
    :cond_1
    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v16

    check-cast v16, Lorg/telegram/ui/ProfileActivity$ListAdapter$Holder;

    .line 1366
    .local v16, "holder":Lorg/telegram/ui/ProfileActivity$ListAdapter$Holder;
    if-eqz v16, :cond_2

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    .line 1528
    .end local v16    # "holder":Lorg/telegram/ui/ProfileActivity$ListAdapter$Holder;
    .end local v19    # "mask":I
    :cond_2
    :goto_0
    return-void

    .line 1371
    .restart local v19    # "mask":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1372
    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x4000

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 1373
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v20

    .line 1374
    .local v20, "newChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v20, :cond_4

    .line 1375
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1376
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    .line 1377
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1383
    .end local v20    # "newChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_4
    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x2000

    move/from16 v23, v0

    if-nez v23, :cond_5

    and-int/lit8 v23, v19, 0x8

    if-nez v23, :cond_5

    and-int/lit8 v23, v19, 0x10

    if-nez v23, :cond_5

    and-int/lit8 v23, v19, 0x20

    if-nez v23, :cond_5

    and-int/lit8 v23, v19, 0x4

    if-eqz v23, :cond_6

    .line 1384
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V

    .line 1385
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateProfileData()V

    .line 1387
    :cond_6
    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x2000

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 1388
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1393
    :cond_7
    and-int/lit8 v23, v19, 0x2

    if-nez v23, :cond_8

    and-int/lit8 v23, v19, 0x1

    if-nez v23, :cond_8

    and-int/lit8 v23, v19, 0x4

    if-eqz v23, :cond_2

    .line 1394
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v13

    .line 1396
    .local v13, "count":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_1
    if-ge v6, v13, :cond_2

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1398
    .local v12, "child":Landroid/view/View;
    instance-of v0, v12, Lorg/telegram/ui/Cells/UserCell;

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 1399
    check-cast v12, Lorg/telegram/ui/Cells/UserCell;

    .end local v12    # "child":Landroid/view/View;
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    .line 1396
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1405
    .end local v6    # "a":I
    .end local v13    # "count":I
    .end local v19    # "mask":I
    :cond_a
    sget v23, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 1406
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    goto/16 :goto_0

    .line 1407
    :cond_b
    sget v23, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 1408
    const/16 v23, 0x0

    aget-object v23, p2, v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 1409
    .local v24, "uid":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    .line 1410
    .local v14, "did":J
    const-wide/16 v26, 0x0

    cmp-long v23, v14, v26

    if-nez v23, :cond_c

    .line 1411
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_e

    .line 1412
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v14, v0

    .line 1417
    :cond_c
    :goto_2
    cmp-long v23, v24, v14

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    move-wide/from16 v26, v0

    cmp-long v23, v24, v26

    if-nez v23, :cond_2

    .line 1418
    :cond_d
    cmp-long v23, v24, v14

    if-nez v23, :cond_f

    .line 1419
    const/16 v23, 0x1

    aget-object v23, p2, v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ProfileActivity;->totalMediaCount:I

    .line 1423
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v13

    .line 1425
    .restart local v13    # "count":I
    const/4 v6, 0x0

    .restart local v6    # "a":I
    :goto_4
    if-ge v6, v13, :cond_2

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1427
    .restart local v12    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/RecyclerListView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v16

    check-cast v16, Lorg/telegram/ui/ProfileActivity$ListAdapter$Holder;

    .line 1428
    .restart local v16    # "holder":Lorg/telegram/ui/ProfileActivity$ListAdapter$Holder;
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/ProfileActivity$ListAdapter$Holder;->getAdapterPosition()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_0

    .line 1413
    .end local v6    # "a":I
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "count":I
    .end local v16    # "holder":Lorg/telegram/ui/ProfileActivity$ListAdapter$Holder;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 1414
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v14, v0

    goto/16 :goto_2

    .line 1421
    :cond_f
    const/16 v23, 0x1

    aget-object v23, p2, v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ProfileActivity;->totalMediaCountMerge:I

    goto :goto_3

    .line 1425
    .restart local v6    # "a":I
    .restart local v12    # "child":Landroid/view/View;
    .restart local v13    # "count":I
    .restart local v16    # "holder":Lorg/telegram/ui/ProfileActivity$ListAdapter$Holder;
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1435
    .end local v6    # "a":I
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "count":I
    .end local v14    # "did":J
    .end local v16    # "holder":Lorg/telegram/ui/ProfileActivity$ListAdapter$Holder;
    .end local v24    # "uid":J
    :cond_11
    sget v23, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 1436
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->creatingChat:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1437
    new-instance v23, Lorg/telegram/ui/ProfileActivity$22;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ProfileActivity$22;-><init>(Lorg/telegram/ui/ProfileActivity;[Ljava/lang/Object;)V

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1449
    :cond_12
    sget v23, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 1450
    const/16 v23, 0x0

    aget-object v10, p2, v23

    check-cast v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1451
    .local v10, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 1452
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1453
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1458
    .end local v10    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_13
    sget v23, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 1459
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    move/from16 v22, v0

    .line 1460
    .local v22, "oldValue":Z
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    .line 1461
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 1462
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    goto/16 :goto_0

    .line 1464
    .end local v22    # "oldValue":Z
    :cond_14
    sget v23, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_1b

    .line 1465
    const/16 v23, 0x0

    aget-object v11, p2, v23

    check-cast v11, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1466
    .local v11, "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    iget v0, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 1467
    const/16 v23, 0x2

    aget-object v23, p2, v23

    check-cast v23, Ljava/lang/Boolean;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 1468
    .local v9, "byChannelUsers":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    move/from16 v23, v0

    if-eqz v23, :cond_15

    .line 1469
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v23, v0

    if-nez v23, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v23, v0

    if-eqz v23, :cond_15

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 1473
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v23, v0

    if-nez v23, :cond_1a

    instance-of v0, v11, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    move/from16 v23, v0

    if-eqz v23, :cond_1a

    const/16 v18, 0x1

    .line 1474
    .local v18, "loadChannelParticipants":Z
    :goto_5
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1475
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v23, v26, v28

    if-nez v23, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_16

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    .line 1477
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    move-wide/from16 v26, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move-wide/from16 v0, v26

    move/from16 v2, v23

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 1479
    :cond_16
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->fetchUsersFromChannelInfo()V

    .line 1480
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V

    .line 1481
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_17

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1485
    :cond_17
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v20

    .line 1486
    .restart local v20    # "newChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v20, :cond_18

    .line 1487
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1488
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    .line 1490
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    if-nez v18, :cond_19

    if-nez v9, :cond_2

    .line 1491
    :cond_19
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileActivity;->getChannelParticipants(Z)V

    goto/16 :goto_0

    .line 1473
    .end local v18    # "loadChannelParticipants":Z
    .end local v20    # "newChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 1494
    .end local v9    # "byChannelUsers":Z
    .end local v11    # "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_1b
    sget v23, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_1c

    .line 1495
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->removeSelfFromStack()V

    goto/16 :goto_0

    .line 1496
    :cond_1c
    sget v23, Lorg/telegram/messenger/NotificationCenter;->botInfoDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    .line 1497
    const/16 v23, 0x0

    aget-object v17, p2, v23

    check-cast v17, Lorg/telegram/tgnet/TLRPC$BotInfo;

    .line 1498
    .local v17, "info":Lorg/telegram/tgnet/TLRPC$BotInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$BotInfo;->user_id:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 1499
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ProfileActivity;->botInfo:Lorg/telegram/tgnet/TLRPC$BotInfo;

    .line 1500
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1505
    .end local v17    # "info":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_1d
    sget v23, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e

    .line 1506
    const/16 v23, 0x0

    aget-object v23, p2, v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 1507
    .local v24, "uid":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v23, v0

    move/from16 v0, v24

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 1508
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1513
    .end local v24    # "uid":I
    :cond_1e
    sget v23, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 1514
    const/16 v23, 0x0

    aget-object v23, p2, v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1515
    .restart local v14    # "did":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    move-wide/from16 v26, v0

    cmp-long v23, v14, v26

    if-nez v23, :cond_2

    .line 1516
    const/16 v23, 0x1

    aget-object v8, p2, v23

    check-cast v8, Ljava/util/ArrayList;

    .line 1517
    .local v8, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v6, 0x0

    .restart local v6    # "a":I
    :goto_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v6, v0, :cond_2

    .line 1518
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1519
    .local v21, "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1f

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1f

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    move/from16 v23, v0

    if-eqz v23, :cond_1f

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    move/from16 v23, v0

    if-eqz v23, :cond_1f

    .line 1520
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    .line 1521
    .local v7, "action":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1f

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1517
    .end local v7    # "action":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;
    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_6
.end method

.method public didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V
    .locals 10
    .param p1, "fragment"    # Lorg/telegram/ui/DialogsActivity;
    .param p2, "dialog_id"    # J
    .param p4, "param"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2302
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_1

    .line 2303
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2304
    .local v7, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "scrollToTopOnResume"

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2305
    long-to-int v8, p2

    .line 2306
    .local v8, "lower_part":I
    if-eqz v8, :cond_3

    .line 2307
    if-lez v8, :cond_2

    .line 2308
    const-string/jumbo v0, "user_id"

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2315
    :cond_0
    :goto_0
    invoke-static {v7, p1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2326
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v8    # "lower_part":I
    :cond_1
    :goto_1
    return-void

    .line 2309
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v8    # "lower_part":I
    :cond_2
    if-gez v8, :cond_0

    .line 2310
    const-string/jumbo v0, "chat_id"

    neg-int v2, v8

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2313
    :cond_3
    const-string/jumbo v0, "enc_id"

    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v2, v2

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2319
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 2320
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2321
    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, v5}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 2322
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->removeSelfFromStack()V

    .line 2323
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 2324
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    move-wide v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_1
.end method

.method public getAnimationProgress()F
    .locals 1

    .prologue
    .line 1565
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->animationProgress:F

    return v0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 10
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1718
    if-nez p2, :cond_1

    .line 1755
    :cond_0
    :goto_0
    return-object v2

    .line 1722
    :cond_1
    const/4 v3, 0x0

    .line 1723
    .local v3, "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v5, :cond_4

    .line 1724
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1725
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_2

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_2

    .line 1726
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1736
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v5, v6, :cond_0

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-ne v5, v6, :cond_0

    .line 1737
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 1738
    .local v1, "coords":[I
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    .line 1739
    new-instance v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v2}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 1740
    .local v2, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    const/4 v5, 0x0

    aget v5, v1, v5

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 1741
    const/4 v5, 0x1

    aget v5, v1, v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v5, v6

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 1742
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iput-object v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 1743
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1744
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v5, :cond_5

    .line 1745
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->dialogId:I

    .line 1749
    :cond_3
    :goto_2
    iget-object v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 1750
    const/4 v5, -0x1

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->size:I

    .line 1751
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()I

    move-result v5

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    .line 1752
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getScaleX()F

    move-result v5

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    goto/16 :goto_0

    .line 1728
    .end local v1    # "coords":[I
    .end local v2    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_4
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v5, :cond_2

    .line 1729
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1730
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_2

    .line 1731
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_1

    .line 1746
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v1    # "coords":[I
    .restart local v2    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_5
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v5, :cond_3

    .line 1747
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    neg-int v5, v5

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->dialogId:I

    goto :goto_2
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 1784
    const/4 v0, 0x0

    return v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 1760
    const/4 v0, 0x0

    return-object v0
.end method

.method public isChat()Z
    .locals 1

    .prologue
    .line 1921
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoChecked(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1772
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1117
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarUpdater;->onActivityResult(IILandroid/content/Intent;)V

    .line 1120
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1350
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1351
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->fixLayout()V

    .line 1352
    return-void
.end method

.method protected onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .locals 12
    .param p1, "isOpen"    # Z
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 1614
    iget-boolean v7, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    if-eqz v7, :cond_10

    iget-boolean v7, p0, Lorg/telegram/ui/ProfileActivity;->allowProfileAnimation:Z

    if-eqz v7, :cond_10

    .line 1615
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1616
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v8, 0xb4

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1617
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xf

    if-le v7, v8, :cond_0

    .line 1618
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1620
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v4

    .line 1621
    .local v4, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1622
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v7, :cond_1

    .line 1623
    const/16 v7, 0xa

    const v8, 0x7f02013e

    invoke-virtual {v4, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1626
    :cond_1
    if-eqz p1, :cond_a

    .line 1627
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1628
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v7, -0x3e580000    # -21.0f

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1629
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1631
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    const/high16 v8, 0x42fc0000    # 126.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x41a80000    # 21.0f

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 1632
    .local v5, "width":I
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    const v8, 0x3f8f5c29    # 1.12f

    mul-float/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getSideDrawablesSize()I

    move-result v8

    int-to-float v8, v8

    add-float v6, v7, v8

    .line 1633
    .local v6, "width2":F
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1634
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    int-to-float v7, v5

    cmpg-float v7, v7, v6

    if-gez v7, :cond_3

    .line 1635
    int-to-float v7, v5

    const v8, 0x3f8f5c29    # 1.12f

    div-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1639
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1641
    const/high16 v7, 0x42b00000    # 88.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, p0, Lorg/telegram/ui/ProfileActivity;->initialAnimationExtraHeight:I

    .line 1642
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1643
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ProfileActivity;->setAnimationProgress(F)V

    .line 1644
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1645
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const-string/jumbo v7, "animationProgress"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1646
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    .line 1647
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v8, 0x3e4ccccd    # 0.2f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1648
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v8, 0x3e4ccccd    # 0.2f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1649
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1650
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "scaleX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1651
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1652
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    :cond_2
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/4 v7, 0x2

    if-ge v0, v7, :cond_8

    .line 1655
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    if-nez v0, :cond_4

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v8, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setAlpha(F)V

    .line 1656
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    if-nez v0, :cond_5

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v8, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setAlpha(F)V

    .line 1657
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    const-string/jumbo v9, "alpha"

    const/4 v7, 0x1

    new-array v10, v7, [F

    const/4 v11, 0x0

    if-nez v0, :cond_6

    const/4 v7, 0x0

    :goto_4
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1658
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    const-string/jumbo v9, "alpha"

    const/4 v7, 0x1

    new-array v10, v7, [F

    const/4 v11, 0x0

    if-nez v0, :cond_7

    const/4 v7, 0x0

    :goto_5
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1637
    .end local v0    # "a":I
    .end local v2    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_3
    const/4 v7, -0x2

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto/16 :goto_0

    .line 1655
    .restart local v0    # "a":I
    .restart local v2    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 1656
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 1657
    :cond_6
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_4

    .line 1658
    :cond_7
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_5

    .line 1660
    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v7, :cond_9

    .line 1661
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 1662
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    :cond_9
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1684
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "width":I
    .end local v6    # "width2":F
    :goto_6
    new-instance v7, Lorg/telegram/ui/ProfileActivity$23;

    invoke-direct {v7, p0, p2}, Lorg/telegram/ui/ProfileActivity$23;-><init>(Lorg/telegram/ui/ProfileActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1698
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1700
    new-instance v7, Lorg/telegram/ui/ProfileActivity$24;

    invoke-direct {v7, p0, v1}, Lorg/telegram/ui/ProfileActivity$24;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/animation/AnimatorSet;)V

    const-wide/16 v8, 0x32

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1708
    .end local v0    # "a":I
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v2    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v4    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :goto_7
    return-object v1

    .line 1666
    .restart local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v4    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_a
    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    iput v7, p0, Lorg/telegram/ui/ProfileActivity;->initialAnimationExtraHeight:I

    .line 1667
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1668
    .restart local v2    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const-string/jumbo v7, "animationProgress"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_b

    .line 1670
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "scaleX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const v11, 0x3e4ccccd    # 0.2f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const v11, 0x3e4ccccd    # 0.2f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1672
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1674
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_8
    const/4 v7, 0x2

    if-ge v0, v7, :cond_e

    .line 1675
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    const-string/jumbo v9, "alpha"

    const/4 v7, 0x1

    new-array v10, v7, [F

    const/4 v11, 0x0

    if-nez v0, :cond_c

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_9
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1676
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    const-string/jumbo v9, "alpha"

    const/4 v7, 0x1

    new-array v10, v7, [F

    const/4 v11, 0x0

    if-nez v0, :cond_d

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_a
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1674
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1675
    :cond_c
    const/4 v7, 0x0

    goto :goto_9

    .line 1676
    :cond_d
    const/4 v7, 0x0

    goto :goto_a

    .line 1678
    :cond_e
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v7, :cond_f

    .line 1679
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 1680
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1682
    :cond_f
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    goto/16 :goto_6

    .line 1708
    .end local v0    # "a":I
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v2    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v4    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 1645
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1668
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 2295
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    .line 2296
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 2298
    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 12

    .prologue
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v6, "user_id"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    .line 230
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "chat_id"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    .line 231
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v5, :cond_7

    .line 232
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v6, "dialog_id"

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    .line 233
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_0

    .line 234
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 236
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 237
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v2, :cond_2

    .line 323
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    :goto_0
    return v3

    .line 240
    .restart local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 241
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 242
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 243
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 244
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 245
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->botInfoDidLoaded:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 246
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 247
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v5, :cond_3

    .line 248
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 250
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    .line 251
    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v5, :cond_4

    .line 252
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v5, v4, v6}, Lorg/telegram/messenger/query/BotQuery;->loadBotInfo(IZI)V

    .line 254
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-virtual {v5, v6, v7, v4}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    .line 255
    iput-object v9, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    .line 307
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    :goto_1
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_a

    .line 308
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v3, v5, v4}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 318
    :cond_6
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    invoke-virtual {v3, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 319
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v3, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 320
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v3, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 321
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    move v3, v4

    .line 323
    goto/16 :goto_0

    .line 256
    :cond_7
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v5, :cond_1

    .line 257
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 258
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v5, :cond_8

    .line 259
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 260
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ProfileActivity$1;

    invoke-direct {v6, p0, v1}, Lorg/telegram/ui/ProfileActivity$1;-><init>(Lorg/telegram/ui/ProfileActivity;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 268
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_1

    .line 273
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v5, v6, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 279
    .end local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v5, :cond_9

    .line 280
    invoke-direct {p0, v4}, Lorg/telegram/ui/ProfileActivity;->getChannelParticipants(Z)V

    .line 284
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 286
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    .line 287
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V

    .line 289
    new-instance v5, Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {v5}, Lorg/telegram/ui/Components/AvatarUpdater;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    .line 290
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    new-instance v6, Lorg/telegram/ui/ProfileActivity$2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ProfileActivity$2;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    iput-object v6, v5, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    .line 298
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v5, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 300
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 301
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-virtual {v5, v6, v7, v4}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    goto/16 :goto_1

    .line 269
    .restart local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_9
    iput-object v9, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    goto :goto_4

    .line 309
    :cond_a
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v5, :cond_b

    .line 310
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    int-to-long v6, v5

    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v3, v5, v4}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    goto/16 :goto_2

    .line 311
    :cond_b
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-lez v5, :cond_6

    .line 312
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    neg-int v5, v5

    int-to-long v6, v5

    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v3, v5, v4}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 313
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_6

    .line 314
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v3, v5, v4}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    goto/16 :goto_2
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 328
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 329
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 330
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 331
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 332
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v0, :cond_1

    .line 333
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 334
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 335
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 336
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 337
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 338
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 339
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->cancelLoadFullUser(I)V

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_0

    .line 341
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v0, :cond_0

    .line 344
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 345
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->clear()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1532
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1533
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1536
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateProfileData()V

    .line 1537
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->fixLayout()V

    .line 1538
    return-void
.end method

.method protected onTransitionAnimationEnd(ZZ)V
    .locals 2
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1558
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->allowProfileAnimation:Z

    if-eqz v0, :cond_0

    .line 1559
    iput-boolean v1, p0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    .line 1561
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 1562
    return-void
.end method

.method protected onTransitionAnimationStart(ZZ)V
    .locals 5
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1549
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->allowProfileAnimation:Z

    if-eqz v0, :cond_0

    .line 1550
    iput-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    .line 1552
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    aput v3, v1, v2

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    aput v2, v1, v4

    const/4 v2, 0x2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAllowedNotificationsDutingAnimation([I)V

    .line 1553
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 1554
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1107
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v0, :cond_0

    .line 1108
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadChatInfo(ILjava/util/concurrent/Semaphore;Z)V

    .line 1109
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    const-string/jumbo v1, "path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    .line 1113
    :cond_0
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1098
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v0, v0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1100
    const-string/jumbo v0, "path"

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    :cond_0
    return-void
.end method

.method public sendButtonPressed(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1781
    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 13
    .param p1, "progress"    # F

    .prologue
    .line 1569
    iput p1, p0, Lorg/telegram/ui/ProfileActivity;->animationProgress:F

    .line 1570
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setAlpha(F)V

    .line 1572
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v10, 0x42400000    # 48.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x42400000    # 48.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, p1

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationX(F)V

    .line 1573
    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v9, :cond_0

    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v9, :cond_2

    :cond_0
    const/4 v9, 0x5

    :goto_0
    invoke-static {v9}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileBackColorForId(I)I

    move-result v3

    .line 1575
    .local v3, "color":I
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->ACTION_BAR_COLOR:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 1576
    .local v7, "r":I
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->ACTION_BAR_COLOR:I

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 1577
    .local v5, "g":I
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->ACTION_BAR_COLOR:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 1579
    .local v1, "b":I
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v9

    sub-int/2addr v9, v7

    int-to-float v9, v9

    mul-float/2addr v9, p1

    float-to-int v8, v9

    .line 1580
    .local v8, "rD":I
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v9

    sub-int/2addr v9, v5

    int-to-float v9, v9

    mul-float/2addr v9, p1

    float-to-int v6, v9

    .line 1581
    .local v6, "gD":I
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    sub-int/2addr v9, v1

    int-to-float v9, v9

    mul-float/2addr v9, p1

    float-to-int v2, v9

    .line 1582
    .local v2, "bD":I
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    add-int v10, v7, v8

    add-int v11, v5, v6

    add-int v12, v1, v2

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ProfileActivity$TopView;->setBackgroundColor(I)V

    .line 1583
    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v9, :cond_1

    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v9, :cond_3

    :cond_1
    const/4 v9, 0x5

    :goto_1
    invoke-static {v9}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileTextColorForId(I)I

    move-result v3

    .line 1585
    const v9, -0x2a1709

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 1586
    const v9, -0x2a1709

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 1587
    const v9, -0x2a1709

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 1589
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v9

    sub-int/2addr v9, v7

    int-to-float v9, v9

    mul-float/2addr v9, p1

    float-to-int v8, v9

    .line 1590
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v9

    sub-int/2addr v9, v5

    int-to-float v9, v9

    mul-float/2addr v9, p1

    float-to-int v6, v9

    .line 1591
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    sub-int/2addr v9, v1

    int-to-float v9, v9

    mul-float/2addr v9, p1

    float-to-int v2, v9

    .line 1592
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    const/4 v9, 0x2

    if-ge v0, v9, :cond_5

    .line 1593
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v0

    if-nez v9, :cond_4

    .line 1592
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1573
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "bD":I
    .end local v3    # "color":I
    .end local v5    # "g":I
    .end local v6    # "gD":I
    .end local v7    # "r":I
    .end local v8    # "rD":I
    :cond_2
    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    goto/16 :goto_0

    .line 1583
    .restart local v1    # "b":I
    .restart local v2    # "bD":I
    .restart local v3    # "color":I
    .restart local v5    # "g":I
    .restart local v6    # "gD":I
    .restart local v7    # "r":I
    .restart local v8    # "rD":I
    :cond_3
    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    goto :goto_1

    .line 1596
    .restart local v0    # "a":I
    :cond_4
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v0

    add-int v10, v7, v8

    add-int v11, v5, v6

    add-int v12, v1, v2

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_3

    .line 1598
    :cond_5
    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->initialAnimationExtraHeight:I

    int-to-float v9, v9

    mul-float/2addr v9, p1

    float-to-int v9, v9

    iput v9, p0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    .line 1599
    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v9, :cond_7

    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    :goto_4
    invoke-static {v9}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileColorForId(I)I

    move-result v3

    .line 1600
    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v9, :cond_8

    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    :goto_5
    invoke-static {v9}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorForId(I)I

    move-result v4

    .line 1601
    .local v4, "color2":I
    if-eq v3, v4, :cond_6

    .line 1602
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, p1

    float-to-int v8, v9

    .line 1603
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, p1

    float-to-int v6, v9

    .line 1604
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, p1

    float-to-int v2, v9

    .line 1605
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v10

    add-int/2addr v10, v8

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v11

    add-int/2addr v11, v6

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    add-int/2addr v12, v2

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    .line 1606
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    .line 1609
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->needLayout()V

    .line 1610
    return-void

    .line 1599
    .end local v4    # "color2":I
    :cond_7
    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    goto :goto_4

    .line 1600
    :cond_8
    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    goto :goto_5
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 2
    .param p1, "chatInfo"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 1855
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1856
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    if-eqz v0, :cond_0

    .line 1857
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    .line 1859
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->fetchUsersFromChannelInfo()V

    .line 1860
    return-void
.end method

.method public setPhotoChecked(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1775
    return-void
.end method

.method public setPlayProfileAnimation(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 1541
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1542
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "view_animations"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1543
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    .line 1545
    :cond_0
    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1714
    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1768
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1769
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 0
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 1764
    return-void
.end method
