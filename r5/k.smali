.class public final Lr5/k;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Li5/b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lr5/k;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lr5/k;

    invoke-direct {v0}, Lr5/k;-><init>()V

    sput-object v0, Lr5/k;->a:Lr5/k;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    check-cast p1, Li5/b;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callableMemberDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lr5/j;->a:Lr5/j;

    sget-object v1, Lr5/j;->e:Ljava/util/Set;

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1e

    goto/16 :goto_bf

    :cond_1e
    sget-object v1, Lr5/j;->d:Ljava/util/Set;

    invoke-static {p1}, Lo6/c;->c(Li5/l;)Lh6/c;

    move-result-object v4

    invoke-static {v1, v4}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p1}, Li5/a;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    goto/16 :goto_c0

    :cond_36
    invoke-static {p1}, Lf5/g;->B(Li5/l;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto/16 :goto_bf

    :cond_3e
    invoke-interface {p1}, Li5/b;->d()Ljava/util/Collection;

    move-result-object p1

    const-string v1, "overriddenDescriptors"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4f

    goto/16 :goto_bf

    :cond_4f
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bf

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/b;

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lr5/j;->a:Lr5/j;

    sget-object v5, Lr5/j;->e:Ljava/util/Set;

    invoke-interface {v4}, Li5/l;->getName()Lh6/f;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    goto :goto_bb

    :cond_74
    sget-object v5, Lr5/j;->d:Ljava/util/Set;

    invoke-static {v4}, Lo6/c;->c(Li5/l;)Lh6/c;

    move-result-object v6

    invoke-static {v5, v6}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    invoke-interface {v4}, Li5/a;->g()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8b

    goto :goto_b9

    :cond_8b
    invoke-static {v4}, Lf5/g;->B(Li5/l;)Z

    move-result v5

    if-nez v5, :cond_92

    goto :goto_bb

    :cond_92
    invoke-interface {v4}, Li5/b;->d()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a0

    goto :goto_bb

    :cond_a0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li5/b;

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lr5/l;->a(Li5/b;)Z

    move-result v5

    if-eqz v5, :cond_a4

    :goto_b9
    move v4, v2

    goto :goto_bc

    :cond_bb
    :goto_bb
    move v4, v3

    :goto_bc
    if-eqz v4, :cond_53

    goto :goto_c0

    :cond_bf
    :goto_bf
    move v2, v3

    :goto_c0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
