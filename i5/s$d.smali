.class public final Li5/s$d;
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
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p0, v2, :cond_14

    if-eq p0, v3, :cond_f

    const-string v4, "descriptor"

    aput-object v4, v0, v1

    goto :goto_18

    :cond_f
    const-string v4, "from"

    aput-object v4, v0, v1

    goto :goto_18

    :cond_14
    const-string v4, "what"

    aput-object v4, v0, v1

    :goto_18
    const-string v1, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1"

    aput-object v1, v0, v2

    if-eq p0, v2, :cond_25

    if-eq p0, v3, :cond_25

    const-string p0, "hasContainingSourceFile"

    aput-object p0, v0, v3

    goto :goto_29

    :cond_25
    const-string p0, "isVisible"

    aput-object p0, v0, v3

    :goto_29
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

    const/4 p1, 0x1

    if-eqz p2, :cond_a7

    if-eqz p3, :cond_a2

    invoke-static {p2}, Lk6/i;->y(Li5/l;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    if-eqz p3, :cond_21

    invoke-static {p3}, Lk6/i;->f(Li5/l;)Li5/w0;

    move-result-object p0

    sget-object v0, Li5/w0;->a:Li5/w0;

    if-eq p0, v0, :cond_19

    move p0, p1

    goto :goto_1a

    :cond_19
    move p0, v1

    :goto_1a
    if-eqz p0, :cond_25

    invoke-static {p2, p3}, Li5/s;->d(Li5/l;Li5/l;)Z

    move-result p0

    return p0

    :cond_21
    invoke-static {v1}, Li5/s$d;->e(I)V

    throw p0

    :cond_25
    instance-of p0, p2, Li5/k;

    if-eqz p0, :cond_53

    move-object p0, p2

    check-cast p0, Li5/k;

    invoke-interface {p0}, Li5/k;->b()Li5/i;

    move-result-object p0

    if-eqz p4, :cond_53

    invoke-static {p0}, Lk6/i;->v(Li5/l;)Z

    move-result p4

    if-eqz p4, :cond_53

    invoke-static {p0}, Lk6/i;->y(Li5/l;)Z

    move-result p0

    if-eqz p0, :cond_53

    instance-of p0, p3, Li5/k;

    if-eqz p0, :cond_53

    invoke-interface {p3}, Li5/l;->b()Li5/l;

    move-result-object p0

    invoke-static {p0}, Lk6/i;->y(Li5/l;)Z

    move-result p0

    if-eqz p0, :cond_53

    invoke-static {p2, p3}, Li5/s;->d(Li5/l;Li5/l;)Z

    move-result p0

    if-eqz p0, :cond_53

    return p1

    :cond_53
    if-eqz p2, :cond_67

    invoke-interface {p2}, Li5/l;->b()Li5/l;

    move-result-object p2

    instance-of p0, p2, Li5/e;

    if-eqz p0, :cond_63

    invoke-static {p2}, Lk6/i;->p(Li5/l;)Z

    move-result p0

    if-eqz p0, :cond_67

    :cond_63
    instance-of p0, p2, Li5/h0;

    if-eqz p0, :cond_53

    :cond_67
    if-nez p2, :cond_6a

    return v1

    :cond_6a
    :goto_6a
    if-eqz p3, :cond_a1

    if-ne p2, p3, :cond_6f

    return p1

    :cond_6f
    instance-of p0, p3, Li5/h0;

    if-eqz p0, :cond_9c

    instance-of p0, p2, Li5/h0;

    if-eqz p0, :cond_9a

    move-object p0, p2

    check-cast p0, Li5/h0;

    invoke-interface {p0}, Li5/h0;->e()Lh6/c;

    move-result-object p0

    move-object p4, p3

    check-cast p4, Li5/h0;

    invoke-interface {p4}, Li5/h0;->e()Lh6/c;

    move-result-object p4

    invoke-virtual {p0, p4}, Lh6/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9a

    invoke-static {p3}, Lk6/i;->d(Li5/l;)Li5/e0;

    move-result-object p0

    invoke-static {p2}, Lk6/i;->d(Li5/l;)Li5/e0;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9a

    goto :goto_9b

    :cond_9a
    move p1, v1

    :goto_9b
    return p1

    :cond_9c
    invoke-interface {p3}, Li5/l;->b()Li5/l;

    move-result-object p3

    goto :goto_6a

    :cond_a1
    return v1

    :cond_a2
    const/4 p1, 0x2

    invoke-static {p1}, Li5/s$d;->e(I)V

    throw p0

    :cond_a7
    invoke-static {p1}, Li5/s$d;->e(I)V

    throw p0
.end method
