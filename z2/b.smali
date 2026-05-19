.class public final Lz2/b;
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
    c = "com.pantanal.server.content.decision.DecisionDao$registerContentObserver$1"
    f = "DecisionDao.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/database/ContentObserver;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/ContentObserver;",
            "Ll4/d<",
            "-",
            "Lz2/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/b;->a:Landroid/database/ContentObserver;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 3
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

    new-instance p1, Lz2/b;

    iget-object p0, p0, Lz2/b;->a:Landroid/database/ContentObserver;

    invoke-direct {p1, p0, p2}, Lz2/b;-><init>(Landroid/database/ContentObserver;Ll4/d;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance p1, Lz2/b;

    iget-object p0, p0, Lz2/b;->a:Landroid/database/ContentObserver;

    invoke-direct {p1, p0, p2}, Lz2/b;-><init>(Landroid/database/ContentObserver;Ll4/d;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {p1, p0}, Lz2/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const-string v0, "DecisionDao"

    sget-object v1, Lm4/a;->a:Lm4/a;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    :try_start_7
    sget-object p1, Le3/a;->c:Le3/a$a;

    invoke-virtual {p1}, Le3/a$a;->b()Lcom/oplus/channel/server/IUserContext;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_25

    :cond_11
    iget-object v2, p0, Lz2/b;->a:Landroid/database/ContentObserver;

    const-string v3, "get IUserContext,call DecisionDao register()"

    invoke-static {v0, v3}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lz2/c;->b:Landroid/net/Uri;

    const-string v4, "SERVICE_DECISION_URI"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4, v2}, Lcom/oplus/channel/server/IUserContext;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v1, Lh4/z;->a:Lh4/z;

    :goto_25
    if-nez v1, :cond_4b

    invoke-virtual {p1}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lz2/c;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object p0, p0, Lz2/b;->a:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p0, "get Context,call DecisionDao register()"

    invoke-static {v0, p0}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3c} :catch_3d

    goto :goto_4b

    :catch_3d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "registerContentObserver error,"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
