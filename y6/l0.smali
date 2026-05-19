.class public abstract Ly6/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj5/a;
.implements Lc7/i;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract D0()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly6/q1;",
            ">;"
        }
    .end annotation
.end method

.method public abstract E0()Ly6/g1;
.end method

.method public abstract F0()Ly6/j1;
.end method

.method public abstract G0()Z
.end method

.method public abstract H0(Lz6/f;)Ly6/l0;
.end method

.method public abstract I0()Ly6/d2;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ly6/l0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Ly6/l0;->G0()Z

    move-result v1

    check-cast p1, Ly6/l0;

    invoke-virtual {p1}, Ly6/l0;->G0()Z

    move-result v3

    if-ne v1, v3, :cond_3c

    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p0

    invoke-virtual {p1}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p1

    const-string v1, "a"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "b"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lz6/p;->a:Lz6/p;

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p0, p1}, Ly6/e;->b(Lc7/p;Lc7/i;Lc7/i;)Z

    move-result p0

    if-eqz p0, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v2

    :goto_3d
    return v0
.end method

.method public getAnnotations()Lj5/h;
    .registers 1

    invoke-virtual {p0}, Ly6/l0;->E0()Ly6/g1;

    move-result-object p0

    invoke-static {p0}, Ly6/p;->a(Ly6/g1;)Lj5/h;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Ly6/l0;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    invoke-static {p0}, Ly0/b;->c(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2a

    :cond_10
    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Ly6/l0;->G0()Z

    move-result v0

    add-int/2addr v0, v1

    :goto_2a
    iput v0, p0, Ly6/l0;->a:I

    return v0
.end method

.method public abstract l()Lr6/i;
.end method
