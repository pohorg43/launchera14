.class public final Lz2/f;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.pantanal.server.content.decision.SceneDecisionDao$registerContentObserver$1"
    f = "SceneDecisionDao.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Lz2/e;

.field public final synthetic b:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lz2/e;Landroid/database/ContentObserver;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/e;",
            "Landroid/database/ContentObserver;",
            "Ll4/d<",
            "-",
            "Lz2/f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/f;->a:Lz2/e;

    iput-object p2, p0, Lz2/f;->b:Landroid/database/ContentObserver;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lz2/f;

    iget-object v0, p0, Lz2/f;->a:Lz2/e;

    iget-object p0, p0, Lz2/f;->b:Landroid/database/ContentObserver;

    invoke-direct {p1, v0, p0, p2}, Lz2/f;-><init>(Lz2/e;Landroid/database/ContentObserver;Ll4/d;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance p1, Lz2/f;

    iget-object v0, p0, Lz2/f;->a:Lz2/e;

    iget-object p0, p0, Lz2/f;->b:Landroid/database/ContentObserver;

    invoke-direct {p1, v0, p0, p2}, Lz2/f;-><init>(Lz2/e;Landroid/database/ContentObserver;Ll4/d;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {p1, p0}, Lz2/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object v0, Lm4/a;->a:Lm4/a;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lz2/f;->a:Lz2/e;

    iget-object p0, p0, Lz2/f;->b:Landroid/database/ContentObserver;

    monitor-enter p1

    :try_start_a
    iget-object v0, p1, Lz2/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_8d

    if-nez v0, :cond_89

    const/4 v0, 0x0

    :try_start_13
    sget-object v1, Le3/a;->c:Le3/a$a;

    invoke-virtual {v1}, Le3/a$a;->b()Lcom/oplus/channel/server/IUserContext;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_40

    :cond_1e
    const-string v4, "SceneDecisionDao"

    const-string v5, "get IUserContext,call DecisionDao register()"

    invoke-static {v4, v5}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lz2/e;->c:Lz2/e$c;

    sget-object v4, Lz2/e;->d:Lh4/f;

    check-cast v4, Lh4/n;

    invoke-virtual {v4}, Lh4/n;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    const-string v5, "SCENE_DECISION_URI"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v4, v3, p0}, Lcom/oplus/channel/server/IUserContext;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p1, Lz2/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v2, Lh4/z;->a:Lh4/z;

    :goto_40
    if-nez v2, :cond_68

    invoke-virtual {v1}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lz2/e;->c:Lz2/e$c;

    sget-object v2, Lz2/e;->d:Lh4/f;

    check-cast v2, Lh4/n;

    invoke-virtual {v2}, Lh4/n;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p0, "SceneDecisionDao"

    const-string v1, "get Context,call DecisionDao register()"

    invoke-static {p0, v1}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lz2/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_68

    :catchall_66
    move-exception p0

    goto :goto_6b

    :cond_68
    :goto_68
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_6a
    .catchall {:try_start_13 .. :try_end_6a} :catchall_66

    goto :goto_6f

    :goto_6b
    :try_start_6b
    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_6f
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_89

    const-string v1, "SceneDecisionDao"

    const-string v2, "registerContentObserver error:"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lz2/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_89
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_8b
    .catchall {:try_start_6b .. :try_end_8b} :catchall_8d

    monitor-exit p1

    return-object p0

    :catchall_8d
    move-exception p0

    monitor-exit p1

    throw p0
.end method
