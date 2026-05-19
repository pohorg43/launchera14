.class public final Ls5/a$a;
.super Lk6/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls5/a;->c(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Li5/e;Lu6/q;Lk6/o;Z)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu6/q;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lu6/q;Ljava/util/Set;Z)V
    .registers 4

    iput-object p1, p0, Ls5/a$a;->a:Lu6/q;

    iput-object p2, p0, Ls5/a$a;->b:Ljava/util/Set;

    iput-boolean p3, p0, Ls5/a$a;->c:Z

    invoke-direct {p0}, Lk6/m;-><init>()V

    return-void
.end method

.method public static synthetic f(I)V
    .registers 8

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq p0, v3, :cond_23

    if-eq p0, v5, :cond_1e

    if-eq p0, v0, :cond_19

    if-eq p0, v2, :cond_14

    const-string v6, "fakeOverride"

    aput-object v6, v1, v4

    goto :goto_27

    :cond_14
    const-string v6, "overridden"

    aput-object v6, v1, v4

    goto :goto_27

    :cond_19
    const-string v6, "member"

    aput-object v6, v1, v4

    goto :goto_27

    :cond_1e
    const-string v6, "fromCurrent"

    aput-object v6, v1, v4

    goto :goto_27

    :cond_23
    const-string v6, "fromSuper"

    aput-object v6, v1, v4

    :goto_27
    const-string v4, "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1"

    aput-object v4, v1, v3

    if-eq p0, v3, :cond_3d

    if-eq p0, v5, :cond_3d

    if-eq p0, v0, :cond_38

    if-eq p0, v2, :cond_38

    const-string p0, "addFakeOverride"

    aput-object p0, v1, v5

    goto :goto_41

    :cond_38
    const-string p0, "setOverriddenDescriptors"

    aput-object p0, v1, v5

    goto :goto_41

    :cond_3d
    const-string p0, "conflict"

    aput-object p0, v1, v5

    :goto_41
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Li5/b;)V
    .registers 3

    if-eqz p1, :cond_10

    new-instance v0, Ls5/a$a$a;

    invoke-direct {v0, p0}, Ls5/a$a$a;-><init>(Ls5/a$a;)V

    invoke-static {p1, v0}, Lk6/o;->r(Li5/b;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Ls5/a$a;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_10
    const/4 p0, 0x0

    invoke-static {p0}, Ls5/a$a;->f(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public d(Li5/b;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/b;",
            "Ljava/util/Collection<",
            "+",
            "Li5/b;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_13

    iget-boolean v0, p0, Ls5/a$a;->c:Z

    if-eqz v0, :cond_f

    invoke-interface {p1}, Li5/b;->f()Li5/b$a;

    move-result-object v0

    sget-object v1, Li5/b$a;->b:Li5/b$a;

    if-eq v0, v1, :cond_f

    return-void

    :cond_f
    invoke-super {p0, p1, p2}, Lk6/n;->d(Li5/b;Ljava/util/Collection;)V

    return-void

    :cond_13
    const/4 p0, 0x3

    invoke-static {p0}, Ls5/a$a;->f(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public e(Li5/b;Li5/b;)V
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_b

    if-eqz p2, :cond_6

    return-void

    :cond_6
    const/4 p1, 0x2

    invoke-static {p1}, Ls5/a$a;->f(I)V

    throw p0

    :cond_b
    const/4 p1, 0x1

    invoke-static {p1}, Ls5/a$a;->f(I)V

    throw p0
.end method
