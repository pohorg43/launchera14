.class public final Lz5/a$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz5/a;->f(Lc7/i;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lz5/a$a;",
        "Ljava/lang/Iterable<",
        "+",
        "Lz5/a$a;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAbstractSignatureParts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSignatureParts.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/AbstractSignatureParts$toIndexed$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,228:1\n3433#2,7:229\n*S KotlinDebug\n*F\n+ 1 AbstractSignatureParts.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/AbstractSignatureParts$toIndexed$1$1\n*L\n209#1:229,7\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lz5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz5/a<",
            "TTAnnotation;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz5/a;Lc7/p;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz5/a<",
            "TTAnnotation;>;",
            "Lc7/p;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lz5/a$b;->a:Lz5/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    check-cast p1, Lz5/a$a;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lz5/a$b;->a:Lz5/a;

    check-cast v0, Lz5/t;

    iget-boolean v0, v0, Lz5/t;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-object v0, p1, Lz5/a$a;->a:Lc7/i;

    if-eqz v0, :cond_1f

    invoke-static {v0}, Lz6/b$a;->g(Lc7/i;)Lc7/g;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {v0}, Lz6/b$a;->h(Lc7/g;)Lc7/j;

    move-result-object v0

    goto :goto_20

    :cond_1f
    move-object v0, v1

    :goto_20
    if-eqz v0, :cond_24

    goto/16 :goto_c1

    :cond_24
    iget-object v0, p1, Lz5/a$a;->a:Lc7/i;

    if-eqz v0, :cond_c1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lz6/b$a;->i(Lc7/i;)Lc7/k;

    move-result-object v3

    if-nez v3, :cond_49

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lz6/b$a;->g(Lc7/i;)Lc7/g;

    move-result-object v3

    if-eqz v3, :cond_42

    invoke-static {v3}, Lz6/b$a;->W(Lc7/g;)Lc7/k;

    move-result-object v3

    if-nez v3, :cond_49

    :cond_42
    invoke-static {v0}, Lz6/b$a;->i(Lc7/i;)Lc7/k;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_49
    invoke-static {v3}, Lz6/b$a;->g0(Lc7/k;)Lc7/n;

    move-result-object v0

    if-eqz v0, :cond_c1

    invoke-static {v0}, Lz6/b$a;->r(Lc7/n;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c1

    iget-object v3, p1, Lz5/a$a;->a:Lc7/i;

    invoke-static {v3}, Lz6/b$a;->o(Lc7/i;)Ljava/util/List;

    move-result-object v3

    iget-object p0, p0, Lz5/a$b;->a:Lz5/a;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v0, v7}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v3, v7}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_78
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc7/m;

    check-cast v0, Lc7/o;

    invoke-static {v3}, Lz6/b$a;->S(Lc7/m;)Z

    move-result v7

    if-eqz v7, :cond_9e

    new-instance v3, Lz5/a$a;

    iget-object v7, p1, Lz5/a$a;->b:Lr5/b0;

    invoke-direct {v3, v1, v7, v0}, Lz5/a$a;-><init>(Lc7/i;Lr5/b0;Lc7/o;)V

    goto :goto_bc

    :cond_9e
    invoke-static {v3}, Lz6/b$a;->v(Lc7/m;)Lc7/i;

    move-result-object v3

    new-instance v7, Lz5/a$a;

    iget-object v8, p1, Lz5/a$a;->b:Lr5/b0;

    invoke-virtual {p0}, Lz5/a;->b()Lr5/b;

    move-result-object v9

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v3

    check-cast v10, Ly6/l0;

    invoke-virtual {v10}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lr5/b;->b(Lr5/b0;Ljava/lang/Iterable;)Lr5/b0;

    move-result-object v8

    invoke-direct {v7, v3, v8, v0}, Lz5/a$a;-><init>(Lc7/i;Lr5/b0;Lc7/o;)V

    move-object v3, v7

    :goto_bc
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    :cond_c0
    move-object v1, v6

    :cond_c1
    :goto_c1
    return-object v1
.end method
