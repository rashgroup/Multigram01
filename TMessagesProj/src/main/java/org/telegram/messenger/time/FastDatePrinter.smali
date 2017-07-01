.class public Lorg/telegram/messenger/time/FastDatePrinter;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/telegram/messenger/time/DatePrinter;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;,
        Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNumberRule;,
        Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNameRule;,
        Lorg/telegram/messenger/time/FastDatePrinter$TwentyFourHourField;,
        Lorg/telegram/messenger/time/FastDatePrinter$TwelveHourField;,
        Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitMonthField;,
        Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitYearField;,
        Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitNumberField;,
        Lorg/telegram/messenger/time/FastDatePrinter$PaddedNumberField;,
        Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedMonthField;,
        Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedNumberField;,
        Lorg/telegram/messenger/time/FastDatePrinter$TextField;,
        Lorg/telegram/messenger/time/FastDatePrinter$StringLiteral;,
        Lorg/telegram/messenger/time/FastDatePrinter$CharacterLiteral;,
        Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;,
        Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    }
.end annotation


# static fields
.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static final cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private transient mMaxLengthEstimate:I

.field private final mPattern:Ljava/lang/String;

.field private transient mRules:[Lorg/telegram/messenger/time/FastDatePrinter$Rule;

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1127
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 145
    iput-object p3, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 147
    invoke-direct {p0}, Lorg/telegram/messenger/time/FastDatePrinter;->init()V

    .line 148
    return-void
.end method

.method private applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "daylight"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1140
    new-instance v0, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 1141
    .local v0, "key":Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;
    sget-object v3, Lorg/telegram/messenger/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1142
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1144
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1145
    sget-object v3, Lorg/telegram/messenger/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1146
    .local v1, "prior":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1147
    move-object v2, v1

    .line 1150
    .end local v1    # "prior":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private init()V
    .locals 4

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/telegram/messenger/time/FastDatePrinter;->parsePattern()Ljava/util/List;

    move-result-object v2

    .line 155
    .local v2, "rulesList":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/time/FastDatePrinter$Rule;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/telegram/messenger/time/FastDatePrinter$Rule;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/messenger/time/FastDatePrinter$Rule;

    iput-object v3, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mRules:[Lorg/telegram/messenger/time/FastDatePrinter$Rule;

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "len":I
    iget-object v3, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mRules:[Lorg/telegram/messenger/time/FastDatePrinter$Rule;

    array-length v0, v3

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 159
    iget-object v3, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mRules:[Lorg/telegram/messenger/time/FastDatePrinter$Rule;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lorg/telegram/messenger/time/FastDatePrinter$Rule;->estimateLength()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 162
    :cond_0
    iput v1, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mMaxLengthEstimate:I

    .line 163
    return-void
.end method

.method private newCalendar()Ljava/util/GregorianCalendar;
    .locals 3

    .prologue
    .line 434
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 609
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 610
    invoke-direct {p0}, Lorg/telegram/messenger/time/FastDatePrinter;->init()V

    .line 611
    return-void
.end method


# virtual methods
.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 512
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mRules:[Lorg/telegram/messenger/time/FastDatePrinter$Rule;

    .local v0, "arr$":[Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 513
    .local v3, "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    invoke-interface {v3, p2, p1}, Lorg/telegram/messenger/time/FastDatePrinter$Rule;->appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    .end local v3    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :cond_0
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 568
    instance-of v2, p1, Lorg/telegram/messenger/time/FastDatePrinter;

    if-nez v2, :cond_1

    .line 572
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 571
    check-cast v0, Lorg/telegram/messenger/time/FastDatePrinter;

    .line 572
    .local v0, "other":Lorg/telegram/messenger/time/FastDatePrinter;
    iget-object v2, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/messenger/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v3, v0, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    iget-object v3, v0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public format(J)Ljava/lang/String;
    .locals 7
    .param p1, "millis"    # J

    .prologue
    const/4 v6, 0x0

    .line 405
    invoke-direct {p0}, Lorg/telegram/messenger/time/FastDatePrinter;->newCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 406
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 408
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "mainconfig"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 409
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "persian_date"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 410
    .local v1, "persianDate":Z
    if-eqz v1, :cond_0

    .line 411
    new-instance v3, Lorg/telegram/ui/Apogram/SolarCalendar;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Apogram/SolarCalendar;-><init>(Ljava/util/Calendar;)V

    .line 412
    .local v3, "solarCalendar":Lorg/telegram/ui/Apogram/SolarCalendar;
    invoke-virtual {v3}, Lorg/telegram/ui/Apogram/SolarCalendar;->getTime()Ljava/lang/String;

    move-result-object v4

    .line 414
    .end local v3    # "solarCalendar":Lorg/telegram/ui/Apogram/SolarCalendar;
    :goto_0
    return-object v4

    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/time/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 14
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 442
    invoke-direct {p0}, Lorg/telegram/messenger/time/FastDatePrinter;->newCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 443
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 446
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "mainconfig"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 447
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "persian_date"

    invoke-interface {v5, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 448
    .local v4, "persianDate":Z
    if-eqz v4, :cond_2

    .line 449
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 450
    .local v3, "day":I
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 451
    .local v8, "year":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 452
    .local v6, "rightNow":Ljava/util/Calendar;
    invoke-virtual {v6, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 453
    .local v1, "dateDay":I
    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 454
    .local v2, "dateYear":I
    if-ne v1, v3, :cond_0

    if-ne v8, v2, :cond_0

    .line 455
    new-instance v7, Lorg/telegram/ui/Apogram/SolarCalendar;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Apogram/SolarCalendar;-><init>(Ljava/util/Calendar;)V

    .line 456
    .local v7, "solarCalendar":Lorg/telegram/ui/Apogram/SolarCalendar;
    invoke-virtual {v7}, Lorg/telegram/ui/Apogram/SolarCalendar;->getTime()Ljava/lang/String;

    move-result-object v9

    .line 465
    .end local v1    # "dateDay":I
    .end local v2    # "dateYear":I
    .end local v3    # "day":I
    .end local v6    # "rightNow":Ljava/util/Calendar;
    .end local v7    # "solarCalendar":Lorg/telegram/ui/Apogram/SolarCalendar;
    .end local v8    # "year":I
    :goto_0
    return-object v9

    .line 457
    .restart local v1    # "dateDay":I
    .restart local v2    # "dateYear":I
    .restart local v3    # "day":I
    .restart local v6    # "rightNow":Ljava/util/Calendar;
    .restart local v8    # "year":I
    :cond_0
    if-ne v8, v2, :cond_1

    .line 458
    new-instance v7, Lorg/telegram/ui/Apogram/SolarCalendar;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Apogram/SolarCalendar;-><init>(Ljava/util/Calendar;)V

    .line 459
    .restart local v7    # "solarCalendar":Lorg/telegram/ui/Apogram/SolarCalendar;
    invoke-virtual {v7}, Lorg/telegram/ui/Apogram/SolarCalendar;->getShortDesDate()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 461
    .end local v7    # "solarCalendar":Lorg/telegram/ui/Apogram/SolarCalendar;
    :cond_1
    new-instance v7, Lorg/telegram/ui/Apogram/SolarCalendar;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Apogram/SolarCalendar;-><init>(Ljava/util/Calendar;)V

    .line 462
    .restart local v7    # "solarCalendar":Lorg/telegram/ui/Apogram/SolarCalendar;
    invoke-virtual {v7}, Lorg/telegram/ui/Apogram/SolarCalendar;->getNumDate()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 465
    .end local v1    # "dateDay":I
    .end local v2    # "dateYear":I
    .end local v3    # "day":I
    .end local v6    # "rightNow":Ljava/util/Calendar;
    .end local v7    # "solarCalendar":Lorg/telegram/ui/Apogram/SolarCalendar;
    .end local v8    # "year":I
    :cond_2
    invoke-direct {p0, v0}, Lorg/telegram/messenger/time/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "millis"    # J
    .param p3, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 482
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p3}, Lorg/telegram/messenger/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    .line 388
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 389
    check-cast p1, Ljava/util/Date;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    .line 390
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 391
    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 392
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 393
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/telegram/messenger/time/FastDatePrinter;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 395
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown class: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_3

    const-string/jumbo v0, "<null>"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 500
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 490
    invoke-direct {p0}, Lorg/telegram/messenger/time/FastDatePrinter;->newCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 491
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 492
    invoke-virtual {p0, v0, p2}, Lorg/telegram/messenger/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMaxLengthEstimate()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mMaxLengthEstimate:I

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 584
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method protected parsePattern()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/time/FastDatePrinter$Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v15, Ljava/text/DateFormatSymbols;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 176
    .local v15, "symbols":Ljava/text/DateFormatSymbols;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v11, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/time/FastDatePrinter$Rule;>;"
    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "ERAs":[Ljava/lang/String;
    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v9

    .line 180
    .local v9, "months":[Ljava/lang/String;
    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v12

    .line 181
    .local v12, "shortMonths":[Ljava/lang/String;
    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v18

    .line 182
    .local v18, "weekdays":[Ljava/lang/String;
    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v13

    .line 183
    .local v13, "shortWeekdays":[Ljava/lang/String;
    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "AmPmStrings":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v8

    .line 186
    .local v8, "length":I
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v7, v0, [I

    .line 188
    .local v7, "indexRef":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 189
    const/16 v19, 0x0

    aput v6, v7, v19

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lorg/telegram/messenger/time/FastDatePrinter;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v16

    .line 191
    .local v16, "token":Ljava/lang/String;
    const/16 v19, 0x0

    aget v6, v7, v19

    .line 193
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    .line 194
    .local v17, "tokenLen":I
    if-nez v17, :cond_1

    .line 294
    .end local v16    # "token":Ljava/lang/String;
    .end local v17    # "tokenLen":I
    :cond_0
    return-object v11

    .line 199
    .restart local v16    # "token":Ljava/lang/String;
    .restart local v17    # "tokenLen":I
    :cond_1
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 201
    .local v5, "c":C
    sparse-switch v5, :sswitch_data_0

    .line 288
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Illegal pattern component: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 203
    :sswitch_0
    new-instance v10, Lorg/telegram/messenger/time/FastDatePrinter$TextField;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v10, v0, v4}, Lorg/telegram/messenger/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 291
    .end local v17    # "tokenLen":I
    .local v10, "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :goto_1
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 206
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    .restart local v17    # "tokenLen":I
    :sswitch_1
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 207
    sget-object v10, Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitYearField;->INSTANCE:Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitYearField;

    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 209
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :cond_2
    const/16 v19, 0x1

    const/16 v20, 0x4

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    const/16 v17, 0x4

    .end local v17    # "tokenLen":I
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 211
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 213
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    .restart local v17    # "tokenLen":I
    :sswitch_2
    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 214
    new-instance v10, Lorg/telegram/messenger/time/FastDatePrinter$TextField;

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v10, v0, v9}, Lorg/telegram/messenger/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 215
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :cond_4
    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 216
    new-instance v10, Lorg/telegram/messenger/time/FastDatePrinter$TextField;

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v10, v0, v12}, Lorg/telegram/messenger/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 217
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :cond_5
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 218
    sget-object v10, Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitMonthField;->INSTANCE:Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitMonthField;

    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 220
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :cond_6
    sget-object v10, Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedMonthField;->INSTANCE:Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedMonthField;

    .line 222
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 224
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :sswitch_3
    const/16 v19, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 225
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 227
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :sswitch_4
    new-instance v10, Lorg/telegram/messenger/time/FastDatePrinter$TwelveHourField;

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/telegram/messenger/time/FastDatePrinter$TwelveHourField;-><init>(Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;)V

    .line 228
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 230
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :sswitch_5
    const/16 v19, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 231
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 233
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :sswitch_6
    const/16 v19, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 234
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 236
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :sswitch_7
    const/16 v19, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 237
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 239
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :sswitch_8
    const/16 v19, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 240
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 242
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :sswitch_9
    new-instance v10, Lorg/telegram/messenger/time/FastDatePrinter$TextField;

    const/16 v20, 0x7

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    move-object/from16 v19, v13

    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lorg/telegram/messenger/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 243
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :cond_7
    move-object/from16 v19, v18

    .line 242
    goto :goto_2

    .line 245
    :sswitch_a
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 246
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 248
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :sswitch_b
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 249
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 251
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :sswitch_c
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 252
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 254
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :sswitch_d
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 255
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 257
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :sswitch_e
    new-instance v10, Lorg/telegram/messenger/time/FastDatePrinter$TextField;

    const/16 v19, 0x9

    move/from16 v0, v19

    invoke-direct {v10, v0, v3}, Lorg/telegram/messenger/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 258
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 260
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :sswitch_f
    new-instance v10, Lorg/telegram/messenger/time/FastDatePrinter$TwentyFourHourField;

    const/16 v19, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/telegram/messenger/time/FastDatePrinter$TwentyFourHourField;-><init>(Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;)V

    .line 261
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 263
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :sswitch_10
    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 264
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 266
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :sswitch_11
    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    .line 267
    new-instance v10, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNameRule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v10, v0, v1, v2}, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 269
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :cond_8
    new-instance v10, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNameRule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v10, v0, v1, v2}, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    .line 271
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 273
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :sswitch_12
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 274
    sget-object v10, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNumberRule;

    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 276
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :cond_9
    sget-object v10, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNumberRule;

    .line 278
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 280
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :sswitch_13
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 281
    .local v14, "sub":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 282
    new-instance v10, Lorg/telegram/messenger/time/FastDatePrinter$CharacterLiteral;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/telegram/messenger/time/FastDatePrinter$CharacterLiteral;-><init>(C)V

    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 284
    .end local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    :cond_a
    new-instance v10, Lorg/telegram/messenger/time/FastDatePrinter$StringLiteral;

    invoke-direct {v10, v14}, Lorg/telegram/messenger/time/FastDatePrinter$StringLiteral;-><init>(Ljava/lang/String;)V

    .line 286
    .restart local v10    # "rule":Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 201
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_13
        0x44 -> :sswitch_a
        0x45 -> :sswitch_9
        0x46 -> :sswitch_b
        0x47 -> :sswitch_0
        0x48 -> :sswitch_5
        0x4b -> :sswitch_10
        0x4d -> :sswitch_2
        0x53 -> :sswitch_8
        0x57 -> :sswitch_d
        0x5a -> :sswitch_12
        0x61 -> :sswitch_e
        0x64 -> :sswitch_3
        0x68 -> :sswitch_4
        0x6b -> :sswitch_f
        0x6d -> :sswitch_6
        0x73 -> :sswitch_7
        0x77 -> :sswitch_c
        0x79 -> :sswitch_1
        0x7a -> :sswitch_11
    .end sparse-switch
.end method

.method protected parseToken(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 12
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "indexRef"    # [I

    .prologue
    const/16 v11, 0x61

    const/16 v10, 0x5a

    const/16 v9, 0x41

    const/16 v8, 0x27

    const/4 v6, 0x0

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v0, "buf":Ljava/lang/StringBuilder;
    aget v2, p2, v6

    .line 308
    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 310
    .local v4, "length":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 311
    .local v1, "c":C
    if-lt v1, v9, :cond_0

    if-le v1, v10, :cond_1

    :cond_0
    if-lt v1, v11, :cond_2

    const/16 v7, 0x7a

    if-gt v1, v7, :cond_2

    .line 314
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    :goto_0
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v4, :cond_8

    .line 317
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 318
    .local v5, "peek":C
    if-ne v5, v1, :cond_8

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    add-int/lit8 v2, v2, 0x1

    .line 324
    goto :goto_0

    .line 327
    .end local v5    # "peek":C
    :cond_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    const/4 v3, 0x0

    .line 331
    .local v3, "inLiteral":Z
    :goto_1
    if-ge v2, v4, :cond_8

    .line 332
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 334
    if-ne v1, v8, :cond_5

    .line 335
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v4, :cond_3

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_3

    .line 337
    add-int/lit8 v2, v2, 0x1

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 340
    :cond_3
    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    goto :goto_2

    :cond_4
    move v3, v6

    goto :goto_3

    .line 342
    :cond_5
    if-nez v3, :cond_9

    if-lt v1, v9, :cond_6

    if-le v1, v10, :cond_7

    :cond_6
    if-lt v1, v11, :cond_9

    const/16 v7, 0x7a

    if-gt v1, v7, :cond_9

    .line 344
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 352
    .end local v3    # "inLiteral":Z
    :cond_8
    aput v2, p2, v6

    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 347
    .restart local v3    # "inLiteral":Z
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method protected selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;
    .locals 1
    .param p1, "field"    # I
    .param p2, "padding"    # I

    .prologue
    .line 364
    packed-switch p2, :pswitch_data_0

    .line 370
    new-instance v0, Lorg/telegram/messenger/time/FastDatePrinter$PaddedNumberField;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/time/FastDatePrinter$PaddedNumberField;-><init>(II)V

    :goto_0
    return-object v0

    .line 366
    :pswitch_0
    new-instance v0, Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedNumberField;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedNumberField;-><init>(I)V

    goto :goto_0

    .line 368
    :pswitch_1
    new-instance v0, Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitNumberField;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitNumberField;-><init>(I)V

    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FastDatePrinter["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
