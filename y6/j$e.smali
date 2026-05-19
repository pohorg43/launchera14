.class public final Ly6/j$e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/j;-><init>(Lx6/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ly6/j$b;",
        "Lh4/z;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAbstractTypeConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractTypeConstructor.kt\norg/jetbrains/kotlin/types/AbstractTypeConstructor$supertypes$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n1#2:134\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Ly6/j;


# direct methods
.method public constructor <init>(Ly6/j;)V
    .registers 2

    iput-object p1, p0, Ly6/j$e;->a:Ly6/j;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    check-cast p1, Ly6/j$b;

    const-string v0, "supertypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly6/j$e;->a:Ly6/j;

    invoke-virtual {v0}, Ly6/j;->n()Li5/y0;

    move-result-object v0

    iget-object v1, p0, Ly6/j$e;->a:Ly6/j;

    iget-object v2, p1, Ly6/j$b;->a:Ljava/util/Collection;

    new-instance v3, Ly6/k;

    invoke-direct {v3, v1}, Ly6/k;-><init>(Ly6/j;)V

    new-instance v4, Ly6/l;

    iget-object v5, p0, Ly6/j$e;->a:Ly6/j;

    invoke-direct {v4, v5}, Ly6/l;-><init>(Ly6/j;)V

    invoke-interface {v0, v1, v2, v3, v4}, Li5/y0;->a(Ly6/j1;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3a

    iget-object v0, p0, Ly6/j$e;->a:Ly6/j;

    invoke-virtual {v0}, Ly6/j;->l()Ly6/l0;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_36

    :cond_35
    move-object v0, v2

    :goto_36
    if-nez v0, :cond_3a

    sget-object v0, Li4/y;->a:Li4/y;

    :cond_3a
    iget-object v1, p0, Ly6/j$e;->a:Ly6/j;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ly6/j$e;->a:Ly6/j;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_48

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    :cond_48
    if-nez v2, :cond_4e

    invoke-static {v0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    :cond_4e
    invoke-virtual {p0, v2}, Ly6/j;->p(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, Ly6/j$b;->b:Ljava/util/List;

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
