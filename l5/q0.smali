.class public abstract Ll5/q0;
.super Ll5/p0;
.source ""


# instance fields
.field public final f:Z

.field public g:Lx6/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/j<",
            "Lm6/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public h:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lx6/j<",
            "Lm6/g<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li5/l;Lj5/h;Lh6/f;Ly6/l0;ZLi5/v0;)V
    .registers 13

    const/4 p4, 0x0

    if-eqz p1, :cond_24

    if-eqz p2, :cond_1f

    if-eqz p3, :cond_1a

    if-eqz p6, :cond_15

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ll5/p0;-><init>(Li5/l;Lj5/h;Lh6/f;Ly6/l0;Li5/v0;)V

    iput-boolean p5, p0, Ll5/q0;->f:Z

    return-void

    :cond_15
    const/4 p0, 0x3

    invoke-static {p0}, Ll5/q0;->z(I)V

    throw p4

    :cond_1a
    const/4 p0, 0x2

    invoke-static {p0}, Ll5/q0;->z(I)V

    throw p4

    :cond_1f
    const/4 p0, 0x1

    invoke-static {p0}, Ll5/q0;->z(I)V

    throw p4

    :cond_24
    const/4 p0, 0x0

    invoke-static {p0}, Ll5/q0;->z(I)V

    throw p4
.end method

.method public static synthetic z(I)V
    .registers 8

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq p0, v4, :cond_26

    if-eq p0, v5, :cond_21

    if-eq p0, v0, :cond_1c

    if-eq p0, v3, :cond_17

    if-eq p0, v2, :cond_17

    const-string v0, "containingDeclaration"

    aput-object v0, v1, v6

    goto :goto_2a

    :cond_17
    const-string v0, "compileTimeInitializerFactory"

    aput-object v0, v1, v6

    goto :goto_2a

    :cond_1c
    const-string v0, "source"

    aput-object v0, v1, v6

    goto :goto_2a

    :cond_21
    const-string v0, "name"

    aput-object v0, v1, v6

    goto :goto_2a

    :cond_26
    const-string v0, "annotations"

    aput-object v0, v1, v6

    :goto_2a
    const-string v0, "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorWithInitializerImpl"

    aput-object v0, v1, v4

    if-eq p0, v3, :cond_3c

    if-eq p0, v2, :cond_37

    const-string p0, "<init>"

    aput-object p0, v1, v5

    goto :goto_40

    :cond_37
    const-string p0, "setCompileTimeInitializer"

    aput-object p0, v1, v5

    goto :goto_40

    :cond_3c
    const-string p0, "setCompileTimeInitializerFactory"

    aput-object p0, v1, v5

    :goto_40
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public D0(Lx6/j;Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/j<",
            "Lm6/g<",
            "*>;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lx6/j<",
            "Lm6/g<",
            "*>;>;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_10

    iput-object p2, p0, Ll5/q0;->h:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_7

    goto :goto_d

    :cond_7
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx6/j;

    :goto_d
    iput-object p1, p0, Ll5/q0;->g:Lx6/j;

    return-void

    :cond_10
    const/4 p0, 0x5

    invoke-static {p0}, Ll5/q0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public E0(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lx6/j<",
            "Lm6/g<",
            "*>;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ll5/q0;->D0(Lx6/j;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public K()Z
    .registers 1

    iget-boolean p0, p0, Ll5/q0;->f:Z

    return p0
.end method

.method public i0()Lm6/g;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm6/g<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Ll5/q0;->g:Lx6/j;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm6/g;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method
