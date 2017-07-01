.class public Lorg/telegram/ui/Cells/UserCell;
.super Landroid/widget/FrameLayout;
.source "UserCell.java"


# instance fields
.field private adminImage:Landroid/widget/ImageView;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox;

.field private checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

.field private creatorImage:Landroid/widget/ImageView;

.field private currentDrawable:I

.field private currentName:Ljava/lang/CharSequence;

.field private currentObject:Lorg/telegram/tgnet/TLObject;

.field private currrntStatus:Ljava/lang/CharSequence;

.field private hasMyPhoneImageView:Landroid/widget/ImageView;

.field private imageView:Landroid/widget/ImageView;

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private statusColor:I

.field private statusOnlineColor:I

.field private statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "padding"    # I
    .param p3, "checkbox"    # I
    .param p4, "admin"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    const v0, -0x575758

    iput v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    .line 59
    const v0, -0xc47b40

    iput v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusOnlineColor:I

    .line 67
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 69
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 71
    iget-object v9, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x30

    const/high16 v1, 0x42400000    # 48.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    :goto_1
    const/high16 v4, 0x41000000    # 8.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_5

    add-int/lit8 v5, p2, 0x7

    int-to-float v5, v5

    :goto_2
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v1, -0xdededf

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 76
    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    :goto_3
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 77
    iget-object v9, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x5

    :goto_4
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_9

    const/4 v3, 0x2

    if-ne p3, v3, :cond_8

    const/16 v3, 0x12

    :goto_5
    add-int/lit8 v3, v3, 0x1c

    int-to-float v3, v3

    :goto_6
    const/high16 v4, 0x41380000    # 11.5f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_a

    add-int/lit8 v5, p2, 0x44

    int-to-float v5, v5

    :goto_7
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 81
    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x5

    :goto_8
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 82
    iget-object v9, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x5

    :goto_9
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_e

    const/high16 v3, 0x41e00000    # 28.0f

    :goto_a
    const/high16 v4, 0x420a0000    # 34.5f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_f

    add-int/lit8 v5, p2, 0x44

    int-to-float v5, v5

    :goto_b
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v9, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x5

    :goto_c
    or-int/lit8 v2, v2, 0x10

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_11

    const/4 v3, 0x0

    :goto_d
    const/4 v4, 0x0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_12

    const/high16 v5, 0x41800000    # 16.0f

    :goto_e
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    const v1, 0x7f0201d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "ApoTheme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 95
    .local v8, "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v0, "theme_contact_list_ncolor"

    invoke-static {v8}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogNameColor(Landroid/content/SharedPreferences;)I

    move-result v1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 96
    .local v7, "iColor":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, v7}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v9, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x3

    :goto_f
    or-int/lit8 v2, v2, 0x10

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const/4 v0, 0x2

    if-ne p3, v0, :cond_17

    .line 102
    new-instance v0, Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    .line 103
    iget-object v9, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/16 v0, 0x12

    const/high16 v1, 0x41900000    # 18.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x3

    :goto_10
    or-int/lit8 v2, v2, 0x10

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_15

    const/high16 v3, 0x41980000    # 19.0f

    :goto_11
    const/4 v4, 0x0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_16

    const/4 v5, 0x0

    :goto_12
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    :cond_0
    :goto_13
    if-eqz p4, :cond_1

    .line 112
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->creatorImage:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->creatorImage:Landroid/widget/ImageView;

    const v1, 0x7f02018f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    iget-object v9, p0, Lorg/telegram/ui/Cells/UserCell;->creatorImage:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1b

    const/4 v2, 0x5

    :goto_14
    or-int/lit8 v2, v2, 0x10

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    :cond_1
    if-eqz p4, :cond_2

    .line 118
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    const v1, 0x7f02018e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v9, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1c

    const/4 v2, 0x5

    :goto_15
    or-int/lit8 v2, v2, 0x10

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    :cond_2
    return-void

    .line 71
    .end local v7    # "iColor":I
    .end local v8    # "themePreferences":Landroid/content/SharedPreferences;
    :cond_3
    const/4 v2, 0x3

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v3, p2, 0x7

    int-to-float v3, v3

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 76
    :cond_6
    const/4 v0, 0x3

    goto/16 :goto_3

    .line 77
    :cond_7
    const/4 v2, 0x3

    goto/16 :goto_4

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_9
    add-int/lit8 v3, p2, 0x44

    int-to-float v3, v3

    goto/16 :goto_6

    :cond_a
    const/4 v5, 0x2

    if-ne p3, v5, :cond_b

    const/16 v5, 0x12

    :goto_16
    add-int/lit8 v5, v5, 0x1c

    int-to-float v5, v5

    goto/16 :goto_7

    :cond_b
    const/4 v5, 0x0

    goto :goto_16

    .line 81
    :cond_c
    const/4 v0, 0x3

    goto/16 :goto_8

    .line 82
    :cond_d
    const/4 v2, 0x3

    goto/16 :goto_9

    :cond_e
    add-int/lit8 v3, p2, 0x44

    int-to-float v3, v3

    goto/16 :goto_a

    :cond_f
    const/high16 v5, 0x41e00000    # 28.0f

    goto/16 :goto_b

    .line 87
    :cond_10
    const/4 v2, 0x3

    goto/16 :goto_c

    :cond_11
    const/high16 v3, 0x41800000    # 16.0f

    goto/16 :goto_d

    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_e

    .line 99
    .restart local v7    # "iColor":I
    .restart local v8    # "themePreferences":Landroid/content/SharedPreferences;
    :cond_13
    const/4 v2, 0x5

    goto/16 :goto_f

    .line 103
    :cond_14
    const/4 v2, 0x5

    goto/16 :goto_10

    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_11

    :cond_16
    const/high16 v5, 0x41980000    # 19.0f

    goto/16 :goto_12

    .line 104
    :cond_17
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 105
    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f020258

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 107
    iget-object v9, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v0, 0x16

    const/high16 v1, 0x41b00000    # 22.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x5

    :goto_17
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    :goto_18
    const/high16 v4, 0x42180000    # 38.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1a

    add-int/lit8 v5, p2, 0x25

    int-to-float v5, v5

    :goto_19
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_13

    :cond_18
    const/4 v2, 0x3

    goto :goto_17

    :cond_19
    add-int/lit8 v3, p2, 0x25

    int-to-float v3, v3

    goto :goto_18

    :cond_1a
    const/4 v5, 0x0

    goto :goto_19

    .line 114
    :cond_1b
    const/4 v2, 0x3

    goto/16 :goto_14

    .line 120
    :cond_1c
    const/4 v2, 0x3

    goto/16 :goto_15
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 194
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 195
    return-void
