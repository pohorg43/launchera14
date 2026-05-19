.class public final La7/g;
.super Ly6/s0;
.source ""


# instance fields
.field public final b:Ly6/j1;

.field public final c:Lr6/i;

.field public final d:La7/i;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly6/q1;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:[Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ly6/j1;Lr6/i;La7/i;Ljava/util/List;Z[Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/j1;",
            "Lr6/i;",
            "La7/i;",
            "Ljava/util/List<",
            "+",
            "Ly6/q1;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatParams"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly6/s0;-><init>()V

    iput-object p1, p0, La7/g;->b:Ly6/j1;

    iput-object p2, p0, La7/g;->c:Lr6/i;

    iput-object p3, p0, La7/g;->d:La7/i;

    iput-object p4, p0, La7/g;->e:Ljava/util/List;

    iput-boolean p5, p0, La7/g;->f:Z

    iput-object p6, p0, La7/g;->g:[Ljava/lang/String;

    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object p1, p3, La7/i;->a:Ljava/lang/String;

    array-length p2, p6

    invoke-static {p6, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    array-length p3, p2

    const-string p4, "format(format, *args)"

    invoke-static {p2, p3, p1, p4}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La7/g;->h:Ljava/lang/String;

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

    iget-object p0, p0, La7/g;->e:Ljava/util/List;

    return-object p0
.end method

.method public E0()Ly6/g1;
    .registers 1

    sget-object p0, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ly6/g1;->c:Ly6/g1;

    return-object p0
.end method

.method public F0()Ly6/j1;
    .registers 1

    iget-object p0, p0, La7/g;->b:Ly6/j1;

    return-object p0
.end method

.method public G0()Z
    .registers 1

    iget-boolean p0, p0, La7/g;->f:Z

    return p0
.end method

.method public H0(Lz6/f;)Ly6/l0;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public K0(Lz6/f;)Ly6/d2;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public L0(Ly6/g1;)Ly6/d2;
    .registers 3

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public M0(Z)Ly6/s0;
    .registers 10

    new-instance v7, La7/g;

    iget-object v1, p0, La7/g;->b:Ly6/j1;

    iget-object v2, p0, La7/g;->c:Lr6/i;

    iget-object v3, p0, La7/g;->d:La7/i;

    iget-object v4, p0, La7/g;->e:Ljava/util/List;

    iget-object p0, p0, La7/g;->g:[Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, [Ljava/lang/String;

    move-object v0, v7

    move v5, p1

    invoke-direct/range {v0 .. v6}, La7/g;-><init>(Ly6/j1;Lr6/i;La7/i;Ljava/util/List;Z[Ljava/lang/String;)V

    return-object v7
.end method

.method public N0(Ly6/g1;)Ly6/s0;
    .registers 3

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public l()Lr6/i;
    .registers 1

    iget-object p0, p0, La7/g;->c:Lr6/i;

    return-object p0
.end method
