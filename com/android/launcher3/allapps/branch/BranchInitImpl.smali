.class public final Lcom/android/launcher3/allapps/branch/BranchInitImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/branch/IInitBranchCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/branch/BranchInitImpl$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBranchInitImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BranchInitImpl.kt\ncom/android/launcher3/allapps/branch/BranchInitImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,234:1\n1549#2:235\n1620#2,3:236\n1549#2:239\n1620#2,3:240\n1549#2:243\n1620#2,3:244\n*S KotlinDebug\n*F\n+ 1 BranchInitImpl.kt\ncom/android/launcher3/allapps/branch/BranchInitImpl\n*L\n186#1:235\n186#1:236,3\n189#1:239\n189#1:240,3\n192#1:243\n192#1:244,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/allapps/branch/BranchInitImpl$Companion;

.field private static final GENERAL_KEY:Ljava/lang/String; = "key_live_jd3EAsCCsxHB5U4PAHwTMhhmtChXLuGJ"

.field public static final KEY_BRANCH_SDK_INIT:Ljava/lang/String; = "key_branch_sdk_init"

.field public static final TAG:Ljava/lang/String; = "BranchInitImpl"

.field public static final TAG_BRANCH_SWITCH:Ljava/lang/String; = "oplus_branch_switch"


# instance fields
.field private final intiMutex:Lv7/a;

.field private final rusMutex:Lv7/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchInitImpl;->Companion:Lcom/android/launcher3/allapps/branch/BranchInitImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lv7/f;->a(ZI)Lv7/a;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl;->intiMutex:Lv7/a;

    invoke-static {v0, v1}, Lv7/f;->a(ZI)Lv7/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl;->rusMutex:Lv7/a;

    return-void
.end method

.method public static final synthetic access$getBranchRUSXml(Lcom/android/launcher3/allapps/branch/BranchInitImpl;Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchInitImpl;->getBranchRUSXml(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRusString(Lcom/android/launcher3/allapps/branch/BranchInitImpl;Ljava/lang/String;)Lcom/android/launcher3/allapps/branch/BranchRusConfig;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchInitImpl;->getRusString(Ljava/lang/String;)Lcom/android/launcher3/allapps/branch/BranchRusConfig;

    move-result-object p0

    return-object p0
.end method

.method private final getBranchRUSXml(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    const-string p0, "BranchInitImpl"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo p1, "version"

    const-string/jumbo v6, "xml"

    filled-new-array {p1, v6}, [Ljava/lang/String;

    move-result-object v2

    const-string v7, ""

    const/4 v8, 0x0

    :try_start_13
    sget-object v1, Lcom/android/common/rus/RomUpdateUtil;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "filtername=\'app_launcher_branch_enabled_config\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_50

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v8, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cursor.getString(xmlIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_36} :catch_56
    .catchall {:try_start_13 .. :try_end_36} :catchall_54

    :try_start_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBranchRUS versionIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4b} :catch_4d
    .catchall {:try_start_36 .. :try_end_4b} :catchall_54

    move-object v7, v0

    goto :goto_50

    :catch_4d
    move-exception p1

    move-object v7, v0

    goto :goto_57

    :cond_50
    :goto_50
    invoke-static {v8}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_6d

    :catchall_54
    move-exception p0

    goto :goto_6e

    :catch_56
    move-exception p1

    :goto_57
    :try_start_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBranchRUS, Exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_57 .. :try_end_6c} :catchall_54

    goto :goto_50

    :goto_6d
    return-object v7

    :goto_6e
    invoke-static {v8}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private final getRusString(Ljava/lang/String;)Lcom/android/launcher3/allapps/branch/BranchRusConfig;
    .registers 10

    new-instance p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_12

    :cond_10
    move v2, v1

    goto :goto_13

    :cond_12
    :goto_12
    move v2, v0

    :goto_13
    if-nez v2, :cond_1fd

    :try_start_15
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_2c
    if-eq p1, v0, :cond_1fd

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1e0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3b} :catch_1e6

    const/16 v4, 0xa

    const/4 v5, 0x6

    const-string v6, ","

    const-string/jumbo v7, "parser.nextText()"

    sparse-switch v3, :sswitch_data_1fe

    goto/16 :goto_1e0

    :sswitch_48
    :try_start_48
    const-string/jumbo v3, "search_notification_enabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto/16 :goto_1e0

    :cond_53
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->setMSearchNotificationEnable(Z)V

    goto/16 :goto_1e0

    :sswitch_60
    const-string/jumbo v3, "suggested_link_ad_position_4"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto/16 :goto_1e0

    :cond_6b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v1, v1, v5}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p1, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_87
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_9f
    invoke-static {v3}, Li4/v;->a0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->setMLinkPosition4(Ljava/util/List;)V

    goto/16 :goto_1e0

    :sswitch_a8
    const-string/jumbo v3, "suggested_link_ad_position_2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b3

    goto/16 :goto_1e0

    :cond_b3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v1, v1, v5}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p1, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_cf
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_cf

    :cond_e7
    invoke-static {v3}, Li4/v;->a0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->setMLinkPosition2(Ljava/util/List;)V

    goto/16 :goto_1e0

    :sswitch_f0
    const-string/jumbo v3, "suggested_app_ad_count"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fb

    goto/16 :goto_1e0

    :cond_fb
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->setMAppAdCount(I)V

    goto/16 :goto_1e0

    :sswitch_10b
    const-string/jumbo v3, "tag_bubble_enabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_116

    goto/16 :goto_1e0

    :cond_116
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->setMBubbleEnable(Z)V

    goto/16 :goto_1e0

    :sswitch_123
    const-string/jumbo v3, "tag_device_protect_delay_time"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12e

    goto/16 :goto_1e0

    :cond_12e
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->setMDeviceProtectDelayTime(J)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->getMDeviceProtectDelayTime()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->setMDeviceProtectDelayTime(J)V

    sget-object p1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->Companion:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$Companion;

    const-wide/32 v3, 0x240c8400

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->getMDeviceProtectDelayTime()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {p1, v5, v6}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$Companion;->setDEVICE_PROTECT_TIME_LIMIT(J)V

    goto/16 :goto_1e0

    :sswitch_156
    const-string/jumbo v3, "suggested_app_ad_position"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_161

    goto/16 :goto_1e0

    :cond_161
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v1, v1, v5}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p1, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_195

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17d

    :cond_195
    invoke-static {v3}, Li4/v;->a0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->setMAppPosition(Ljava/util/List;)V

    goto :goto_1e0

    :sswitch_19d
    const-string/jumbo v3, "red_dot_enabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a7

    goto :goto_1e0

    :cond_1a7
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->setMRedDotEnable(Z)V

    goto :goto_1e0

    :sswitch_1b3
    const-string/jumbo v3, "oplus_branch_switch"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1bd

    goto :goto_1e0

    :cond_1bd
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->setValue(Ljava/lang/String;)V

    goto :goto_1e0

    :sswitch_1c8
    const-string/jumbo v3, "suggested_link_ad_count"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d2

    goto :goto_1e0

    :cond_1d2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->setMLinkAdCount(I)V

    :cond_1e0
    :goto_1e0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_1e4} :catch_1e6

    goto/16 :goto_2c

    :catch_1e6
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed parsing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BranchInitImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1fd
    return-object p0

    :sswitch_data_1fe
    .sparse-switch
        -0x75238784 -> :sswitch_1c8
        -0x7142bec5 -> :sswitch_1b3
        -0x68dfdc63 -> :sswitch_19d
        -0x60cf4075 -> :sswitch_156
        -0x20656463 -> :sswitch_123
        -0x1e7a1e2d -> :sswitch_10b
        -0xba86a13 -> :sswitch_f0
        0xd3c734f -> :sswitch_a8
        0xd3c7351 -> :sswitch_60
        0x794fee24 -> :sswitch_48
    .end sparse-switch
