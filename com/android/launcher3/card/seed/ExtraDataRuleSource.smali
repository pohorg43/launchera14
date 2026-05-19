.class public final Lcom/android/launcher3/card/seed/ExtraDataRuleSource;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/seed/ExtraDataRuleSource$Companion;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.oplus.assistantscreen.card.groupcard.GroupCardProvider"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final Companion:Lcom/android/launcher3/card/seed/ExtraDataRuleSource$Companion;

.field private static final DUPLICATE_CARD_LIST_URI:Landroid/net/Uri;

.field private static final PATH_DUPLICATE:Ljava/lang/String; = "duplicate_card_type_lists"

.field private static final TAG:Ljava/lang/String; = "ExtraDataRuleSource"


# instance fields
.field private analogousCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final dataRuleResObserver:Landroid/database/ContentObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->Companion:Lcom/android/launcher3/card/seed/ExtraDataRuleSource$Companion;

    const-string v0, "content://com.oplus.assistantscreen.card.groupcard.GroupCardProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "parse(\"content://$AUTHORITY\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "duplicate_card_type_lists"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "withAppendedPath(AUTHORITY_URI, PATH_DUPLICATE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->DUPLICATE_CARD_LIST_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->context:Landroid/content/Context;

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource$dataRuleResObserver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource$dataRuleResObserver$1;-><init>(Lcom/android/launcher3/card/seed/ExtraDataRuleSource;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->dataRuleResObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->parseContent2List$lambda$6()V

    return-void
.end method

.method private final parseContent2List(Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v0, "parseContent2List: string.length = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtraDataRuleSource"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseContent2List, string = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    const/4 v0, 0x1

    new-instance v2, Lcom/android/launcher3/card/seed/ExtraDataRuleSource$parseContent2List$listType$1;

    invoke-direct {v2}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource$parseContent2List$listType$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    :try_start_3c
    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v4, Lcom/android/launcher3/card/utils/StringOnlyTypeAdapter;

    invoke-direct {v4}, Lcom/android/launcher3/card/utils/StringOnlyTypeAdapter;-><init>()V

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->analogousCards:Ljava/util/List;

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_58
    .catchall {:try_start_3c .. :try_end_58} :catchall_59

    goto :goto_5e

    :catchall_59
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_5e
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_65

    goto :goto_6c

    :cond_65
    const/4 v0, 0x0

    const-string/jumbo p1, "parseContent2List, error: "

    invoke-static {p1, p0, v1}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_6c
    if-eqz v0, :cond_75

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object p1, Lcom/android/common/util/p0;->c:Lcom/android/common/util/p0;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_75
    return-void
.end method

.method private static final parseContent2List$lambda$6()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/groupcard/GroupCardView;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->tryRegroup()V

    :cond_b
    return-void
.end method


# virtual methods
.method public final fetchAnalogousCards()V
    .registers 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "ExtraDataRuleSource"

    const-string v1, "fetchAnalogousCards"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->context:Landroid/content/Context;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_1a

    const-string v3, "com.oplus.assistantscreen.card.groupcard.GroupCardProvider"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_4d

    move-object v8, v2

    goto :goto_1b

    :cond_1a
    move-object v8, v1

    :goto_1b
    if-eqz v8, :cond_54

    :try_start_1d
    sget-object v3, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->DUPLICATE_CARD_LIST_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_54

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "duplicate_card_type_lists"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    const-string v3, "getString(getColumnIndex(PATH_DUPLICATE))"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->parseContent2List(Ljava/lang/String;)V

    goto :goto_2a

    :cond_45
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catchall {:try_start_1d .. :try_end_48} :catchall_4a

    move-object v1, v2

    goto :goto_54

    :catchall_4a
    move-exception p0

    move-object v1, v8

    goto :goto_4e

    :catchall_4d
    move-exception p0

    :goto_4e
    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    move-object v8, v1

    move-object v1, p0

    :cond_54
    :goto_54
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5f

    const-string v1, "Error occur while fetchAnalogousCards, e = "

    invoke-static {v1, p0, v0}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_5f
    if-eqz v8, :cond_64

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_64
    return-void
.end method

.method public final getAnalogousCards()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->analogousCards:Ljava/util/List;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final registerObserver$OplusLauncher_RealmePallExportAallRelease()V
    .registers 4

    const-string v0, "ExtraDataRuleSource"

    const-string/jumbo v1, "registerObserver"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->context:Landroid/content/Context;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1a

    sget-object v1, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->DUPLICATE_CARD_LIST_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->dataRuleResObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1a
    return-void
.end method

.method public final unregisterObserver$OplusLauncher_RealmePallExportAallRelease()V
    .registers 3

    const-string v0, "ExtraDataRuleSource"

    const-string/jumbo v1, "unregisterObserver"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->context:Landroid/content/Context;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->dataRuleResObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_17
    return-void
.end method
