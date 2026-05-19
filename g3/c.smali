.class public final Lg3/c;
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
    c = "com.pantanal.server.content.upkmanage.config.IServiceDao$registerContentObserver$1"
    f = "IServiceDao.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Lg3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg3/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lg3/e;Landroid/database/ContentObserver;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg3/e<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/database/ContentObserver;",
            "Ll4/d<",
            "-",
            "Lg3/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lg3/c;->a:Lg3/e;

    iput-object p2, p0, Lg3/c;->b:Landroid/database/ContentObserver;

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

    new-instance p1, Lg3/c;

    iget-object v0, p0, Lg3/c;->a:Lg3/e;

    iget-object p0, p0, Lg3/c;->b:Landroid/database/ContentObserver;

    invoke-direct {p1, v0, p0, p2}, Lg3/c;-><init>(Lg3/e;Landroid/database/ContentObserver;Ll4/d;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance p1, Lg3/c;

    iget-object v0, p0, Lg3/c;->a:Lg3/e;

    iget-object p0, p0, Lg3/c;->b:Landroid/database/ContentObserver;

    invoke-direct {p1, v0, p0, p2}, Lg3/c;-><init>(Lg3/e;Landroid/database/ContentObserver;Ll4/d;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {p1, p0}, Lg3/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object v0, Lm4/a;->a:Lm4/a;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    :try_start_5
    sget-object p1, Le3/a;->c:Le3/a$a;

    invoke-virtual {p1}, Le3/a$a;->b()Lcom/oplus/channel/server/IUserContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_26

    :cond_10
    iget-object v2, p0, Lg3/c;->a:Lg3/e;

    iget-object v3, p0, Lg3/c;->b:Landroid/database/ContentObserver;

    invoke-virtual {v2}, Lg3/e;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "get IUserContext,call IServiceDao register()"

    invoke-static {v4, v5}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lg3/e;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v2, v1, v3}, Lcom/oplus/channel/server/IUserContext;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    :goto_26
    if-nez v0, :cond_53

    invoke-virtual {p1}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lg3/c;->a:Lg3/e;

    invoke-virtual {v0}, Lg3/e;->c()Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lg3/c;->b:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lg3/c;->a:Lg3/e;

    invoke-virtual {p1}, Lg3/e;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "get Context,call IServiceDao register()"

    invoke-static {p1, v0}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_47

    goto :goto_53

    :catchall_47
    move-exception p1

    iget-object p0, p0, Lg3/c;->a:Lg3/e;

    invoke-virtual {p0}, Lg3/e;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "registerContentObserver error"

    invoke-static {p0, v0, p1}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_53
    :goto_53
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
