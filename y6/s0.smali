.class public abstract Ly6/s0;
.super Ly6/d2;
.source ""

# interfaces
.implements Lc7/k;
.implements Lc7/l;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ly6/d2;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic J0(Z)Ly6/d2;
    .registers 2

    invoke-virtual {p0, p1}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic L0(Ly6/g1;)Ly6/d2;
    .registers 2

    invoke-virtual {p0, p1}, Ly6/s0;->N0(Ly6/g1;)Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public abstract M0(Z)Ly6/s0;
.end method

.method public abstract N0(Ly6/g1;)Ly6/s0;
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj5/c;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "["

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lj6/c;->c:Lj6/c;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v5, v1, v7, v8, v7}, Lj6/c;->r(Lj6/c;Lj5/c;Lj5/e;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "] "

    aput-object v1, v4, v8

    const-string v1, "<this>"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3a
    if-ge v6, v3, :cond_d

    aget-object v1, v4, v6

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    :cond_44
    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_69

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x70

    const-string v2, ", "

    const-string v3, "<"

    const-string v4, ">"

    move-object v1, v9

    invoke-static/range {v0 .. v8}, Li4/v;->L(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/Appendable;

    :cond_69
    invoke-virtual {p0}, Ly6/l0;->G0()Z

    move-result p0

    if-eqz p0, :cond_74

    const-string p0, "?"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_74
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
