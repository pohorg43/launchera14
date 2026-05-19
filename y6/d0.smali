.class public final Ly6/d0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ly6/y1;Lc7/i;Ljava/util/HashSet;)Lc7/i;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/y1;",
            "Lc7/i;",
            "Ljava/util/HashSet<",
            "Lc7/n;",
            ">;)",
            "Lc7/i;"
        }
    .end annotation

    invoke-interface {p0, p1}, Lc7/p;->p0(Lc7/i;)Lc7/n;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return-object v2

    :cond_c
    invoke-interface {p0, v0}, Lc7/p;->O(Lc7/n;)Lc7/o;

    move-result-object v1

    if-eqz v1, :cond_66

    invoke-interface {p0, v1}, Ly6/y1;->a0(Lc7/o;)Lc7/i;

    move-result-object v0

    invoke-static {p0, v0, p2}, Ly6/d0;->a(Ly6/y1;Lc7/i;Ljava/util/HashSet;)Lc7/i;

    move-result-object p2

    if-eqz p2, :cond_64

    invoke-interface {p0, v0}, Lc7/p;->p0(Lc7/i;)Lc7/n;

    move-result-object v1

    invoke-interface {p0, v1}, Ly6/y1;->f0(Lc7/n;)Z

    move-result v1

    if-nez v1, :cond_36

    instance-of v1, v0, Lc7/k;

    if-eqz v1, :cond_34

    move-object v1, v0

    check-cast v1, Lc7/k;

    invoke-interface {p0, v1}, Lc7/p;->T(Lc7/k;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_36

    :cond_34
    const/4 v1, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v1, 0x1

    :goto_37
    instance-of v2, p2, Lc7/k;

    if-eqz v2, :cond_51

    move-object v2, p2

    check-cast v2, Lc7/k;

    invoke-interface {p0, v2}, Lc7/p;->T(Lc7/k;)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {p0, p1}, Lc7/p;->P(Lc7/i;)Z

    move-result v2

    if-eqz v2, :cond_51

    if-eqz v1, :cond_51

    invoke-interface {p0, v0}, Ly6/y1;->h(Lc7/i;)Lc7/i;

    move-result-object p0

    goto :goto_62

    :cond_51
    invoke-interface {p0, p2}, Lc7/p;->P(Lc7/i;)Z

    move-result v0

    if-nez v0, :cond_80

    invoke-interface {p0, p1}, Lc7/p;->t0(Lc7/i;)Z

    move-result p1

    if-nez p1, :cond_5e

    goto :goto_80

    :cond_5e
    invoke-interface {p0, p2}, Ly6/y1;->h(Lc7/i;)Lc7/i;

    move-result-object p0

    :goto_62
    move-object p1, p0

    goto :goto_9b

    :cond_64
    move-object p1, v2

    goto :goto_9b

    :cond_66
    invoke-interface {p0, v0}, Ly6/y1;->f0(Lc7/n;)Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {p0, p1}, Ly6/y1;->m0(Lc7/i;)Lc7/i;

    move-result-object v0

    if-nez v0, :cond_73

    return-object v2

    :cond_73
    invoke-static {p0, v0, p2}, Ly6/d0;->a(Ly6/y1;Lc7/i;Ljava/util/HashSet;)Lc7/i;

    move-result-object p2

    if-nez p2, :cond_7a

    return-object v2

    :cond_7a
    invoke-interface {p0, p1}, Lc7/p;->P(Lc7/i;)Z

    move-result v0

    if-nez v0, :cond_82

    :cond_80
    :goto_80
    move-object p1, p2

    goto :goto_9b

    :cond_82
    invoke-interface {p0, p2}, Lc7/p;->P(Lc7/i;)Z

    move-result v0

    if-eqz v0, :cond_89

    goto :goto_9b

    :cond_89
    instance-of v0, p2, Lc7/k;

    if-eqz v0, :cond_97

    move-object v0, p2

    check-cast v0, Lc7/k;

    invoke-interface {p0, v0}, Lc7/p;->T(Lc7/k;)Z

    move-result v0

    if-eqz v0, :cond_97

    goto :goto_9b

    :cond_97
    invoke-interface {p0, p2}, Ly6/y1;->h(Lc7/i;)Lc7/i;

    move-result-object p1

    :cond_9b
    :goto_9b
    return-object p1
.end method

.method public static final b(Lkotlinx/serialization/descriptors/SerialDescriptor;[Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .registers 7

    const-string v0, "$this$hashCodeImpl"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    const-string p1, "$this$elementDescriptors"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lx7/f;

    invoke-direct {p1, p0}, Lx7/f;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-virtual {p1}, Lx7/f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    move v2, v1

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x1f

    check-cast v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_42

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :cond_42
    add-int/2addr v2, v4

    goto :goto_29

    :cond_44
    invoke-virtual {p1}, Lx7/f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_48
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_64

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    mul-int/lit8 v1, v1, 0x1f

    check-cast p1, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object p1

    if-eqz p1, :cond_61

    invoke-virtual {p1}, Lx7/i;->hashCode()I

    move-result p1

    goto :goto_62

    :cond_61
    move p1, v4

    :goto_62
    add-int/2addr v1, p1

    goto :goto_48

    :cond_64
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
