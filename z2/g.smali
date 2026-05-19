.class public final Lz2/g;
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
    c = "com.pantanal.server.content.decision.SceneDecisionDao$unregisterContentObserver$1"
    f = "SceneDecisionDao.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Landroid/database/ContentObserver;

.field public final synthetic b:Lz2/e;


# direct methods
.method public constructor <init>(Landroid/database/ContentObserver;Lz2/e;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/ContentObserver;",
            "Lz2/e;",
            "Ll4/d<",
            "-",
            "Lz2/g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/g;->a:Landroid/database/ContentObserver;

    iput-object p2, p0, Lz2/g;->b:Lz2/e;

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

    new-instance p1, Lz2/g;

    iget-object v0, p0, Lz2/g;->a:Landroid/database/ContentObserver;

    iget-object p0, p0, Lz2/g;->b:Lz2/e;

    invoke-direct {p1, v0, p0, p2}, Lz2/g;-><init>(Landroid/database/ContentObserver;Lz2/e;Ll4/d;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance p1, Lz2/g;

    iget-object v0, p0, Lz2/g;->a:Landroid/database/ContentObserver;

    iget-object p0, p0, Lz2/g;->b:Lz2/e;

    invoke-direct {p1, v0, p0, p2}, Lz2/g;-><init>(Landroid/database/ContentObserver;Lz2/e;Ll4/d;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {p1, p0}, Lz2/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const-string v0, "SceneDecisionDao"

    sget-object v1, Lm4/a;->a:Lm4/a;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lz2/g;->a:Landroid/database/ContentObserver;

    iget-object p0, p0, Lz2/g;->b:Lz2/e;

    :try_start_b
    sget-object v1, Le3/a;->c:Le3/a$a;

    invoke-virtual {v1}, Le3/a$a;->b()Lcom/oplus/channel/server/IUserContext;

    move-result-object v2

    if-nez v2, :cond_15

    const/4 v2, 0x0

    goto :goto_1f

    :cond_15
    const-string v3, "get IUserContext,call SceneDecisionDao unRegister()"

    invoke-static {v0, v3}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, p1}, Lcom/oplus/channel/server/IUserContext;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v2, Lh4/z;->a:Lh4/z;

    :goto_1f
    if-nez v2, :cond_31

    invoke-virtual {v1}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string p1, "get Context,call SceneDecisionDao unRegister()"

    invoke-static {v0, p1}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    iget-object p0, p0, Lz2/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_3a

    goto :goto_3f

    :catchall_3a
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_3f
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_52

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "unregisterContentObserver error:"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
