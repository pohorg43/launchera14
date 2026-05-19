.class public final Lio/branch/search/m2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/m2$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/m2$a;


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantLock;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lio/branch/search/k2$d;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lio/branch/search/i2;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lio/branch/search/k2$d;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/content/Context;

.field public final f:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/m2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/m2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/m2;->Companion:Lio/branch/search/m2$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/k2$f;Landroid/content/Context;I)V
    .registers 6

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/branch/search/b5$a;->c:Lio/branch/search/b5$a;

    invoke-static {p2, v0}, Lio/branch/search/b5;->a(Landroid/content/Context;Lio/branch/search/b5$a;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "BranchSharedPrefs.get(co…SharedPrefs.Files.raw_db)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/branch/search/m2;-><init>(Lio/branch/search/k2$f;Landroid/content/Context;ILandroid/content/SharedPreferences;)V

    return-void
.end method

.method public constructor <init>(Lio/branch/search/k2$f;Landroid/content/Context;ILandroid/content/SharedPreferences;)V
    .registers 14

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPrefs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/branch/search/m2;->e:Landroid/content/Context;

    iput-object p4, p0, Lio/branch/search/m2;->f:Landroid/content/SharedPreferences;

    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Lio/branch/search/m2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lio/branch/search/m2;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lio/branch/search/m2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lio/branch/search/m2;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    const-string v0, "branch_internal_databases_raw"

    invoke-interface {p4, v0, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lio/branch/search/y1;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_45
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/branch/search/y1$b;

    iget-object v0, p0, Lio/branch/search/m2;->e:Landroid/content/Context;

    iget-object v1, p4, Lio/branch/search/y1$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_60

    goto :goto_45

    :cond_60
    sget-object v0, Lio/branch/search/y1;->a:Lio/branch/search/y1;

    iget-object v1, p4, Lio/branch/search/y1$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/branch/search/y1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p4, Lio/branch/search/y1$b;->b:Ljava/lang/String;

    invoke-interface {p1, v1}, Lio/branch/search/k2$f;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    const-string v1, "provider.getRawDatabaseO…ervableWhitelists(f.name)"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lio/branch/search/m2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "filename"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lio/branch/search/i2;

    iget-object v4, p4, Lio/branch/search/y1$b;->b:Ljava/lang/String;

    iget-object v6, p0, Lio/branch/search/m2;->e:Landroid/content/Context;

    move-object v2, v8

    move-object v3, v0

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lio/branch/search/i2;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/util/Set;)V

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :cond_8a
    invoke-static {}, Lio/branch/search/k2$d;->values()[Lio/branch/search/k2$d;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    :goto_90
    if-ge p3, p2, :cond_c2

    aget-object p4, p1, p3

    iget-object v0, p0, Lio/branch/search/m2;->f:Landroid/content/SharedPreferences;

    invoke-virtual {p4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dbName"

    if-eqz v0, :cond_ab

    iget-object v3, p0, Lio/branch/search/m2;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ab
    iget-object v0, p0, Lio/branch/search/m2;->f:Landroid/content/SharedPreferences;

    invoke-virtual {p4}, Lio/branch/search/k2$d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bf

    iget-object v2, p0, Lio/branch/search/m2;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bf
    add-int/lit8 p3, p3, 0x1

    goto :goto_90

    :cond_c2
    invoke-virtual {p0}, Lio/branch/search/m2;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/a2$l;)Lio/branch/search/i2;
    .registers 8

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/branch/search/y1;->a:Lio/branch/search/y1;

    iget-object v1, p1, Lio/branch/search/a2$l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/branch/search/y1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/m2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/i2;

    if-eqz v0, :cond_86

    const-string v1, "openDBs[targetSelection]… DB: ${action.targetDB}\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lio/branch/search/o2;

    invoke-direct {v1, p1}, Lio/branch/search/o2;-><init>(Lio/branch/search/a2$l;)V

    invoke-virtual {v0, v1}, Lio/branch/search/i2;->a(Lio/branch/search/l2;)Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_85

    iget-object v1, p1, Lio/branch/search/a2$l;->c:Ljava/util/List;

    const-string v2, "action.queries"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "targetDB.cannonicalName"

    const-string v4, "it.id"

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/a2$h;

    iget-object v5, p0, Lio/branch/search/m2;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v2, Lio/branch/search/a2$h;->a:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lio/branch/search/k2$d;->valueOf(Ljava/lang/String;)Lio/branch/search/k2$d;

    move-result-object v2

    iget-object v4, v0, Lio/branch/search/i2;->b:Ljava/lang/String;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_56
    iget-object p1, p1, Lio/branch/search/a2$l;->d:Ljava/util/List;

    const-string v1, "action.categoryUpdates"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_61
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/a2$i;

    iget-object v2, p0, Lio/branch/search/m2;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, v1, Lio/branch/search/a2$i;->a:Ljava/lang/String;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lio/branch/search/k2$d;->valueOf(Ljava/lang/String;)Lio/branch/search/k2$d;

    move-result-object v1

    iget-object v5, v0, Lio/branch/search/i2;->b:Ljava/lang/String;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    :cond_81
    invoke-virtual {p0}, Lio/branch/search/m2;->a()V

    return-object v0

    :cond_85
    throw v1

    :cond_86
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to update unknown DB: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lio/branch/search/a2$l;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Exception;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/requery/android/database/sqlite/SQLiteDatabase;",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Exception;"
        }
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "func"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/branch/search/m2;->b(Ljava/lang/String;)Lio/branch/search/i2;

    move-result-object p0

    iget-object p0, p0, Lio/branch/search/i2;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    const-string p1, "getDb(db).mHelper"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    :try_start_19
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string p1, "database"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_27} :catch_31
    .catchall {:try_start_19 .. :try_end_27} :catchall_2c

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p0, 0x0

    return-object p0

    :catchall_2c
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catch_31
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1
.end method

