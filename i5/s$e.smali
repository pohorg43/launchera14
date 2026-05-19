.class public final Li5/s$e;
.super Li5/q;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li5/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Li5/i1;)V
    .registers 2

    invoke-direct {p0, p1}, Li5/q;-><init>(Li5/i1;)V

    return-void
.end method

.method public static synthetic e(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_10

    :cond_c
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_10
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c(Ls6/g;Li5/p;Li5/l;Z)Z
    .registers 7

    const/4 p0, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_3d

    const/4 v1, 0x1

    if-eqz p3, :cond_39

    sget-object p0, Li5/s;->a:Li5/t;

    invoke-virtual {p0, p1, p2, p3, p4}, Li5/t;->c(Ls6/g;Li5/p;Li5/l;Z)Z

    move-result p0

    if-eqz p0, :cond_38

    sget-object p0, Li5/s;->m:Ls6/g;

    if-ne p1, p0, :cond_14

    return v1

    :cond_14
    sget-object p0, Li5/s;->l:Ls6/g;

    if-ne p1, p0, :cond_19

    return v0

    :cond_19
    const-class p0, Li5/e;

    invoke-static {p2, p0}, Lk6/i;->j(Li5/l;Ljava/lang/Class;)Li5/l;

    move-result-object p0

    if-eqz p0, :cond_38

    instance-of p2, p1, Ls6/i;

    if-eqz p2, :cond_38

    check-cast p1, Ls6/i;

    invoke-interface {p1}, Ls6/i;->p()Li5/e;

    move-result-object p1

    invoke-interface {p1}, Li5/e;->a()Li5/e;

    move-result-object p1

    invoke-interface {p0}, Li5/l;->a()Li5/l;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_38
    return v0

    :cond_39
    invoke-static {v1}, Li5/s$e;->e(I)V

    throw p0

    :cond_3d
    invoke-static {v0}, Li5/s$e;->e(I)V

    throw p0
.end method
