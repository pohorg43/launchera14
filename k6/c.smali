.class public Lk6/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz6/d$a;


# instance fields
.field public final a:Z

.field public final b:Li5/a;

.field public final c:Li5/a;


# direct methods
.method public constructor <init>(ZLi5/a;Li5/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lk6/c;->a:Z

    iput-object p2, p0, Lk6/c;->b:Li5/a;

    iput-object p3, p0, Lk6/c;->c:Li5/a;

    return-void
.end method


# virtual methods
.method public a(Ly6/j1;Ly6/j1;)Z
    .registers 7

    iget-boolean v0, p0, Lk6/c;->a:Z

    iget-object v1, p0, Lk6/c;->b:Li5/a;

    iget-object p0, p0, Lk6/c;->c:Li5/a;

    const-string v2, "$a"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$b"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "c1"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "c2"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 p0, 0x1

    goto :goto_44

    :cond_22
    invoke-interface {p1}, Ly6/j1;->e()Li5/h;

    move-result-object p1

    invoke-interface {p2}, Ly6/j1;->e()Li5/h;

    move-result-object p2

    instance-of v2, p1, Li5/a1;

    if-eqz v2, :cond_43

    instance-of v2, p2, Li5/a1;

    if-nez v2, :cond_33

    goto :goto_43

    :cond_33
    sget-object v2, Lk6/g;->a:Lk6/g;

    check-cast p1, Li5/a1;

    check-cast p2, Li5/a1;

    new-instance v3, Lk6/e;

    invoke-direct {v3, v1, p0}, Lk6/e;-><init>(Li5/a;Li5/a;)V

    invoke-virtual {v2, p1, p2, v0, v3}, Lk6/g;->b(Li5/a1;Li5/a1;ZLkotlin/jvm/functions/Function2;)Z

    move-result p0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 p0, 0x0

    :goto_44
    return p0
.end method