.end method

.method public static synthetic optTrack$default(Lcom/android/launcher3/allapps/branch/BranchInitImpl;ZILjava/lang/Object;)V
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    move p1, p3

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchInitImpl;->optTrack(Z)V

    return-void
.end method


# virtual methods
.method public clearIconCache()V
    .registers 2

    const-string p0, "BranchInitImpl"

    const-string v0, "clearIconCache"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lio/branch/search/BranchSearch;->clearLocalAppDrawableCache()V

    :cond_10
    return-void
.end method

.method public enableSearch(Landroid/content/Context;Z)V
    .registers 6

    const-string v0, "enableSearch enable"

    const-string v1, "BranchInitImpl"

    invoke-static {v0, p2, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1b

    sget-object v2, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->protectExpired()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/launcher3/allapps/branch/BranchInitImpl;->optTrack$default(Lcom/android/launcher3/allapps/branch/BranchInitImpl;ZILjava/lang/Object;)V

    invoke-static {}, Lio/branch/search/BranchSearch;->optInToTracking()V

    goto :goto_1e

    :cond_1b
    invoke-static {}, Lio/branch/search/BranchSearch;->optOutOfTracking()V

    :goto_1e
    :try_start_1e
    const-string/jumbo p0, "oplus_customize_personalized_search_switch_status"

    if-eqz p2, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    invoke-static {p0, v0}, Lcom/oplus/compat/provider/SettingsNative$System;->putInt(Ljava/lang/String;I)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_29

    goto :goto_35

    :catch_29
    move-exception p0

    const-string v0, "enableSearch:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BranchManager"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_35
    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->notifyNotification(Landroid/content/Context;Z)V

    return-void
.end method

.method public final getIntiMutex()Lv7/a;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl;->intiMutex:Lv7/a;

    return-object p0
.end method

.method public final getRusMutex()Lv7/a;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl;->rusMutex:Lv7/a;

    return-object p0
.end method

.method public initBranchSdk(Landroid/content/Context;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BranchInitImpl"

    const-string v1, "initBranchSdk"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lm7/l1;->a:Lm7/l1;

    sget-object v1, Lm7/y0;->b:Lm7/f0;

    new-instance v3, Lm7/i0;

    invoke-direct {v3, v0}, Lm7/i0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ll4/a;->plus(Ll4/f;)Ll4/f;

    move-result-object v3

    new-instance v5, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;-><init>(Lcom/android/launcher3/allapps/branch/BranchInitImpl;Landroid/content/Context;Ll4/d;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public final optTrack(Z)V
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "optTrack:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BranchInitImpl"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lio/branch/search/CustomEvent;

    invoke-direct {p0}, Lio/branch/search/CustomEvent;-><init>()V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "OPT_IN"

    invoke-virtual {p0, v0, p1}, Lio/branch/search/CustomEvent;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/search/CustomEvent;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEvent;->track()V

    return-void
.end method

.method public updateBranchRUS(Landroid/content/Context;)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lm7/l1;->a:Lm7/l1;

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v2, Lr7/v;->a:Lm7/b2;

    new-instance v4, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;-><init>(Lcom/android/launcher3/allapps/branch/BranchInitImpl;Landroid/content/Context;Ll4/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method
