.class public Ly6/a2$a;
.super Ly6/w;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly6/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ly6/w;-><init>()V

    iput-object p1, p0, Ly6/a2$a;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic R0(I)V
    .registers 10

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_b

    :cond_9
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_b
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p0, v1, :cond_13

    if-eq p0, v0, :cond_13

    move v5, v3

    goto :goto_14

    :cond_13
    move v5, v4

    :goto_14
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType"

    const/4 v7, 0x0

    if-eq p0, v1, :cond_30

    if-eq p0, v4, :cond_2b

    if-eq p0, v3, :cond_26

    if-eq p0, v0, :cond_30

    const-string v8, "newAttributes"

    aput-object v8, v5, v7

    goto :goto_32

    :cond_26
    const-string v8, "kotlinTypeRefiner"

    aput-object v8, v5, v7

    goto :goto_32

    :cond_2b
    const-string v8, "delegate"

    aput-object v8, v5, v7

    goto :goto_32

    :cond_30
    aput-object v6, v5, v7

    :goto_32
    const-string v7, "refine"

    if-eq p0, v1, :cond_3e

    if-eq p0, v0, :cond_3b

    aput-object v6, v5, v1

    goto :goto_42

    :cond_3b
    aput-object v7, v5, v1

    goto :goto_42

    :cond_3e
    const-string v6, "toString"

    aput-object v6, v5, v1

    :goto_42
    if-eq p0, v1, :cond_56

    if-eq p0, v4, :cond_52

    if-eq p0, v3, :cond_4f

    if-eq p0, v0, :cond_56

    const-string v3, "replaceAttributes"

    aput-object v3, v5, v4

    goto :goto_56

    :cond_4f
    aput-object v7, v5, v4

    goto :goto_56

    :cond_52
    const-string v3, "replaceDelegate"

    aput-object v3, v5, v4

    :cond_56
    :goto_56
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_64

    if-eq p0, v0, :cond_64

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_69

    :cond_64
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_69
    throw p0
.end method


# virtual methods
.method public bridge synthetic H0(Lz6/f;)Ly6/l0;
    .registers 2

    invoke-virtual {p0, p1}, Ly6/a2$a;->S0(Lz6/f;)Ly6/a2$a;

    return-object p0
.end method

.method public bridge synthetic J0(Z)Ly6/d2;
    .registers 2

    invoke-virtual {p0, p1}, Ly6/a2$a;->M0(Z)Ly6/s0;

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic K0(Lz6/f;)Ly6/d2;
    .registers 2

    invoke-virtual {p0, p1}, Ly6/a2$a;->S0(Lz6/f;)Ly6/a2$a;

    return-object p0
.end method

.method public bridge synthetic L0(Ly6/g1;)Ly6/d2;
    .registers 2

    invoke-virtual {p0, p1}, Ly6/a2$a;->N0(Ly6/g1;)Ly6/s0;

    const/4 p0, 0x0

    throw p0
.end method

.method public M0(Z)Ly6/s0;
    .registers 2

    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Ly6/a2$a;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public N0(Ly6/g1;)Ly6/s0;
    .registers 2

    if-nez p1, :cond_8

    const/4 p0, 0x0

    invoke-static {p0}, Ly6/a2$a;->R0(I)V

    const/4 p0, 0x0

    throw p0

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Ly6/a2$a;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public O0()Ly6/s0;
    .registers 2

    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Ly6/a2$a;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic P0(Lz6/f;)Ly6/s0;
    .registers 2

    invoke-virtual {p0, p1}, Ly6/a2$a;->S0(Lz6/f;)Ly6/a2$a;

    return-object p0
.end method

.method public Q0(Ly6/s0;)Ly6/w;
    .registers 2

    if-nez p1, :cond_8

    const/4 p0, 0x2

    invoke-static {p0}, Ly6/a2$a;->R0(I)V

    const/4 p0, 0x0

    throw p0

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Ly6/a2$a;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public S0(Lz6/f;)Ly6/a2$a;
    .registers 2

    if-eqz p1, :cond_3

    return-object p0

    :cond_3
    const/4 p0, 0x3

    invoke-static {p0}, Ly6/a2$a;->R0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ly6/a2$a;->b:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x1

    invoke-static {p0}, Ly6/a2$a;->R0(I)V

    const/4 p0, 0x0

    throw p0
.end method