.end method

.method public setCheckDisabled(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .prologue
    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setDisabled(Z)V

    .line 190
    :cond_0
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 178
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setVisibility(I)V

    .line 182
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    goto :goto_0
.end method

.method public setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 7
    .param p1, "user"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "status"    # Ljava/lang/CharSequence;
    .param p4, "resId"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 143
    if-nez p1, :cond_0

    .line 144
    iput-object v5, p0, Lorg/telegram/ui/Cells/UserCell;->currrntStatus:Ljava/lang/CharSequence;

    .line 145
    iput-object v5, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    .line 146
    iput-object v5, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    .line 147
    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :goto_0
    return-void

    .line 153
    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 154
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "mutual_contact"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 155
    .local v0, "mutualContact":Z
    if-eqz v0, :cond_2

    move-object v2, p1

    .line 156
    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    :goto_1
    iput-object p3, p0, Lorg/telegram/ui/Cells/UserCell;->currrntStatus:Ljava/lang/CharSequence;

    .line 166
    iput-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    .line 167
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    .line 168
    iput p4, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    .line 169
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 162
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setIsAdmin(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    const/high16 v4, 0x41800000    # 16.0f

    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v3, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_2
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_3
    invoke-virtual {v3, v0, v1, v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setPadding(IIII)V

    goto :goto_0

    .line 129
    :cond_1
    const/16 v0, 0x8

    goto :goto_1

    :cond_2
    move v0, v1

    .line 130
    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3
.end method

.method public setIsCreator(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    const/high16 v4, 0x41800000    # 16.0f

    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->creatorImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->creatorImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v3, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_2
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_3
    invoke-virtual {v3, v0, v1, v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setPadding(IIII)V

    goto :goto_0

    .line 138
    :cond_1
    const/16 v0, 0x8

    goto :goto_1

    :cond_2
    move v0, v1

    .line 139
    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3
.end method

.method public setNameTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 319
    return-void
.end method

.method public setStatusColors(II)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "onlineColor"    # I

    .prologue
    .line 198
    iput p1, p0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    .line 199
    iput p2, p0, Lorg/telegram/ui/Cells/UserCell;->statusOnlineColor:I

    .line 200
    return-void
.end method

.method public update(I)V
    .locals 14
    .param p1, "mask"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 203
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    if-nez v10, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const/4 v5, 0x0

    .line 207
    .local v5, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v3, 0x0

    .line 208
    .local v3, "newName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 209
    .local v2, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v1, 0x0

    .line 210
    .local v1, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v10, :cond_e

    .line 211
    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    .end local v2    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 212
    .restart local v2    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v10, :cond_2

    .line 213
    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v10, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 222
    :cond_2
    :goto_1
    if-eqz p1, :cond_9

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "continueUpdate":Z
    and-int/lit8 v10, p1, 0x2

    if-eqz v10, :cond_5

    .line 225
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v10, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v10, :cond_5

    if-eqz v5, :cond_5

    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v10, :cond_5

    if-eqz v5, :cond_5

    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v12, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v11, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v10, v11, :cond_5

    .line 226
    :cond_4
    const/4 v0, 0x1

    .line 229
    :cond_5
    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    and-int/lit8 v10, p1, 0x4

    if-eqz v10, :cond_7

    .line 230
    const/4 v4, 0x0

    .line 231
    .local v4, "newStatus":I
    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v10, :cond_6

    .line 232
    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v10, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 234
    :cond_6
    iget v10, p0, Lorg/telegram/ui/Cells/UserCell;->lastStatus:I

    if-eq v4, v10, :cond_7

    .line 235
    const/4 v0, 0x1

    .line 238
    .end local v4    # "newStatus":I
    :cond_7
    if-nez v0, :cond_8

    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    if-nez v10, :cond_8

    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    if-eqz v10, :cond_8

    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_8

    .line 239
    if-eqz v2, :cond_f

    .line 240
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .line 244
    :goto_2
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 245
    const/4 v0, 0x1

    .line 248
    :cond_8
    if-eqz v0, :cond_0

    .line 253
    .end local v0    # "continueUpdate":Z
    :cond_9
    if-eqz v2, :cond_11

    .line 254
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 255
    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v10, :cond_10

    .line 256
    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput v10, p0, Lorg/telegram/ui/Cells/UserCell;->lastStatus:I

    .line 264
    :goto_3
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v10, :cond_12

    .line 265
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    .line 266
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v11, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    .end local v3    # "newName":Ljava/lang/String;
    :goto_4
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->currrntStatus:Ljava/lang/CharSequence;

    if-eqz v10, :cond_16

    .line 277
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v11, p0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 278
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v11, p0, Lorg/telegram/ui/Cells/UserCell;->currrntStatus:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :cond_a
    :goto_5
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_b

    iget v10, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    if-eqz v10, :cond_c

    :cond_b
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getVisibility()I

    move-result v10

    if-ne v10, v8, :cond_d

    iget v10, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    if-eqz v10, :cond_d

    .line 299
    :cond_c
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    iget v11, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    if-nez v11, :cond_1d

    :goto_6
    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    iget v10, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    :cond_d
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v10, "50_50"

    iget-object v11, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v8, v5, v10, v11}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 305
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "ApoTheme"

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 306
    .local v6, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v8, "theme_contact_avatar_radius"

    const/16 v9, 0x20

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    .line 307
    .local v7, "radius":I
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 308
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setRoundRadius(I)V

    goto/16 :goto_0

    .line 216
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    .end local v7    # "radius":I
    .restart local v3    # "newName":Ljava/lang/String;
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    .end local v1    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 217
    .restart local v1    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v10, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v10, :cond_2

    .line 218
    iget-object v10, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v5, v10, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_1

    .line 242
    .restart local v0    # "continueUpdate":Z
    :cond_f
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto/16 :goto_2

    .line 258
    .end local v0    # "continueUpdate":Z
    :cond_10
    iput v9, p0, Lorg/telegram/ui/Cells/UserCell;->lastStatus:I

    goto/16 :goto_3

    .line 261
    :cond_11
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v10, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto/16 :goto_3

    .line 268
    :cond_12
    if-eqz v2, :cond_14

    .line 269
    if-nez v3, :cond_13

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "newName":Ljava/lang/String;
    :cond_13
    iput-object v3, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    .line 273
    :goto_7
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v11, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 271
    .restart local v3    # "newName":Ljava/lang/String;
    :cond_14
    if-nez v3, :cond_15

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .end local v3    # "newName":Ljava/lang/String;
    :cond_15
    iput-object v3, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    goto :goto_7

    .line 279
    :cond_16
    if-eqz v2, :cond_a

    .line 280
    iget-boolean v10, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v10, :cond_19

    .line 281
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v11, p0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 282
    iget-boolean v10, v2, Lorg/telegram/tgnet/TLRPC$User;->bot_chat_history:Z

    if-nez v10, :cond_17

    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    if-eqz v10, :cond_18

    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_18

    .line 283
    :cond_17
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v11, "BotStatusRead"

    const v12, 0x7f0700e8

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 285
    :cond_18
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v11, "BotStatusCantRead"

    const v12, 0x7f0700e7

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 288
    :cond_19
    iget v10, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v11

    if-eq v10, v11, :cond_1b

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v10, :cond_1a

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v11

    if-gt v10, v11, :cond_1b

    :cond_1a
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    iget v11, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 289
    :cond_1b
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v11, p0, Lorg/telegram/ui/Cells/UserCell;->statusOnlineColor:I

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 290
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v11, "Online"

    const v12, 0x7f0703a1

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 292
    :cond_1c
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v11, p0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 293
    iget-object v10, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_1d
    move v8, v9

    .line 299
    goto/16 :goto_6
.end method
