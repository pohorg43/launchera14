.class public final Lg3/d;
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
    c = "com.pantanal.server.content.upkmanage.config.IServiceDao$unregisterContentObserver$1"
    f = "IServiceDao.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Landroid/database/ContentObserver;

.field public final synthetic b:Lg3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg3/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/ContentObserver;Lg3/e;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/ContentObserver;",
            "Lg3/e<",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-",
            "Lg3/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lg3/d;->a:Landroid/database/ContentObserver;

    iput-object p2, p0, Lg3/d;->b:Lg3/e;

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

    new-instance p1, Lg3/d;

    iget-object v0, p0, Lg3/d;->a:Landroid/database/ContentObserver;

    iget-object p0, p0, Lg3/d;->b:Lg3/e;

    invoke-direct {p1, v0, p0, p2}, Lg3/d;-><init>(Landroid/database/ContentObserver;Lg3/e;Ll4/d;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance p1, Lg3/d;

    iget-object v0, p0, Lg3/d;->a:Landroid/database/ContentObserver;

    iget-object p0, p0, Lg3/d;->b:Lg3/e;

    invoke-direct {p1, v0, p0, p2}, Lg3/d;-><init>(Landroid/database/ContentObserver;Lg3/e;Ll4/d;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {p1, p0}, Lg3/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lm4/a;->a:Lm4/a;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    :try_start_5
    sget-object p1, Le3/a;->c:Le3/a$a;

    invoke-virtual {p1}, Le3/a$a;->b()Lcom/oplus/channel/server/IUserContext;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_21

    :cond_f
    iget-object v1, p0, Lg3/d;->b:Lg3/e;

    iget-object v2, p0, Lg3/d;->a:Landroid/database/ContentObserver;

    invoke-virtual {v1}, Lg3/e;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "get IUserContext,call IServiceDao unRegister()"

    invoke-static {v1, v3}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/oplus/channel/server/IUserContext;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    :goto_21
    if-nez v0, :cond_48

    invoke-virtual {p1}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lg3/d;->a:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p1, p0, Lg3/d;->b:Lg3/e;

    invoke-virtual {p1}, Lg3/e;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "get Context,call IServiceDao unRegister()"

    invoke-static {p1, v0}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3c

    goto :goto_48

    :catchall_3c
    move-exception p1

    iget-object p0, p0, Lg3/d;->b:Lg3/e;

    invoke-virtual {p0}, Lg3/e;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "unregisterContentObserver error"

    invoke-static {p0, v0, p1}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_48
    :goto_48
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
