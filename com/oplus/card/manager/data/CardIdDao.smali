.class public final Lcom/oplus/card/manager/data/CardIdDao;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/manager/data/CardIdDao$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCardIdDao.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardIdDao.kt\ncom/oplus/card/manager/data/CardIdDao\n+ 2 GlobalDI.kt\ncom/oplus/card/di/GlobalDI\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,164:1\n42#2,4:165\n1855#3,2:169\n1855#3,2:171\n1855#3,2:173\n*S KotlinDebug\n*F\n+ 1 CardIdDao.kt\ncom/oplus/card/manager/data/CardIdDao\n*L\n33#1:165,4\n73#1:169,2\n80#1:171,2\n142#1:173,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/card/manager/data/CardIdDao$Companion;

.field private static final TAG:Ljava/lang/String; = "CardIdDao"


# instance fields
.field private final context$delegate:Lh4/f;

.field private final databaseHelper$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/manager/data/CardIdDao$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/manager/data/CardIdDao$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/manager/data/CardIdDao;->Companion:Lcom/oplus/card/manager/data/CardIdDao$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oplus/card/di/GlobalDI;->INSTANCE:Lcom/oplus/card/di/GlobalDI;

    invoke-virtual {v0}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Lazy<T of com.oplus.card.di.GlobalDI.injectSingle>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lh4/f;

    iput-object v0, p0, Lcom/oplus/card/manager/data/CardIdDao;->context$delegate:Lh4/f;

    new-instance v0, Lcom/oplus/card/manager/data/CardIdDao$databaseHelper$2;

    invoke-direct {v0, p0}, Lcom/oplus/card/manager/data/CardIdDao$databaseHelper$2;-><init>(Lcom/oplus/card/manager/data/CardIdDao;)V

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/card/manager/data/CardIdDao;->databaseHelper$delegate:Lh4/f;

    return-void

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "the class are not injected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$getContext(Lcom/oplus/card/manager/data/CardIdDao;)Landroid/content/Context;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/card/manager/data/CardIdDao;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/data/CardIdDao;->context$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method private final getDatabaseHelper()Lcom/oplus/card/manager/data/DatabaseHelper;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/data/CardIdDao;->databaseHelper$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/manager/data/DatabaseHelper;

    return-object p0
.end method

.method private final queryMaxCardIdAsCardType(Landroid/database/sqlite/SQLiteDatabase;I)I
    .registers 13

    const/4 p0, -0x1

    if-eqz p1, :cond_52

    const-string v0, "card_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "card_id"

    const-string v4, "card_type=?"

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_52

    const-string p2, "cursor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_27
    :goto_27
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_39

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-ge p0, p2, :cond_27

    move p0, p2

    goto :goto_27

    :cond_39
    :try_start_39
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_3f

    goto :goto_44

    :catchall_3f
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_44
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4b

    goto :goto_52

    :cond_4b
    const-string p2, "queryMaxCardIdAsCardType, cursor close error: "

    const-string v0, "CardIdDao"

    invoke-static {p2, p1, v0}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_52
    :goto_52
    return p0
.end method


# virtual methods
.method public final deleteCardIds(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CardIdDao"

    const-string v1, "list"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/oplus/card/manager/data/CardIdDao;->getDatabaseHelper()Lcom/oplus/card/manager/data/DatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_10} :catch_94
    .catchall {:try_start_8 .. :try_end_10} :catchall_92

    if-eqz p0, :cond_1e

    :try_start_12
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_1e

    :catchall_16
    move-exception p1

    move-object v1, p0

    goto/16 :goto_b3

    :catch_1a
    move-exception p1

    move-object v1, p0

    goto/16 :goto_95

    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/card/manager/domain/model/CardIdInfo;

    if-eqz p0, :cond_56

    const-string v3, "card_id"

    const-string v4, "card_type=? AND card_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getCardId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_57

    :cond_56
    move-object v3, v1

    :goto_57
    if-nez v3, :cond_5a

    goto :goto_22

    :cond_5a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "Card"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete error: type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", cardId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getCardId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_87
    if-eqz p0, :cond_8c

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_8c} :catch_1a
    .catchall {:try_start_12 .. :try_end_8c} :catchall_16

    :cond_8c
    if-eqz p0, :cond_b2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_b2

    :catchall_92
    move-exception p1

    goto :goto_b3

    :catch_94
    move-exception p1

    :goto_95
    :try_start_95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteCardIds error: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_95 .. :try_end_ad} :catchall_92

    if-eqz v1, :cond_b2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_b2
    :goto_b2
    return-void

    :goto_b3
    if-eqz v1, :cond_b8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_b8
    throw p1
.end method

