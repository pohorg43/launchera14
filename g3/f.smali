.class public abstract Lg3/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm7/j0;
.implements Lcom/pantanal/server/content/servicelog/UserUnlockManager$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm7/j0;",
        "Lcom/pantanal/server/content/servicelog/UserUnlockManager$a;"
    }
.end annotation


# instance fields
.field public final a:Lg3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg3/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lm7/j0;

.field public c:Lcom/android/launcher/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher/w;"
        }
    .end annotation
.end field

.field public d:Lm7/s1;

.field public e:Lm7/s1;

.field public final f:Lg3/f$a;


# direct methods
.method public constructor <init>(Lg3/e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg3/e<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "serviceDao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg3/f;->a:Lg3/e;

    invoke-static {}, Lm7/k0;->b()Lm7/j0;

    move-result-object p1

    iput-object p1, p0, Lg3/f;->b:Lm7/j0;

    const-string p1, "ConfigCenter"

    const-string v0, "Decision register user unlock"

    invoke-static {p1, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/pantanal/server/content/servicelog/UserUnlockManager;->a:Lcom/pantanal/server/content/servicelog/UserUnlockManager;

    const-string v0, "ob"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pantanal/server/content/servicelog/UserUnlockManager;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lg3/f$a;

    invoke-direct {p1, p0}, Lg3/f$a;-><init>(Lg3/f;)V

    iput-object p1, p0, Lg3/f;->f:Lg3/f$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    new-instance v3, Lg3/f$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lg3/f$b;-><init>(Lg3/f;Ll4/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object v0

    iput-object v0, p0, Lg3/f;->d:Lm7/s1;

    return-void
.end method

.method public getCoroutineContext()Ll4/f;
    .registers 1

    iget-object p0, p0, Lg3/f;->b:Lm7/j0;

    invoke-interface {p0}, Lm7/j0;->getCoroutineContext()Ll4/f;

    move-result-object p0

    return-object p0
.end method

.method public onUserUnlock()V
    .registers 3

    const-string v0, "ConfigCenter"

    const-string v1, "user unlock, queryAndNotify"

    invoke-static {v0, v1}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg3/f;->a()V

    return-void
.end method
