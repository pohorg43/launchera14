.class public final Lz2/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/e$c;
    }
.end annotation


# static fields
.field public static final c:Lz2/e$c;

.field public static final d:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Lm7/s1;


# instance fields
.field public final a:Lm7/j1;

.field public volatile b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lz2/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/e$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lz2/e;->c:Lz2/e$c;

    sget-object v0, Lz2/e$b;->a:Lz2/e$b;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lz2/e;->d:Lh4/f;

    sget-object v0, Lz2/e$a;->a:Lz2/e$a;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lz2/e;->e:Lh4/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#entrance_scene_register"

    invoke-static {v0}, Lm7/o2;->b(Ljava/lang/String;)Lm7/j1;

    move-result-object v0

    iput-object v0, p0, Lz2/e;->a:Lm7/j1;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lz2/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentProviderClient;
    .registers 6

    sget-object p0, Le3/a;->c:Le3/a$a;

    invoke-virtual {p0}, Le3/a$a;->b()Lcom/oplus/channel/server/IUserContext;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SceneDecisionDao"

    if-nez v0, :cond_d

    move-object v0, v1

    goto :goto_31

    :cond_d
    invoke-interface {v0}, Lcom/oplus/channel/server/IUserContext;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "get IUserContext, call SceneDecisionDao getClient() ,userId "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lz2/e;->d:Lh4/f;

    check-cast v3, Lh4/n;

    invoke-virtual {v3}, Lh4/n;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const-string v4, "SCENE_DECISION_URI"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/oplus/channel/server/IUserContext;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    :goto_31
    if-nez v0, :cond_53

    invoke-virtual {p0}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lz2/e;->d:Lh4/f;

    check-cast v0, Lh4/n;

    invoke-virtual {v0}, Lh4/n;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-nez p0, :cond_4c

    goto :goto_54

    :cond_4c
    const-string v0, "get Context, call SceneDecisionDao getClient()"

    invoke-static {v2, v0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    goto :goto_54

    :cond_53
    move-object v1, v0

    :goto_54
    return-object v1
.end method

.method public final b()Ljava/util/List;
    .registers 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "SceneDecisionDao"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    invoke-virtual {p0}, Lz2/e;->a()Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_86

    const/4 v8, 0x0

    if-nez p0, :cond_10

    goto/16 :goto_8b

    :cond_10
    :try_start_10
    sget-object v2, Lz2/e;->e:Lh4/f;

    check-cast v2, Lh4/n;

    invoke-virtual {v2}, Lh4/n;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_7f

    if-nez v2, :cond_28

    move-object v3, v8

    goto :goto_73

    :cond_28
    :try_start_28
    const-string v3, "scene decision query, cursor count: "

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    :goto_39
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_78

    if-eqz v3, :cond_6e

    :try_start_3f
    invoke-static {v2}, Lk3/k;->a(Landroid/database/Cursor;)Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    move-result-object v3

    const-string v4, "scene cursor serviceInfo:"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_54
    .catchall {:try_start_3f .. :try_end_54} :catchall_55

    goto :goto_5a

    :catchall_55
    move-exception v3

    :try_start_56
    invoke-static {v3}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :goto_5a
    invoke-static {v3}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_39

    const-string v4, "get item from cursor error, abandon this item, error："

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :cond_6e
    sget-object v3, Lh4/z;->a:Lh4/z;
    :try_end_70
    .catchall {:try_start_56 .. :try_end_70} :catchall_78

    :try_start_70
    invoke-static {v2, v8}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_7f

    :goto_73
    :try_start_73
    invoke-static {p0, v8}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_86

    move-object v8, v3

    goto :goto_8b

    :catchall_78
    move-exception v3

    :try_start_79
    throw v3
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception v4

    :try_start_7b
    invoke-static {v2, v3}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception v2

    :try_start_80
    throw v2
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    :catchall_81
    move-exception v3

    :try_start_82
    invoke-static {p0, v2}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_86

    :catchall_86
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v8

    :goto_8b
    invoke-static {v8}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_a4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "query error:"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_a4
    const-string p0, "queryAll"

    const-string v2, "result"

    invoke-static {v0, p0, v2, v1}, Lk3/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v1
.end method
