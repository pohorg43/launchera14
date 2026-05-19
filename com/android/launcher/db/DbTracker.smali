.class public final Lcom/android/launcher/db/DbTracker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/db/DbTracker$ItemInfo;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDbTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DbTracker.kt\ncom/android/launcher/db/DbTracker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,583:1\n1#2:584\n1864#3,3:585\n1864#3,2:590\n1866#3:594\n13309#4,2:588\n37#5,2:592\n*S KotlinDebug\n*F\n+ 1 DbTracker.kt\ncom/android/launcher/db/DbTracker\n*L\n316#1:585,3\n345#1:590,2\n345#1:594\n327#1:588,2\n358#1:592,2\n*E\n"
    }
.end annotation


# static fields
.field public static final DEFAULT_CALLER_DEPTH:I = 0xf

.field public static final INSTANCE:Lcom/android/launcher/db/DbTracker;

.field public static final TAG:Ljava/lang/String; = "DbTracker-"

.field private static final USE_DEFAULT_CALLER:Z = true

.field private static mSelectionField:Ljava/lang/reflect/Field;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/db/DbTracker;

    invoke-direct {v0}, Lcom/android/launcher/db/DbTracker;-><init>()V

    sput-object v0, Lcom/android/launcher/db/DbTracker;->INSTANCE:Lcom/android/launcher/db/DbTracker;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17

    invoke-static/range {p0 .. p16}, Lcom/android/launcher/db/DbTracker;->i$lambda$3$lambda$2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/db/DbTracker;->getDbDeleteOrUpdateReason$lambda$25(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/db/DbTracker;->getDbDeleteOrUpdateReason$lambda$21(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17

    invoke-static/range {p0 .. p16}, Lcom/android/launcher/db/DbTracker;->i$lambda$3(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final delete(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 27
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    const-string/jumbo v2, "tag"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "db"

    move-object/from16 v15, p1

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "tableName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.launcher.settings/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/16 v2, 0xf

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v14

    const-string v2, "delete"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    move-object/from16 v15, v18

    const/16 v18, 0x5fe0

    const/16 v19, 0x0

    invoke-static/range {v1 .. v19}, Lcom/android/launcher/db/DbTracker;->i$default(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getDbDeleteAndUpdateReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/db/DbTracker;->INSTANCE:Lcom/android/launcher/db/DbTracker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/db/DbTracker;->getDbDeleteOrUpdateReason(ZZLjava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getDbDeleteOrUpdateReason(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/android/launcher/db/DbTracker$ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    if-eqz p1, :cond_8

    const-string/jumbo p1, "removing"

    goto :goto_b

    :cond_8
    const-string/jumbo p1, "updating"

    :goto_b
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " items from db 【"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_35

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    if-eqz p1, :cond_35

    sget-object p2, Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$1;->INSTANCE:Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$1;

    new-instance v0, Lcom/android/common/util/o;

    invoke-direct {v0, p2}, Lcom/android/common/util/o;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    if-eqz p1, :cond_35

    const-string p2, ","

    invoke-static {p2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_36

    :cond_35
    const/4 p1, 0x0

    :goto_36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "】. Reason: ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_48

    const-string/jumbo p3, "unknown"

    :cond_48
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_65

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_5a

    const/4 p1, 0x1

    goto :goto_5b

    :cond_5a
    const/4 p1, 0x0

    :goto_5b
    if-eqz p1, :cond_65

    const-string p1, "; caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "stringBuilder.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getDbDeleteOrUpdateReason(ZZLjava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    if-eqz p1, :cond_8

    const-string/jumbo p1, "removing and updating"

    goto :goto_11

    :cond_8
    if-eqz p2, :cond_e

    const-string/jumbo p1, "removing"

    goto :goto_11

    :cond_e
    const-string/jumbo p1, "updating"

    :goto_11
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " items from db 【"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    if-eqz p3, :cond_3c

    invoke-interface {p3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    if-eqz p2, :cond_3c

    sget-object p3, Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$3;->INSTANCE:Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$3;

    new-instance v0, Lcom/android/launcher/db/b;

    invoke-direct {v0, p3, p1}, Lcom/android/launcher/db/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    if-eqz p2, :cond_3c

    const-string p3, ","

    invoke-static {p3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_3d

    :cond_3c
    const/4 p2, 0x0

    :goto_3d
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "】. Reason: ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4f

    const-string/jumbo p4, "unknown"

    :cond_4f
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_6a

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_60

    const/4 p1, 0x1

    :cond_60
    if-eqz p1, :cond_6a

    const-string p1, "; caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "stringBuilder.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic getDbDeleteOrUpdateReason$default(Lcom/android/launcher/db/DbTracker;ZZLjava/util/Collection;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 14

    and-int/lit8 p6, p6, 0x1

    if-eqz p6, :cond_5

    const/4 p1, 0x0

    :cond_5
    move v1, p1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/db/DbTracker;->getDbDeleteOrUpdateReason(ZZLjava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getDbDeleteOrUpdateReason$lambda$21(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final getDbDeleteOrUpdateReason$lambda$25(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static final getDbDeleteReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/launcher/db/DbTracker;->getDbDeleteReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getDbDeleteReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/db/DbTracker;->INSTANCE:Lcom/android/launcher/db/DbTracker;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/db/DbTracker;->getDbDeleteOrUpdateReason(ZZLjava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getDbOldItemInfo(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher/db/DbTracker$ItemInfo;",
            ">;"
        }
    .end annotation

    const-string v1, "DbTracker-"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_8
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "_id"

    const-string/jumbo v6, "title"

    const-string v7, "intent"

    const-string v8, "container"

    const-string/jumbo v9, "screen"

    const-string v10, "cellX"

    const-string v11, "cellY"

    const-string v12, "itemType"

    const-string v13, "appWidgetId"

    const-string v14, "appWidgetProvider"

    const-string v15, "card_type"

    filled-new-array/range {v5 .. v15}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_37} :catch_c4
    .catchall {:try_start_8 .. :try_end_37} :catchall_c1

    if-eqz v4, :cond_da

    :try_start_39
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_da

    :goto_3f
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_da

    const-string v0, "_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string/jumbo v0, "title"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "intent"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "container"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string/jumbo v0, "screen"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v0, "cellX"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v0, "cellY"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v0, "itemType"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v0, "appWidgetId"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v0, "appWidgetProvider"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v0, "card_type"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    new-instance v0, Lcom/android/launcher/db/DbTracker$ItemInfo;

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Lcom/android/launcher/db/DbTracker$ItemInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIIILjava/lang/String;I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_be} :catch_bf
    .catchall {:try_start_39 .. :try_end_be} :catchall_e0

    goto :goto_3f

    :catch_bf
    move-exception v0

    goto :goto_c6

    :catchall_c1
    move-exception v0

    move-object v4, v3

    goto :goto_e1

    :catch_c4
    move-exception v0

    move-object v4, v3

    :goto_c6
    :try_start_c6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDbOldItemInfo false, e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_c6 .. :try_end_da} :catchall_e0

    :cond_da
    :try_start_da
    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    goto :goto_ea

    :catchall_e0
    move-exception v0

    :goto_e1
    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
    :try_end_e5
    .catchall {:try_start_da .. :try_end_e5} :catchall_e5

    :catchall_e5
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_ea
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_f1

    goto :goto_f6

    :cond_f1
    const-string v4, "getDbOldItemInfo e:"

    invoke-static {v4, v0, v1}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_f6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_fd

    goto :goto_fe

    :cond_fd
    move-object v2, v3

    :goto_fe
    return-object v2
.end method

.method private final getDbOldItemInfo(Ljava/lang/String;ZLandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher/db/DbTracker$ItemInfo;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_9

    sget-object v0, Lcom/android/launcher/db/DbTracker;->INSTANCE:Lcom/android/launcher/db/DbTracker;

    invoke-direct {v0, p3, p4, p5}, Lcom/android/launcher/db/DbTracker;->getDbOldItemInfo(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    goto :goto_a

    :cond_9
    const/4 p3, 0x0

    :goto_a
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p6, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1f

    const-string p4, "DbTracker-"

    invoke-static {p4, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p3, p7, p8}, Lcom/android/launcher/db/DbTracker;->getDbDeleteOrUpdateReason(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/OplusFileLog;->iDbTracker(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-object p3
.end method

.method public static final getDbUpdateReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getDbUpdateReason(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/db/DbTracker;->INSTANCE:Lcom/android/launcher/db/DbTracker;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/db/DbTracker;->getDbDeleteOrUpdateReason(ZZLjava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getFieldSelection(Landroid/content/ContentProviderOperation;)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x0

    :try_start_1
    sget-object v0, Lcom/android/launcher/db/DbTracker;->mSelectionField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_16

    const-class v0, Landroid/content/ContentProviderOperation;

    const-string v1, "mSelection"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/db/DbTracker;->mSelectionField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_12

    goto :goto_16

    :cond_12
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_16
    :goto_16
    sget-object v0, Lcom/android/launcher/db/DbTracker;->mSelectionField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_20

    :cond_1f
    move-object p1, p0

    :goto_20
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_27

    check-cast p1, Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    move-object p0, p1

    :cond_27
    return-object p0

    :catchall_28
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_35

    move-object p0, p1

    goto :goto_4b

    :cond_35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFieldSelection e:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DbTracker-"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4b
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DbTracker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->iDbTracker(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    const-string/jumbo v14, "tag"

    move-object/from16 v15, p0

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v14, "type"

    move-object/from16 v15, p1

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final i(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v15, Lcom/android/launcher/db/a;

    move-object v1, v15

    const/16 v19, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v20, v0

    move-object v0, v15

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    invoke-direct/range {v1 .. v19}, Lcom/android/launcher/db/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_48

    :cond_45
    invoke-static/range {p0 .. p16}, Lcom/android/launcher/db/DbTracker;->track(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    :goto_48
    return-void
.end method

.method public static synthetic i$default(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 33

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v8, v2

    goto :goto_b

    :cond_9
    move-object/from16 v8, p5

    :goto_b
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_11

    move-object v9, v2

    goto :goto_13

    :cond_11
    move-object/from16 v9, p6

    :goto_13
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_19

    move-object v10, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v10, p7

    :goto_1b
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_21

    move-object v11, v2

    goto :goto_23

    :cond_21
    move-object/from16 v11, p8

    :goto_23
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_29

    move-object v12, v2

    goto :goto_2b

    :cond_29
    move-object/from16 v12, p9

    :goto_2b
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_31

    move-object v13, v2

    goto :goto_33

    :cond_31
    move-object/from16 v13, p10

    :goto_33
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_39

    move-object v14, v2

    goto :goto_3b

    :cond_39
    move-object/from16 v14, p11

    :goto_3b
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_41

    move-object v15, v2

    goto :goto_43

    :cond_41
    move-object/from16 v15, p12

    :goto_43
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_4a

    move-object/from16 v16, v2

    goto :goto_4c

    :cond_4a
    move-object/from16 v16, p13

    :goto_4c
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v3 .. v16}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i$default(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 39

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v8, v2

    goto :goto_b

    :cond_9
    move-object/from16 v8, p5

    :goto_b
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_11

    move-object v9, v2

    goto :goto_13

    :cond_11
    move-object/from16 v9, p6

    :goto_13
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_19

    move-object v10, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v10, p7

    :goto_1b
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_21

    move-object v11, v2

    goto :goto_23

    :cond_21
    move-object/from16 v11, p8

    :goto_23
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_29

    move-object v12, v2

    goto :goto_2b

    :cond_29
    move-object/from16 v12, p9

    :goto_2b
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_39

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v13, v1

    goto :goto_3b

    :cond_39
    move-object/from16 v13, p10

    :goto_3b
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_41

    move-object v14, v2

    goto :goto_43

    :cond_41
    move-object/from16 v14, p11

    :goto_43
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_49

    move-object v15, v2

    goto :goto_4b

    :cond_49
    move-object/from16 v15, p12

    :goto_4b
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_52

    move-object/from16 v16, v2

    goto :goto_54

    :cond_52
    move-object/from16 v16, p13

    :goto_54
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_5d

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    goto :goto_5f

    :cond_5d
    move-object/from16 v17, p14

    :goto_5f
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_68

    move-object/from16 v18, v2

    goto :goto_6a

    :cond_68
    move-object/from16 v18, p15

    :goto_6a
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_72

    move-object/from16 v19, v2

    goto :goto_74

    :cond_72
    move-object/from16 v19, p16

    :goto_74
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v3 .. v19}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final i$lambda$3(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    const-string v0, "$tag"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$type"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final i$lambda$3$lambda$2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20

    const-string v0, "$tag"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$type"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p16}, Lcom/android/launcher/db/DbTracker;->track(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final initExtrasBundleLog(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .registers 5

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Landroid/os/Bundle;->getSize()I

    move-result p0

    if-lez p0, :cond_44

    const-string p0, ", extras: Bundle{"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_3e
    const-string/jumbo p0, "}"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    return-void
.end method

.method private final initOperationsLog(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p6

    if-eqz p2, :cond_b2

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentProviderResult;

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x0

    if-ltz v4, :cond_ae

    check-cast v5, Landroid/content/ContentProviderOperation;

    const-string v8, "\n\t"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->isDelete()Z

    move-result v8

    if-nez v8, :cond_41

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->isUpdate()Z

    move-result v8

    if-eqz v8, :cond_33

    goto :goto_41

    :cond_33
    const-string/jumbo v4, "values: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ab

    :cond_41
    :goto_41
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v11

    sget-object v8, Lcom/android/launcher/db/DbTracker;->INSTANCE:Lcom/android/launcher/db/DbTracker;

    invoke-direct {v8, v5}, Lcom/android/launcher/db/DbTracker;->getFieldSelection(Landroid/content/ContentProviderOperation;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v1, v4}, Landroid/content/ContentProviderOperation;->resolveSelectionArgsBackReferences([Landroid/content/ContentProviderResult;I)[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v1, v4}, Landroid/content/ContentProviderOperation;->resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->isDelete()Z

    move-result v10

    move-object/from16 v9, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    invoke-direct/range {v8 .. v16}, Lcom/android/launcher/db/DbTracker;->getDbOldItemInfo(Ljava/lang/String;ZLandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v8, 0x1

    if-eqz v4, :cond_6c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v8, :cond_6c

    goto :goto_6d

    :cond_6c
    move v8, v3

    :goto_6d
    const-string/jumbo v9, "oldValues: "

    if-eqz v8, :cond_83

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/db/DbTracker$ItemInfo;

    invoke-virtual {v4}, Lcom/android/launcher/db/DbTracker$ItemInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    :cond_83
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_9c

    new-array v8, v3, [Lcom/android/launcher/db/DbTracker$ItemInfo;

    invoke-interface {v4, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/launcher/db/DbTracker$ItemInfo;

    if-eqz v4, :cond_9c

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v4, "toString(this)"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9c
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9f
    const-string v4, ", newValues: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_ab
    move v4, v6

    goto/16 :goto_10

    :cond_ae
    invoke-static {}, Li4/o;->k()V

    throw v7

    :cond_b2
    return-void
.end method

.method private final initValuesLog(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 31

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p11

    const-string v4, "delete"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "}"

    const-string v7, "\n\t"

    const-string v8, "\t\tcaller:"

    const/4 v9, 0x0

    if-nez v5, :cond_3c

    const-string/jumbo v5, "update"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_3c

    :cond_22
    if-eqz v1, :cond_ab

    array-length v0, v1

    :goto_25
    if-ge v9, v0, :cond_ab

    aget-object v4, v1, v9

    const-string/jumbo v5, "values: {"

    invoke-static {v3, v8, v2, v7, v5}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    :cond_3c
    :goto_3c
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    move-object/from16 v18, p10

    invoke-direct/range {v10 .. v18}, Lcom/android/launcher/db/DbTracker;->getDbOldItemInfo(Ljava/lang/String;ZLandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_ab

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ab

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v9, 0x1

    const/4 v10, 0x0

    if-ltz v9, :cond_a7

    check-cast v4, Lcom/android/launcher/db/DbTracker$ItemInfo;

    const-string/jumbo v11, "oldValues: "

    invoke-static {v3, v8, v2, v7, v11}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/launcher/db/DbTracker$ItemInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_91

    if-ltz v9, :cond_91

    array-length v4, v1

    if-ge v9, v4, :cond_91

    const-string v4, ", newValues: {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v9

    invoke-virtual {v4}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a5

    :cond_91
    const-string v4, ", newValues: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_a2

    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v4, "toString(this)"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a2
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a5
    move v9, v5

    goto :goto_5a

    :cond_a7
    invoke-static {}, Li4/o;->k()V

    throw v10

    :cond_ab
    return-void
.end method

.method public static final insert(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 26
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p2

    const-string/jumbo v1, "tag"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "db"

    move-object/from16 v7, p1

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "tableName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.launcher.settings/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-eqz p4, :cond_35

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    aput-object p4, v1, v3

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v3, 0xf

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x5fc0

    const/16 v20, 0x0

    const-string v3, "insert"

    move-object/from16 v2, p0

    move-object v7, v1

    invoke-static/range {v2 .. v20}, Lcom/android/launcher/db/DbTracker;->i$default(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final query(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 21
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "tag"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tableName"

    move-object v4, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v11, 0x0

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v1 .. v11}, Lcom/android/launcher/db/DbTracker;->query(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 22
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "tag"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tableName"

    move-object v4, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcom/android/launcher/db/DbTracker;->query(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "db"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "tableName"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static final query(Ljava/lang/String;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "qb"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "db"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic query$default(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;
    .registers 23

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v9, v2

    goto :goto_b

    :cond_9
    move-object/from16 v9, p6

    :goto_b
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_11

    move-object v10, v2

    goto :goto_13

    :cond_11
    move-object/from16 v10, p7

    :goto_13
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_19

    move-object v11, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v11, p8

    :goto_1b
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v11}, Lcom/android/launcher/db/DbTracker;->query(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic query$default(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;
    .registers 25

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v9, v2

    goto :goto_b

    :cond_9
    move-object/from16 v9, p6

    :goto_b
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_11

    move-object v10, v2

    goto :goto_13

    :cond_11
    move-object/from16 v10, p7

    :goto_13
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_19

    move-object v11, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v11, p8

    :goto_1b
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_21

    move-object v12, v2

    goto :goto_23

    :cond_21
    move-object/from16 v12, p9

    :goto_23
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v12}, Lcom/android/launcher/db/DbTracker;->query(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic query$default(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;
    .registers 26

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move v4, v1

    goto :goto_a

    :cond_9
    move v4, p2

    :goto_a
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    move-object v9, v2

    goto :goto_13

    :cond_11
    move-object/from16 v9, p7

    :goto_13
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_19

    move-object v10, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v10, p8

    :goto_1b
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_21

    move-object v11, v2

    goto :goto_23

    :cond_21
    move-object/from16 v11, p9

    :goto_23
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_29

    move-object v12, v2

    goto :goto_2b

    :cond_29
    move-object/from16 v12, p10

    :goto_2b
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v12}, Lcom/android/launcher/db/DbTracker;->query(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic query$default(Ljava/lang/String;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;
    .registers 25

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v9, v2

    goto :goto_b

    :cond_9
    move-object/from16 v9, p6

    :goto_b
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_11

    move-object v10, v2

    goto :goto_13

    :cond_11
    move-object/from16 v10, p7

    :goto_13
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_19

    move-object v11, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v11, p8

    :goto_1b
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_21

    move-object v12, v2

    goto :goto_23

    :cond_21
    move-object/from16 v12, p9

    :goto_23
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v12}, Lcom/android/launcher/db/DbTracker;->query(Ljava/lang/String;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static final track(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v0, ": thread = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p10, :cond_34

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Number;->intValue()I

    move-result v0

    const-string v1, ", callPid = "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    if-eqz p2, :cond_42

    const-string v0, ", uri: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_42
    const/16 v16, 0x1

    if-eqz v4, :cond_5a

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4f

    move/from16 v0, v16

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    if-eqz v0, :cond_5a

    const-string v0, ", selection: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5a
    if-eqz v5, :cond_79

    array-length v0, v5

    if-nez v0, :cond_62

    move/from16 v0, v16

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    :goto_63
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_79

    const-string v0, ", selectionArgs: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_79
    sget-object v11, Lcom/android/launcher/db/DbTracker;->INSTANCE:Lcom/android/launcher/db/DbTracker;

    if-nez p13, :cond_85

    const/16 v0, 0xf

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_87

    :cond_85
    move-object/from16 v7, p13

    :goto_87
    const-string/jumbo v0, "printDbOpDefaultCaller ?…ers(DEFAULT_CALLER_DEPTH)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p14

    move-object/from16 v9, p15

    move-object/from16 v10, p16

    move-object v15, v11

    move-object v11, v14

    invoke-direct/range {v0 .. v11}, Lcom/android/launcher/db/DbTracker;->initValuesLog(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    if-eqz p6, :cond_bb

    invoke-interface/range {p6 .. p6}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_bb

    const-string v0, ", op.size: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_bb
    if-eqz v12, :cond_d1

    invoke-interface/range {p7 .. p7}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_c6

    move/from16 v0, v16

    goto :goto_c7

    :cond_c6
    const/4 v0, 0x0

    :goto_c7
    if-eqz v0, :cond_d1

    const-string v0, ", method: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d1
    if-eqz v13, :cond_e6

    invoke-interface/range {p8 .. p8}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_da

    goto :goto_dc

    :cond_da
    const/16 v16, 0x0

    :goto_dc
    if-eqz v16, :cond_e6

    const-string v0, ", arg: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e6
    move-object/from16 v0, p9

    invoke-direct {v15, v0, v14}, Lcom/android/launcher/db/DbTracker;->initExtrasBundleLog(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    if-eqz p11, :cond_f9

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, ", childrenMode: "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_f9
    if-eqz p12, :cond_107

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, ", superPowerSaveMode: "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DbTracker-"

    invoke-static {v1, v0}, Lcom/android/common/debug/OplusFileLog;->iDbTracker(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic track$default(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 39

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v8, v2

    goto :goto_b

    :cond_9
    move-object/from16 v8, p5

    :goto_b
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_11

    move-object v9, v2

    goto :goto_13

    :cond_11
    move-object/from16 v9, p6

    :goto_13
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_19

    move-object v10, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v10, p7

    :goto_1b
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_21

    move-object v11, v2

    goto :goto_23

    :cond_21
    move-object/from16 v11, p8

    :goto_23
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_29

    move-object v12, v2

    goto :goto_2b

    :cond_29
    move-object/from16 v12, p9

    :goto_2b
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_39

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v13, v1

    goto :goto_3b

    :cond_39
    move-object/from16 v13, p10

    :goto_3b
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_41

    move-object v14, v2

    goto :goto_43

    :cond_41
    move-object/from16 v14, p11

    :goto_43
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_49

    move-object v15, v2

    goto :goto_4b

    :cond_49
    move-object/from16 v15, p12

    :goto_4b
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_52

    move-object/from16 v16, v2

    goto :goto_54

    :cond_52
    move-object/from16 v16, p13

    :goto_54
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_5d

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    goto :goto_5f

    :cond_5d
    move-object/from16 v17, p14

    :goto_5f
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_68

    move-object/from16 v18, v2

    goto :goto_6a

    :cond_68
    move-object/from16 v18, p15

    :goto_6a
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_72

    move-object/from16 v19, v2

    goto :goto_74

    :cond_72
    move-object/from16 v19, p16

    :goto_74
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v3 .. v19}, Lcom/android/launcher/db/DbTracker;->track(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final update(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 29
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p2

    const-string/jumbo v1, "tag"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "db"

    move-object/from16 v7, p1

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "tableName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.launcher.settings/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-eqz p3, :cond_35

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    aput-object p3, v1, v3

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v3, 0xf

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v19, 0x5fc0

    const/16 v20, 0x0

    const-string/jumbo v3, "update"

    move-object/from16 v2, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v1

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    invoke-static/range {v2 .. v20}, Lcom/android/launcher/db/DbTracker;->i$default(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
