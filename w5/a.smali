.class public final Lw5/a;
.super Ly6/c0;
.source ""


# instance fields
.field public final d:Ly6/z1;

.field public final e:Lw5/c;

.field public final f:Z

.field public final g:Z

.field public final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Li5/a1;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ly6/s0;


# direct methods
.method public constructor <init>(Ly6/z1;Lw5/c;ZZLjava/util/Set;Ly6/s0;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/z1;",
            "Lw5/c;",
            "ZZ",
            "Ljava/util/Set<",
            "+",
            "Li5/a1;",
            ">;",
            "Ly6/s0;",
            ")V"
        }
    .end annotation

    const-string v0, "howThisTypeIsUsed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flexibility"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p5, p6}, Ly6/c0;-><init>(Ly6/z1;Ljava/util/Set;Ly6/s0;)V

    iput-object p1, p0, Lw5/a;->d:Ly6/z1;

    iput-object p2, p0, Lw5/a;->e:Lw5/c;

    iput-boolean p3, p0, Lw5/a;->f:Z

    iput-boolean p4, p0, Lw5/a;->g:Z

    iput-object p5, p0, Lw5/a;->h:Ljava/util/Set;

    iput-object p6, p0, Lw5/a;->i:Ly6/s0;

    return-void
.end method

.method public synthetic constructor <init>(Ly6/z1;Lw5/c;ZZLjava/util/Set;Ly6/s0;I)V
    .registers 15

    and-int/lit8 p2, p7, 0x2

    const/4 p6, 0x0

    if-eqz p2, :cond_9

    sget-object p2, Lw5/c;->a:Lw5/c;

    move-object v2, p2

    goto :goto_a

    :cond_9
    move-object v2, p6

    :goto_a
    and-int/lit8 p2, p7, 0x4

    const/4 v0, 0x0

    if-eqz p2, :cond_11

    move v3, v0

    goto :goto_12

    :cond_11
    move v3, p3

    :goto_12
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_18

    move v4, v0

    goto :goto_19

    :cond_18
    move v4, p4

    :goto_19
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_1f

    move-object v5, p6

    goto :goto_20

    :cond_1f
    move-object v5, p5

    :goto_20
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lw5/a;-><init>(Ly6/z1;Lw5/c;ZZLjava/util/Set;Ly6/s0;)V

    return-void
.end method

.method public static e(Lw5/a;Ly6/z1;Lw5/c;ZZLjava/util/Set;Ly6/s0;I)Lw5/a;
    .registers 15

    and-int/lit8 p1, p7, 0x1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lw5/a;->d:Ly6/z1;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    move-object v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_f

    iget-object p2, p0, Lw5/a;->e:Lw5/c;

    :cond_f
    move-object v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_16

    iget-boolean p3, p0, Lw5/a;->f:Z

    :cond_16
    move v3, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_1d

    iget-boolean p4, p0, Lw5/a;->g:Z

    :cond_1d
    move v4, p4

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_24

    iget-object p5, p0, Lw5/a;->h:Ljava/util/Set;

    :cond_24
    move-object v5, p5

    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_2b

    iget-object p6, p0, Lw5/a;->i:Ly6/s0;

    :cond_2b
    move-object v6, p6

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "howThisTypeIsUsed"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "flexibility"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lw5/a;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lw5/a;-><init>(Ly6/z1;Lw5/c;ZZLjava/util/Set;Ly6/s0;)V

    return-object p0
.end method


# virtual methods
.method public a()Ly6/s0;
    .registers 1

    iget-object p0, p0, Lw5/a;->i:Ly6/s0;

    return-object p0
.end method

.method public b()Ly6/z1;
    .registers 1

    iget-object p0, p0, Lw5/a;->d:Ly6/z1;

    return-object p0
.end method

.method public c()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lw5/a;->h:Ljava/util/Set;

    return-object p0
.end method

.method public d(Li5/a1;)Ly6/c0;
    .registers 10

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw5/a;->h:Ljava/util/Set;

    if-eqz v0, :cond_e

    invoke-static {v0, p1}, Li4/o0;->j(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_12

    :cond_e
    invoke-static {p1}, Ly0/b;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    :goto_12
    move-object v5, p1

    const/4 v6, 0x0

    const/16 v7, 0x2f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lw5/a;->e(Lw5/a;Ly6/z1;Lw5/c;ZZLjava/util/Set;Ly6/s0;I)Lw5/a;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lw5/a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lw5/a;

    iget-object v0, p1, Lw5/a;->i:Ly6/s0;

    iget-object v2, p0, Lw5/a;->i:Ly6/s0;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lw5/a;->d:Ly6/z1;

    iget-object v2, p0, Lw5/a;->d:Ly6/z1;

    if-ne v0, v2, :cond_2b

    iget-object v0, p1, Lw5/a;->e:Lw5/c;

    iget-object v2, p0, Lw5/a;->e:Lw5/c;

    if-ne v0, v2, :cond_2b

    iget-boolean v0, p1, Lw5/a;->f:Z

    iget-boolean v2, p0, Lw5/a;->f:Z

    if-ne v0, v2, :cond_2b

    iget-boolean p1, p1, Lw5/a;->g:Z

    iget-boolean p0, p0, Lw5/a;->g:Z

    if-ne p1, p0, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method public final f(Z)Lw5/a;
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3b

    move-object v0, p0

    move v3, p1

    invoke-static/range {v0 .. v7}, Lw5/a;->e(Lw5/a;Ly6/z1;Lw5/c;ZZLjava/util/Set;Ly6/s0;I)Lw5/a;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lw5/c;)Lw5/a;
    .registers 11

    const-string v0, "flexibility"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3d

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v1 .. v8}, Lw5/a;->e(Lw5/a;Ly6/z1;Lw5/c;ZZLjava/util/Set;Ly6/s0;I)Lw5/a;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lw5/a;->i:Ly6/s0;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ly6/l0;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lw5/a;->d:Ly6/z1;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lw5/a;->e:Lw5/c;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lw5/a;->f:Z

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean p0, p0, Lw5/a;->g:Z

    add-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "JavaTypeAttributes(howThisTypeIsUsed="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lw5/a;->d:Ly6/z1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flexibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw5/a;->e:Lw5/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lw5/a;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isForAnnotationParameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lw5/a;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", visitedTypeParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw5/a;->h:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lw5/a;->i:Ly6/s0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
