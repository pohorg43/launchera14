.class public Lc5/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li5/n;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nutil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 util.kt\nkotlin/reflect/jvm/internal/CreateKCallableVisitor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,311:1\n1#2:312\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lc5/t;


# direct methods
.method public constructor <init>(Lc5/t;)V
    .registers 3

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/e;->a:Lc5/t;

    return-void
.end method


# virtual methods
.method public a(Li5/x;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Lh4/z;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lc5/x;

    iget-object p0, p0, Lc5/e;->a:Lc5/t;

    invoke-direct {p2, p0, p1}, Lc5/x;-><init>(Lc5/t;Li5/x;)V

    return-object p2
.end method

.method public b(Li5/o0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p2, Lh4/z;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p2, p1

    check-cast p2, Ll5/f0;

    iget-object v0, p2, Ll5/f0;->u:Li5/r0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    iget-object p2, p2, Ll5/f0;->v:Li5/r0;

    if-eqz p2, :cond_1d

    move v1, v2

    :cond_1d
    add-int/2addr v0, v1

    move-object p2, p1

    check-cast p2, Ll5/q0;

    iget-boolean p2, p2, Ll5/q0;->f:Z

    const/4 v1, 0x2

    if-eqz p2, :cond_44

    if-eqz v0, :cond_3c

    if-eq v0, v2, :cond_34

    if-ne v0, v1, :cond_52

    new-instance p2, Lc5/a0;

    iget-object p0, p0, Lc5/e;->a:Lc5/t;

    invoke-direct {p2, p0, p1}, Lc5/a0;-><init>(Lc5/t;Li5/o0;)V

    goto :goto_78

    :cond_34
    new-instance p2, Lc5/z;

    iget-object p0, p0, Lc5/e;->a:Lc5/t;

    invoke-direct {p2, p0, p1}, Lc5/z;-><init>(Lc5/t;Li5/o0;)V

    goto :goto_78

    :cond_3c
    new-instance p2, Lc5/y;

    iget-object p0, p0, Lc5/e;->a:Lc5/t;

    invoke-direct {p2, p0, p1}, Lc5/y;-><init>(Lc5/t;Li5/o0;)V

    goto :goto_78

    :cond_44
    if-eqz v0, :cond_71

    if-eq v0, v2, :cond_69

    if-ne v0, v1, :cond_52

    new-instance p2, Lc5/f0;

    iget-object p0, p0, Lc5/e;->a:Lc5/t;

    invoke-direct {p2, p0, p1}, Lc5/f0;-><init>(Lc5/t;Li5/o0;)V

    goto :goto_78

    :cond_52
    new-instance p0, Lc5/n0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported property: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    new-instance p2, Lc5/e0;

    iget-object p0, p0, Lc5/e;->a:Lc5/t;

    invoke-direct {p2, p0, p1}, Lc5/e0;-><init>(Lc5/t;Li5/o0;)V

    goto :goto_78

    :cond_71
    new-instance p2, Lc5/d0;

    iget-object p0, p0, Lc5/e;->a:Lc5/t;

    invoke-direct {p2, p0, p1}, Lc5/d0;-><init>(Lc5/t;Li5/o0;)V

    :goto_78
    return-object p2
.end method

.method public bridge synthetic c(Li5/e1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic d(Li5/h0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public e(Li5/k;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lc5/e;->a(Li5/x;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic f(Li5/r0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic g(Li5/z0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic h(Li5/a1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public i(Li5/q0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lc5/e;->a(Li5/x;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic j(Li5/e;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic k(Li5/e0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic l(Li5/l0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public m(Li5/p0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lc5/e;->a(Li5/x;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