.method public final a(Lio/branch/search/k2$d;Lio/branch/search/x1;Lio/branch/search/f2;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/branch/search/k2$d;",
            "Lio/branch/search/x1;",
            "Lio/branch/search/f2<",
            "TT;TR;>;)TR;"
        }
    .end annotation

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accum"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/m2;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_95

    const-string v1, "queryTypeToDB[t] ?: thro…b may have been deleted\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/branch/search/m2;->b(Ljava/lang/String;)Lio/branch/search/i2;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lio/branch/search/f2;->b:Lio/branch/search/f2;

    const-string v6, "SELECT query, binds FROM internal_queries WHERE id = ?"

    invoke-virtual {v1, v6, v3, v4}, Lio/branch/search/i2;->a(Ljava/lang/String;[Ljava/lang/String;Lio/branch/search/f2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh4/j;

    iget-object v4, v3, Lh4/j;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v3, v3, Lh4/j;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v4, :cond_87

    iget-object v0, p0, Lio/branch/search/m2;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7e

    const-string v6, "setupTeardownTypeToDB[t]…ms(bindingParams), accum)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/branch/search/m2;->b(Ljava/lang/String;)Lio/branch/search/i2;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    new-instance p1, Lio/branch/search/x2;

    invoke-direct {p1, p2}, Lio/branch/search/x2;-><init>(Lio/branch/search/x1;)V

    const-string v2, "SELECT * FROM internal_setup_teardown WHERE id = ?"

    invoke-virtual {p0, v2, v0, p1}, Lio/branch/search/i2;->a(Ljava/lang/String;[Ljava/lang/String;Lio/branch/search/f2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/j;

    iget-object p1, p0, Lh4/j;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lh4/j;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    new-instance v0, Lio/branch/search/g2;

    invoke-virtual {p2, v3}, Lio/branch/search/x1;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v4, p2}, Lio/branch/search/g2;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1, p1, v0, p0, p3}, Lio/branch/search/j2;->a(Lio/branch/search/i2;Ljava/util/List;Lio/branch/search/g2;Ljava/util/List;Lio/branch/search/f2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7e
    invoke-virtual {p2, v3}, Lio/branch/search/x1;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v4, p0, p3}, Lio/branch/search/i2;->a(Ljava/lang/String;[Ljava/lang/String;Lio/branch/search/f2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_87
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "DB "

    const-string p2, " doesn\'t have the query"

    invoke-static {p1, v0, p2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_95
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t find query in shared prefs, db may have been deleted"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/x1;Lio/branch/search/f2;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/branch/search/x1;",
            "Lio/branch/search/f2<",
            "TT;TR;>;)TR;"
        }
    .end annotation

    const-string v0, "targetDb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accum"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/branch/search/m2;->b(Ljava/lang/String;)Lio/branch/search/i2;

    move-result-object p0

    invoke-virtual {p4, p3}, Lio/branch/search/x1;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p5}, Lio/branch/search/i2;->a(Ljava/lang/String;[Ljava/lang/String;Lio/branch/search/f2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .registers 9

    const-string v0, "<this>"

    iget-object v1, p0, Lio/branch/search/m2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_7
    iget-object v2, p0, Lio/branch/search/m2;->f:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_a5

    const-string v3, "branch_internal_databases_raw"

    :try_start_f
    iget-object v4, p0, Lio/branch/search/m2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v4

    const-string v5, "openDBs.keys()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Li4/q;

    invoke-direct {v5, v4}, Li4/q;-><init>(Ljava/util/Enumeration;)V

    invoke-static {v5}, Lj7/l;->f(Ljava/util/Iterator;)Lj7/h;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_36

    sget-object v0, Li4/a0;->a:Li4/a0;

    goto :goto_5c

    :cond_36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_45

    invoke-static {v4}, Ly0/b;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_5c

    :cond_45
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_5b
    move-object v0, v5

    :goto_5c
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lio/branch/search/k2$d;->values()[Lio/branch/search/k2$d;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_65
    if-ge v4, v3, :cond_9e

    aget-object v5, v0, v4

    iget-object v6, p0, Lio/branch/search/m2;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_7b

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_82

    :cond_7b
    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_82
    iget-object v6, p0, Lio/branch/search/m2;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_94

    invoke-virtual {v5}, Lio/branch/search/k2$d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_9b

    :cond_94
    invoke-virtual {v5}, Lio/branch/search/k2$d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_9b
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    :cond_9e
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_a1
    .catchall {:try_start_f .. :try_end_a1} :catchall_a5

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_a5
    move-exception p0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final a(I)V
    .registers 3

    iget-object p0, p0, Lio/branch/search/m2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "openDBs.values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/i2;

    invoke-virtual {v0, p1}, Lio/branch/search/i2;->b(I)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public final a(Lio/branch/search/i2;)V
    .registers 6

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/m2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_a
    iget-object v1, p0, Lio/branch/search/m2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lio/branch/search/i2;->a:Ljava/lang/String;

    const-string v3, "db.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lio/branch/search/m2;->a()V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1d
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 12

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/m2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_a
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lio/branch/search/m2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "openDBs.values"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/i2;

    iget-object v5, v3, Lio/branch/search/i2;->b:Ljava/lang/String;

    const-string v4, "it.cannonicalName"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_68

    const-string v6, "SELECT * FROM internal_versions"

    const-string v7, ""

    :try_start_35
    new-instance v8, Lio/branch/search/x1$b;

    invoke-direct {v8}, Lio/branch/search/x1$b;-><init>()V

    sget-object v9, Lio/branch/search/f2;->c:Lio/branch/search/f2;

    const-string v4, "QueryAccum.TO_JSON_OBJECT"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lio/branch/search/m2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/x1;Lio/branch/search/f2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_68

    const-string v6, "db"

    :try_start_4f
    iget-object v3, v3, Lio/branch/search/i2;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "versions"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1e

    :cond_5f
    const-string p0, "database_versions"

    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_64
    .catchall {:try_start_4f .. :try_end_64} :catchall_68

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_68
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 8

    const-string v0, "dbName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/m2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_a
    sget-object v1, Lio/branch/search/y1;->a:Lio/branch/search/y1;

    invoke-virtual {v1, p1}, Lio/branch/search/y1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lio/branch/search/m2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/i2;

    if-eqz v1, :cond_11b

    const-string p1, "openDBs[fullName] ?: run…@withLock false\n        }"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_125

    :try_start_1f
    invoke-virtual {v1}, Lio/branch/search/i2;->b()V
    :try_end_22
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_22} :catch_112
    .catchall {:try_start_1f .. :try_end_22} :catchall_125

    :try_start_22
    iget-object p1, p0, Lio/branch/search/m2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v1, Lio/branch/search/i2;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lio/branch/search/m2;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_38
    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lio/branch/search/i2;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :cond_5e
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/k2$d;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :cond_85
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_89
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/k2$d;

    iget-object v3, p0, Lio/branch/search/m2;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    :cond_9b
    iget-object p1, p0, Lio/branch/search/m2;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_aa
    :goto_aa
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lio/branch/search/i2;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_aa

    :cond_d0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/k2$d;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e1

    :cond_f7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_fb
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/k2$d;

    iget-object v2, p0, Lio/branch/search/m2;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fb

    :cond_10d
    invoke-virtual {p0}, Lio/branch/search/m2;->a()V
    :try_end_110
    .catchall {:try_start_22 .. :try_end_110} :catchall_125

    const/4 p0, 0x1

    goto :goto_121

    :catch_112
    move-exception p0

    const-string p1, "RawSqliteState.delete"

    const-string v1, "failed to close db prior to deletion."

    :try_start_117
    invoke-static {p1, v1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_120

    :cond_11b
    iget-object p0, p0, Lio/branch/search/m2;->e:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_120
    .catchall {:try_start_117 .. :try_end_120} :catchall_125

    :goto_120
    const/4 p0, 0x0

    :goto_121
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p0

    :catchall_125
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final b(Ljava/lang/String;)Lio/branch/search/i2;
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/m2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_a
    iget-object p0, p0, Lio/branch/search/m2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lio/branch/search/y1;->a:Lio/branch/search/y1;

    invoke-virtual {v1, p1}, Lio/branch/search/y1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/i2;
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_3a

    if-eqz p0, :cond_23

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string p1, "lock.withLock {\n        …me does not exist\")\n    }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_23
    :try_start_23
    new-instance p0, Lio/branch/search/BranchLocalError$DBNotReady;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/branch/search/BranchLocalError$DBNotReady;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final b()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/branch/search/i2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/m2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lio/branch/search/m2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_14
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final c()Lorg/json/JSONObject;
    .registers 13

    iget-object v0, p0, Lio/branch/search/m2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lio/branch/search/m2;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/k2$d;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_93

    const-string v11, "serving_queries_for"

    if-eqz v5, :cond_37

    goto :goto_69

    :cond_37
    const-string v7, "SELECT * FROM internal_versions"

    const-string v8, ""

    :try_start_3b
    new-instance v9, Lio/branch/search/x1$b;

    invoke-direct {v9}, Lio/branch/search/x1$b;-><init>()V

    sget-object v10, Lio/branch/search/f2;->c:Lio/branch/search/f2;

    const-string v5, "QueryAccum.TO_JSON_OBJECT"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p0

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Lio/branch/search/m2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/x1;Lio/branch/search/f2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "versions"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "db"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    :goto_69
    invoke-virtual {v5, v11, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "inner.accumulate(\"serving_queries_for\", key)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_76
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_7b
    .catchall {:try_start_3b .. :try_end_7b} :catchall_93

    const-string v2, "dbs"

    :try_start_7d
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_8a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_93

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v0, "lock.withLock {\n        …rray(accum.values))\n    }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catchall_93
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final d()Z
    .registers 6

    iget-object v0, p0, Lio/branch/search/m2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "openDBs.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/branch/search/i2;

    const-string v4, "it"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lio/branch/search/j2;->a(Lio/branch/search/i2;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_30
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/i2;

    iget-object v1, v1, Lio/branch/search/i2;->b:Ljava/lang/String;

    const-string v2, "it.cannonicalName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/branch/search/m2;->a(Ljava/lang/String;)Z

    const/4 v1, 0x1

    goto :goto_35

    :cond_4d
    return v1
.end method
