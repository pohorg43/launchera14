.class public Lcom/android/rusconfig/RusBaseTxtConfigManager;
.super Lcom/android/rusconfig/RusBaseConfigManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;,
        Lcom/android/rusconfig/RusBaseTxtConfigManager$ItemArray;,
        Lcom/android/rusconfig/RusBaseTxtConfigManager$Companion;,
        Lcom/android/rusconfig/RusBaseTxtConfigManager$KeyWithName;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/rusconfig/RusBaseConfigManager<",
        "Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRusBaseTxtConfigManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RusBaseTxtConfigManager.kt\ncom/android/rusconfig/RusBaseTxtConfigManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,239:1\n1#2:240\n731#3,9:241\n37#4,2:250\n*S KotlinDebug\n*F\n+ 1 RusBaseTxtConfigManager.kt\ncom/android/rusconfig/RusBaseTxtConfigManager\n*L\n172#1:241,9\n172#1:250,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/rusconfig/RusBaseTxtConfigManager$Companion;

.field private static final FORMAT_US_ASCII:Ljava/lang/String; = "US-ASCII"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/rusconfig/RusBaseTxtConfigManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/rusconfig/RusBaseTxtConfigManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/rusconfig/RusBaseTxtConfigManager;->Companion:Lcom/android/rusconfig/RusBaseTxtConfigManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    new-instance v0, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0}, Lcom/android/rusconfig/RusBaseConfigManager;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private final getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "0"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "prefs.getString(key, ERROR_ROM_VERSION)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public clearAll()V
    .registers 1

    invoke-super {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->clearAll()V

    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseTxtConfigManager;->clearData()V

    return-void
.end method

.method public clearData()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->getChangedRusConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;

    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;->getItemArrays()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getLocalSpVersionKey()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadAndParserLocalConfigData(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->supportRus()Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->getLocalFileConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/common/util/FileOperationUtils;->isContextFileValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "RusBaseConfigManager"

    const/4 v3, 0x1

    if-eqz v1, :cond_2b

    invoke-virtual {p0, p1}, Lcom/android/rusconfig/RusBaseTxtConfigManager;->loadLocalFileList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f

    goto :goto_31

    :cond_1f
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_3e

    const-string p0, "loadAndParserLocalConfigData load data from file failed!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/rusconfig/RusBaseTxtConfigManager;->loadAndParserRusConfigData(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_33

    :goto_31
    move v0, v3

    goto :goto_3e

    :cond_33
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_3e

    const-string p0, "loadAndParserLocalConfigData load data from rus failed!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return v0
.end method

.method public loadAndParserRusConfigData(Landroid/content/Context;)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->supportRus()Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const-string v2, "RusBaseConfigManager"

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " loadAndParserRusConfigData, load data from rus"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/rusconfig/RusBaseTxtConfigManager;->loadRusRomList(Landroid/content/Context;)Lh4/j;

    move-result-object v1

    iget-object v3, v1, Lh4/j;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "0"

    if-nez v3, :cond_42

    iget-object v3, v1, Lh4/j;->a:Ljava/lang/Object;

    goto :goto_5f

    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " loadAndParserRusConfigData, rusRomVersion is empty!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    :goto_5f
    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseTxtConfigManager;->getLocalSpVersionKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6a

    invoke-direct {p0, p1, v5}, Lcom/android/rusconfig/RusBaseTxtConfigManager;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_86

    :cond_6a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " loadAndParserRusConfigData, customLocalSpVersionKey is null!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_86
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_b6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " loadAndParserRusConfigData, rusRomVersion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", localSpVersion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b6
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_c3

    iget-object v1, v1, Lh4/j;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_c4

    :cond_c3
    const/4 v1, 0x0

    :goto_c4
    if-eqz v1, :cond_d9

    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->getLocalFileConfigName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "US-ASCII"

    invoke-static {p1, v0, v1, v2}, Lcom/android/common/util/FileOperationUtils;->saveToContextFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v5, :cond_d4

    invoke-direct {p0, p1, v5, v3}, Lcom/android/rusconfig/RusBaseTxtConfigManager;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d4
    invoke-virtual {p0, p1, v1}, Lcom/android/rusconfig/RusBaseConfigManager;->updateConfigData(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_f5

    :cond_d9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " loadAndParserRusConfigData failed, selectedBinaryData is empty!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f5
    return v0
.end method

.method public loadLocalFileList(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " loadLocalFileList, load data from file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RusBaseConfigManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->getLocalFileConfigName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-static {p1, v0, v1}, Lcom/android/common/util/FileOperationUtils;->getContextFileBytes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {p0, p1, v0}, Lcom/android/rusconfig/RusBaseConfigManager;->updateConfigData(Landroid/content/Context;Ljava/lang/String;)V

    :cond_38
    return-object v0
.end method

.method public loadRusRomList(Landroid/content/Context;)Lh4/j;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->getRusRomConfigName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    const-string v2, ""

    if-nez v0, :cond_15

    new-instance p0, Lh4/j;

    invoke-direct {p0, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_15
    const-string/jumbo v0, "version"

    const-string v3, "binary"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    :try_start_1f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string p1, "content://com.oplus.romupdate.provider.db/update_list"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filtername=\'"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->getRusRomConfigName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_97

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_97

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v10, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v10, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    if-eqz p1, :cond_74

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v3, "forName(FORMAT_US_ASCII)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_75

    :cond_74
    move-object v3, v2

    :goto_75
    new-instance p1, Lh4/j;

    invoke-direct {p1, p0, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_7a} :catch_80
    .catchall {:try_start_1f .. :try_end_7a} :catchall_7e

    invoke-static {v10}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object p1

    :catchall_7e
    move-exception p0

    goto :goto_a0

    :catch_80
    move-exception p0

    :try_start_81
    const-string p1, "RusBaseConfigManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadRusRomList e:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_81 .. :try_end_97} :catchall_7e

    :cond_97
    invoke-static {v10}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    new-instance p0, Lh4/j;

    invoke-direct {p0, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :goto_a0
    invoke-static {v10}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public parseConfigData(Ljava/lang/String;ZLcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;)Ljava/lang/Integer;
    .registers 9

    const-string p0, "configString"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_10

    :try_start_7
    invoke-virtual {p3}, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;->getItemArrays()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_10
    const-string p0, " "

    const-string/jumbo p2, "pattern"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    const-string p2, "compile(pattern)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "nativePattern"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "input"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p2}, Lk7/q;->L(I)V

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_44

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_7f

    :cond_44
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    rsub-int/lit8 v2, v1, 0x0

    move v3, p2

    :cond_4e
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-interface {p1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    if-ltz v2, :cond_69

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v2, :cond_6f

    :cond_69
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_4e

    :cond_6f
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-interface {p1, v3, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v0

    :goto_7f
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_ae

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    :cond_8d
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a1

    move v0, v1

    goto :goto_a2

    :cond_a1
    move v0, p2

    :goto_a2
    if-nez v0, :cond_8d

    invoke-interface {p1}, Ljava/util/ListIterator;->nextIndex()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p0, p1}, Li4/v;->d0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    goto :goto_b0

    :cond_ae
    sget-object p0, Li4/y;->a:Li4/y;

    :goto_b0
    new-array p1, p2, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_b8
    array-length p1, p0

    sub-int/2addr p1, v1

    if-ge p2, p1, :cond_dd

    aget-object p1, p0, p2

    add-int/lit8 v0, p2, 0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz p3, :cond_da

    invoke-virtual {p3}, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;->getItemArrays()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/rusconfig/RusBaseTxtConfigManager$ItemArray;

    invoke-direct {v3, p1, v0}, Lcom/android/rusconfig/RusBaseTxtConfigManager$ItemArray;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_da

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_da
    add-int/lit8 p2, p2, 0x2

    goto :goto_b8

    :cond_dd
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_df
    .catchall {:try_start_7 .. :try_end_df} :catchall_e0

    goto :goto_e5

    :catchall_e0
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_e5
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_ec

    goto :goto_f4

    :cond_ec
    const-string/jumbo p1, "parseConfigData e = "

    const-string p2, "RusBaseConfigManager"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_f4
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic parseConfigData(Ljava/lang/String;ZLjava/lang/Object;)Ljava/lang/Integer;
    .registers 4

    check-cast p3, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/rusconfig/RusBaseTxtConfigManager;->parseConfigData(Ljava/lang/String;ZLcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
