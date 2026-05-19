.class public final Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DUMP_FORBIDDEN_UNINSTALL_LIST:Z = false

.field public static final HIDE_TASKBAR_APP_LIST_FILE_NAME:Ljava/lang/String; = "launcher_app_list_for_hide_taskbar_view_local"

.field public static final INSTANCE:Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;

.field private static final LOCAL_HIDE_TASKBAR_APP_LIST_FILE_NAME:Ljava/lang/String; = "launcher_app_list_for_hide_taskbar_view_local"

.field private static final PARSE_ERROR_CODE:I = -0x1

.field private static final ROM_UPDATE_LIST_URI:Ljava/lang/String; = "content://com.oplus.romupdate.provider.db/update_list"

.field private static final TAG:Ljava/lang/String; = "HideTaskbarAppListManager"

.field private static final XML_ATTR_VALUE_DEFAULT_SWITCH_ON:Ljava/lang/String; = "activity_name"

.field private static final XML_TAG_STRING_ARRAY_NAME:Ljava/lang/String; = "string-array"

.field private static final XML_TAG_STRING_ITEM:Ljava/lang/String; = "activity"

.field private static final XML_TAG_STRING_VERSION:Ljava/lang/String; = "version"

.field private static final mHideTaskbarAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;->INSTANCE:Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;->mHideTaskbarAppList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final loadDefaultList(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_5
    const-string v0, "launcher_app_list_for_hide_taskbar_view_local"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_1a
    .catchall {:try_start_5 .. :try_end_b} :catchall_15

    :try_start_b
    invoke-static {p0}, Lcom/android/common/util/FileOperationUtils;->inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_13
    .catchall {:try_start_b .. :try_end_f} :catchall_36

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p1

    :catch_13
    move-exception v0

    goto :goto_1c

    :catchall_15
    move-exception p0

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    goto :goto_37

    :catch_1a
    move-exception v0

    move-object p0, p1

    :goto_1c
    :try_start_1c
    const-string v1, "HideTaskbarAppListManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadDefaultList, Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_36

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p1

    :catchall_36
    move-exception p1

    :goto_37
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1
.end method

.method public static final loadHideTaskbarNewestList(Landroid/content/Context;)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "HideTaskbarAppListManager"

    if-nez p0, :cond_a

    const-string p0, "loadHideTaskbarNewestList, context is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "loadHideTaskbarNewestList after synchronized"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v1

    if-nez v1, :cond_1c

    return-void

    :cond_1c
    const/4 v1, -0x1

    sget-object v2, Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;->INSTANCE:Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;->loadRUSList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_30

    invoke-direct {v2, v3, v6, v5}, Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;->parseFromXML(Ljava/lang/String;ZLjava/util/List;)I

    move-result v1

    goto :goto_35

    :cond_30
    const-string v4, "loadHideTaskbarNewestList, romUpdataXmlString is empty!"

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;->loadDefaultList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_67

    invoke-direct {v2, p0, v6, v5}, Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;->parseFromXML(Ljava/lang/String;ZLjava/util/List;)I

    move-result v4

    if-le v1, v4, :cond_46

    goto :goto_47

    :cond_46
    move-object v3, p0

    :goto_47
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_54

    const-string p0, "loadNewestList, romUpdateVersion = "

    const-string v5, ", defaultVersion = "

    invoke-static {p0, v1, v5, v4, v0}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    :cond_54
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_61

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;->updateList(Ljava/lang/String;)V

    goto :goto_66

    :cond_61
    const-string p0, "loadNewestList, selectedXmlString is empty!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_66
    return-void

    :cond_67
    const-string p0, "loadHideTaskbarNewestList, defaultXmlString is empty!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final loadRUSList(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    const-string p0, "HideTaskbarAppListManager"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo p1, "version"

    const-string/jumbo v6, "xml"

    filled-new-array {p1, v6}, [Ljava/lang/String;

    move-result-object v2

    const-string v7, ""

    const/4 v8, 0x0

    :try_start_13
    const-string v1, "content://com.oplus.romupdate.provider.db/update_list"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "filtername=\'launcher_app_list_for_hide_taskbar_view_local\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_59

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v8, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cursor.getString(xmlIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3a} :catch_5f
    .catchall {:try_start_13 .. :try_end_3a} :catchall_5d

    :try_start_3a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_54

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadRUSList versionIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_54} :catch_56
    .catchall {:try_start_3a .. :try_end_54} :catchall_5d

    :cond_54
    move-object v7, v0

    goto :goto_59

    :catch_56
    move-exception p1

    move-object v7, v0

    goto :goto_60

    :cond_59
    :goto_59
    invoke-static {v8}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_75

    :catchall_5d
    move-exception p0

    goto :goto_76

    :catch_5f
    move-exception p1

    :goto_60
    :try_start_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadRUSList, Exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_60 .. :try_end_74} :catchall_5d

    goto :goto_59

    :goto_75
    return-object v7

    :goto_76
    invoke-static {v8}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private final parseFromXML(Ljava/lang/String;ZLjava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, -0x1

    const-string v1, "HideTaskbarAppListManager"

    if-eqz p0, :cond_10

    const-string/jumbo p0, "parseFromXML, xmlString is empty!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_10
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_1c

    const-string/jumbo p0, "parseFromXML, onlyParseVersion = "

    invoke-static {p0, p2, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_1c
    if-nez p2, :cond_23

    if-eqz p3, :cond_23

    invoke-interface {p3}, Ljava/util/List;->clear()V

    :cond_23
    :try_start_23
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    const/4 v2, 0x0

    const-string v3, ""

    :goto_3d
    const/4 v4, 0x1

    if-eq p1, v4, :cond_92

    const/4 v4, 0x2

    if-ne v4, p1, :cond_8d

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v4, "version"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "parser.nextText()"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    goto :goto_8d

    :cond_5c
    if-nez p2, :cond_8d

    const-string/jumbo v4, "string-array"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    :cond_6c
    if-eqz v2, :cond_8d

    const-string v4, "activity_name"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    const-string v4, "activity"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_8d

    const-string/jumbo v4, "value"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8d
    :goto_8d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    goto :goto_3d

    :cond_92
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_96} :catch_cd
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_96} :catch_b6
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_96} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_96} :catch_97

    return p0

    :catch_97
    move-exception p0

    const-string/jumbo p1, "parseFromXML, Exception = "

    invoke-static {p1, p0, v1}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_e3

    :catch_9f
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "parseFromXML, NumberFormatException = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e3

    :catch_b6
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "parseFromXML, IOException = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e3

    :catch_cd
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "parseFromXML, XmlPullParserException = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e3
    return v0
.end method

.method private final updateList(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;->parseFromXML(Ljava/lang/String;ZLjava/util/List;)I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v1, -0x1

    cmp-long p0, p0, v1

    if-eqz p0, :cond_2f

    sget-object p0, Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;->mHideTaskbarAppList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mHideTaskbarAppList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HideTaskbarAppListManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method public final getList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;->mHideTaskbarAppList:Ljava/util/List;

    return-object p0
.end method
