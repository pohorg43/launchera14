.class public Lcom/android/rusconfig/RusBaseXmlType1ConfigManager;
.super Lcom/android/rusconfig/RusBaseXmlConfigManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;,
        Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;,
        Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;,
        Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;,
        Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;,
        Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Companion;,
        Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$KeyWithName;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/rusconfig/RusBaseXmlConfigManager<",
        "Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRusBaseXmlType1ConfigManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RusBaseXmlType1ConfigManager.kt\ncom/android/rusconfig/RusBaseXmlType1ConfigManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,209:1\n1#2:210\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Companion;

.field private static final XML_TAG_GROUP_CONFIG_LIST:Ljava/lang/String; = "config-list"

.field private static final XML_TAG_ITEM_CONFIG:Ljava/lang/String; = "config"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager;->Companion:Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    new-instance v0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;-><init>(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0}, Lcom/android/rusconfig/RusBaseXmlConfigManager;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private final isStringItemTag(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "filter-conf"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    const-string/jumbo p0, "version"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    const-string p0, "isOpen"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    const-string p0, "filter-name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    const-string/jumbo p0, "string-array"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    const-string p0, "config-list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    const-string p0, "config"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    const/4 p0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 p0, 0x0

    :goto_3d
    return p0
.end method


# virtual methods
.method public clearAll()V
    .registers 2

    invoke-super {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->clearAll()V

    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->getChangedRusConfig()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;

    invoke-virtual {v0}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->getItemArrays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->getChangedRusConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;

    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->getConfigLists()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public parseConfigData(Ljava/lang/String;ZLcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;)Ljava/lang/Integer;
    .registers 24

    move-object/from16 v0, p1

    const-string/jumbo v1, "parser.name"

    const-string v2, "configString"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "RusBaseConfigManager"

    const/4 v4, -0x1

    if-eqz v2, :cond_1e

    const-string/jumbo v0, "parseConfigData, xmlString is empty!"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1e
    if-nez p2, :cond_36

    if-eqz p3, :cond_2b

    :try_start_22
    invoke-virtual/range {p3 .. p3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->getItemArrays()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2b
    if-eqz p3, :cond_36

    invoke-virtual/range {p3 .. p3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->getConfigLists()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_36
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0
    :try_end_4d
    .catchall {:try_start_22 .. :try_end_4d} :catchall_19f

    const/4 v5, 0x0

    const-string v6, ""

    move-object v7, v5

    move-object v8, v7

    :goto_52
    const/4 v9, 0x1

    if-eq v0, v9, :cond_198

    const/4 v9, 0x2

    const-string v10, "config-list"

    const-string/jumbo v11, "string-array"

    if-ne v9, v0, :cond_176

    :try_start_5d
    const-string/jumbo v0, "version"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "parser.nextText()"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_7f

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_7f
    move-object/from16 v13, p0

    move-object v6, v0

    goto/16 :goto_192

    :cond_84
    if-nez p2, :cond_173

    if-eqz p3, :cond_173

    invoke-virtual/range {p3 .. p3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->getItemArrays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const/4 v12, 0x0

    if-eqz v9, :cond_bd

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-lez v7, :cond_a1

    invoke-interface {v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    :cond_a1
    move-object v15, v11

    new-instance v7, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;

    const/4 v14, 0x0

    const-string v9, "itemArrayName"

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

    const/16 v17, 0x5

    const/16 v18, 0x0

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v7}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_bd

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_bd
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, p0

    invoke-direct {v13, v9}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager;->isStringItemTag(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f2

    if-eqz v7, :cond_f2

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "itemValue"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v14, v9}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v7}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-virtual {v7}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f2

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f2
    invoke-virtual/range {p3 .. p3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->getConfigLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12b

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v8

    if-lez v8, :cond_10b

    invoke-interface {v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_10d

    :cond_10b
    const-string v8, "config_list"

    :goto_10d
    new-instance v9, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;

    const/4 v15, 0x0

    const-string v10, "configListName"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x5

    const/16 v19, 0x0

    move-object v14, v9

    move-object/from16 v16, v8

    invoke-direct/range {v14 .. v19}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v9}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12a
    move-object v8, v9

    :cond_12b
    const-string v9, "config"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    if-eqz v8, :cond_192

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    if-lez v9, :cond_144

    invoke-interface {v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_146

    :cond_144
    const-string v9, "default"

    :goto_146
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;

    const/4 v15, 0x0

    const-string v12, "configName"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "configValue"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v14, v11

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v14 .. v19}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v8}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_192

    invoke-virtual {v8}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_192

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_192

    :cond_173
    move-object/from16 v13, p0

    goto :goto_192

    :cond_176
    move-object/from16 v13, p0

    const/4 v9, 0x3

    if-ne v9, v0, :cond_192

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_187

    move-object v7, v5

    goto :goto_192

    :cond_187
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_192

    move-object v8, v5

    :cond_192
    :goto_192
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_52

    :cond_198
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_19e
    .catchall {:try_start_5d .. :try_end_19e} :catchall_19f

    goto :goto_1a4

    :catchall_19f
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_1a4
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1ab

    goto :goto_1b1

    :cond_1ab
    const-string/jumbo v1, "parseConfigData, e:"

    invoke-static {v1, v0, v3}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1b1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseConfigData(Ljava/lang/String;ZLjava/lang/Object;)Ljava/lang/Integer;
    .registers 4

    check-cast p3, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager;->parseConfigData(Ljava/lang/String;ZLcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