.method public final loadAllCardId()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "card_id"

    const-string v1, "card_type"

    const-string v2, "CardIdDao"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :try_start_c
    invoke-direct {p0}, Lcom/oplus/card/manager/data/CardIdDao;->getDatabaseHelper()Lcom/oplus/card/manager/data/DatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "card_id"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_2d

    const-string p0, "Card"

    const-string v0, "loadAllCardId error: cursor is null"

    invoke-static {p0, v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_2c} :catch_5a
    .catchall {:try_start_c .. :try_end_2c} :catchall_58

    return-object v3

    :cond_2d
    :try_start_2d
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_35
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v6, Lcom/oplus/card/manager/domain/model/CardIdInfo;

    invoke-direct {v6, v4, v5}, Lcom/oplus/card/manager/domain/model/CardIdInfo;-><init>(II)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_4b} :catch_54
    .catchall {:try_start_2d .. :try_end_4b} :catchall_50

    goto :goto_35

    :cond_4c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_78

    :catchall_50
    move-exception v0

    move-object v4, p0

    move-object p0, v0

    goto :goto_79

    :catch_54
    move-exception v0

    move-object v4, p0

    move-object p0, v0

    goto :goto_5b

    :catchall_58
    move-exception p0

    goto :goto_79

    :catch_5a
    move-exception p0

    :goto_5b
    :try_start_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAllCardId error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_5b .. :try_end_73} :catchall_58

    if-eqz v4, :cond_78

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_78
    :goto_78
    return-object v3

    :goto_79
    if-eqz v4, :cond_7e

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7e
    throw p0
.end method

.method public final saveCardIds(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CardIdDao"

    const-string v1, "list"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/oplus/card/manager/data/CardIdDao;->getDatabaseHelper()Lcom/oplus/card/manager/data/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_10} :catch_137
    .catchall {:try_start_8 .. :try_end_10} :catchall_135

    if-eqz v2, :cond_1e

    :try_start_12
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_1e

    :catchall_16
    move-exception p0

    move-object v1, v2

    goto/16 :goto_156

    :catch_1a
    move-exception p0

    move-object v1, v2

    goto/16 :goto_138

    :cond_1e
    :goto_1e
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/card/manager/domain/model/CardIdInfo;

    invoke-virtual {v4}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/card/manager/domain/model/CardIdInfo;

    if-eqz v5, :cond_4c

    invoke-virtual {v5}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getCardId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_4d

    :cond_4c
    move-object v5, v1

    :goto_4d
    if-eqz v5, :cond_59

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getCardId()I

    move-result v6

    if-ge v5, v6, :cond_27

    :cond_59
    invoke-virtual {v4}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_65
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string v3, "map.values"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_72
    :goto_72
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/card/manager/domain/model/CardIdInfo;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/oplus/card/manager/data/CardIdDao;->queryMaxCardIdAsCardType(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v4

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getCardId()I

    move-result v5
    :try_end_8a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_8a} :catch_1a
    .catchall {:try_start_12 .. :try_end_8a} :catchall_16

    if-ge v4, v5, :cond_72

    const-string v4, "card_id"

    if-eqz v2, :cond_a9

    :try_start_90
    const-string v5, "card_type=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_a8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_90 .. :try_end_a8} :catch_1a
    .catchall {:try_start_90 .. :try_end_a8} :catchall_16

    goto :goto_aa

    :cond_a9
    move-object v5, v1

    :goto_aa
    const-string v6, "Card"

    if-nez v5, :cond_af

    goto :goto_cd

    :cond_af
    :try_start_af
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_cd

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete error: type = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v0, v5}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_cd
    :goto_cd
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "card_type"

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getCardId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v2, :cond_f5

    invoke-virtual {v2, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_f6

    :cond_f5
    move-object v4, v1

    :goto_f6
    const-wide/16 v7, -0x1

    if-nez v4, :cond_fc

    goto/16 :goto_72

    :cond_fc
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-nez v4, :cond_72

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert error: type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", cardId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getCardId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_72

    :cond_12a
    if-eqz v2, :cond_12f

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_af .. :try_end_12f} :catch_1a
    .catchall {:try_start_af .. :try_end_12f} :catchall_16

    :cond_12f
    if-eqz v2, :cond_155

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_155

    :catchall_135
    move-exception p0

    goto :goto_156

    :catch_137
    move-exception p0

    :goto_138
    :try_start_138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveCardIds error: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_150
    .catchall {:try_start_138 .. :try_end_150} :catchall_135

    if-eqz v1, :cond_155

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_155
    :goto_155
    return-void

    :goto_156
    if-eqz v1, :cond_15b

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_15b
    throw p0
.end method
