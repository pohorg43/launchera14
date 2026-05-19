.class public abstract Ly6/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ly6/j1;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nClassifierBasedTypeConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassifierBasedTypeConstructor.kt\norg/jetbrains/kotlin/types/ClassifierBasedTypeConstructor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,81:1\n1#2:82\n*E\n"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract e()Li5/h;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Ly6/j1;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ly6/r;->hashCode()I

    move-result v2

    if-eq v0, v2, :cond_15

    return v1

    :cond_15
    check-cast p1, Ly6/j1;

    invoke-interface {p1}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_2a

    return v1

    :cond_2a
    invoke-virtual {p0}, Ly6/r;->e()Li5/h;

    move-result-object v0

    invoke-interface {p1}, Ly6/j1;->e()Li5/h;

    move-result-object p1

    if-nez p1, :cond_35

    return v1

    :cond_35
    invoke-virtual {p0, v0}, Ly6/r;->g(Li5/h;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p0, p1}, Ly6/r;->g(Li5/h;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_47

    :cond_42
    invoke-virtual {p0, p1}, Ly6/r;->h(Li5/h;)Z

    move-result p0

    return p0

    :cond_47
    :goto_47
    return v1
.end method

.method public final g(Li5/h;)Z
    .registers 2

    invoke-static {p1}, La7/j;->f(Li5/l;)Z

    move-result p0

    if-nez p0, :cond_e

    invoke-static {p1}, Lk6/i;->t(Li5/l;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public abstract h(Li5/h;)Z
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Ly6/r;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Ly6/r;->e()Li5/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Ly6/r;->g(Li5/h;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {v0}, Lk6/i;->g(Li5/l;)Lh6/d;

    move-result-object v0

    invoke-virtual {v0}, Lh6/d;->hashCode()I

    move-result v0

    goto :goto_1c

    :cond_18
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_1c
    iput v0, p0, Ly6/r;->a:I

    return v0
.end method
