.class public final Lz6/h;
.super Ly6/s0;
.source ""

# interfaces
.implements Lc7/d;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNewCapturedType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewCapturedType.kt\norg/jetbrains/kotlin/types/checker/NewCapturedType\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,290:1\n1#2:291\n*E\n"
    }
.end annotation


# instance fields
.field public final b:Lc7/b;

.field public final c:Lz6/j;

.field public final d:Ly6/d2;

.field public final e:Ly6/g1;

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Lc7/b;Lz6/j;Ly6/d2;Ly6/g1;ZZ)V
    .registers 8

    const-string v0, "captureStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly6/s0;-><init>()V

    iput-object p1, p0, Lz6/h;->b:Lc7/b;

    iput-object p2, p0, Lz6/h;->c:Lz6/j;

    iput-object p3, p0, Lz6/h;->d:Ly6/d2;

    iput-object p4, p0, Lz6/h;->e:Ly6/g1;

    iput-boolean p5, p0, Lz6/h;->f:Z

    iput-boolean p6, p0, Lz6/h;->g:Z

    return-void
.end method

.method public constructor <init>(Lc7/b;Lz6/j;Ly6/d2;Ly6/g1;ZZI)V
    .registers 15

    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_b

    sget-object p4, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p4, Ly6/g1;->c:Ly6/g1;

    :cond_b
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    const/4 v0, 0x0

    if-eqz p4, :cond_13

    move v5, v0

    goto :goto_14

    :cond_13
    move v5, p5

    :goto_14
    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_1a

    move v6, v0

    goto :goto_1b

    :cond_1a
    move v6, p6

    :goto_1b
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lz6/h;-><init>(Lc7/b;Lz6/j;Ly6/d2;Ly6/g1;ZZ)V

    return-void
.end method


# virtual methods
.method public D0()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly6/q1;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public E0()Ly6/g1;
    .registers 1

    iget-object p0, p0, Lz6/h;->e:Ly6/g1;

    return-object p0
.end method

.method public F0()Ly6/j1;
    .registers 1

    iget-object p0, p0, Lz6/h;->c:Lz6/j;

    return-object p0
.end method

.method public G0()Z
    .registers 1

    iget-boolean p0, p0, Lz6/h;->f:Z

    return p0
.end method

.method public bridge synthetic H0(Lz6/f;)Ly6/l0;
    .registers 2

    invoke-virtual {p0, p1}, Lz6/h;->P0(Lz6/f;)Lz6/h;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic J0(Z)Ly6/d2;
    .registers 2

    invoke-virtual {p0, p1}, Lz6/h;->O0(Z)Lz6/h;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic K0(Lz6/f;)Ly6/d2;
    .registers 2

    invoke-virtual {p0, p1}, Lz6/h;->P0(Lz6/f;)Lz6/h;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic M0(Z)Ly6/s0;
    .registers 2

    invoke-virtual {p0, p1}, Lz6/h;->O0(Z)Lz6/h;

    move-result-object p0

    return-object p0
.end method

.method public N0(Ly6/g1;)Ly6/s0;
    .registers 10

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz6/h;

    iget-object v2, p0, Lz6/h;->b:Lc7/b;

    iget-object v3, p0, Lz6/h;->c:Lz6/j;

    iget-object v4, p0, Lz6/h;->d:Ly6/d2;

    iget-boolean v6, p0, Lz6/h;->f:Z

    iget-boolean v7, p0, Lz6/h;->g:Z

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lz6/h;-><init>(Lc7/b;Lz6/j;Ly6/d2;Ly6/g1;ZZ)V

    return-object v0
.end method

.method public O0(Z)Lz6/h;
    .registers 11

    new-instance v8, Lz6/h;

    iget-object v1, p0, Lz6/h;->b:Lc7/b;

    iget-object v2, p0, Lz6/h;->c:Lz6/j;

    iget-object v3, p0, Lz6/h;->d:Ly6/d2;

    iget-object v4, p0, Lz6/h;->e:Ly6/g1;

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, v8

    move v5, p1

    invoke-direct/range {v0 .. v7}, Lz6/h;-><init>(Lc7/b;Lz6/j;Ly6/d2;Ly6/g1;ZZI)V

    return-object v8
.end method

.method public P0(Lz6/f;)Lz6/h;
    .registers 11

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lz6/h;->b:Lc7/b;

    iget-object v0, p0, Lz6/h;->c:Lz6/j;

    invoke-virtual {v0, p1}, Lz6/j;->g(Lz6/f;)Lz6/j;

    move-result-object v3

    iget-object v0, p0, Lz6/h;->d:Ly6/d2;

    if-eqz v0, :cond_1a

    invoke-virtual {p1, v0}, Lz6/f;->h(Lc7/i;)Ly6/l0;

    move-result-object p1

    invoke-virtual {p1}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    move-object v4, p1

    iget-object v5, p0, Lz6/h;->e:Ly6/g1;

    iget-boolean v6, p0, Lz6/h;->f:Z

    const/4 v7, 0x0

    const/16 v8, 0x20

    new-instance p0, Lz6/h;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lz6/h;-><init>(Lc7/b;Lz6/j;Ly6/d2;Ly6/g1;ZZI)V

    return-object p0
.end method

.method public l()Lr6/i;
    .registers 3

    sget-object p0, La7/f;->b:La7/f;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, La7/j;->a(La7/f;Z[Ljava/lang/String;)La7/e;

    move-result-object p0

    return-object p0
.end method
