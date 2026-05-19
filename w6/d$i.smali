.class public final Lw6/d$i;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/d;-><init>(Lu6/m;Lc6/b;Le6/c;Le6/a;Li5/v0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Collection<",
        "+",
        "Li5/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw6/d;


# direct methods
.method public constructor <init>(Lw6/d;)V
    .registers 2

    iput-object p1, p0, Lw6/d$i;->a:Lw6/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 7

    iget-object p0, p0, Lw6/d$i;->a:Lw6/d;

    iget-object v0, p0, Lw6/d;->i:Li5/d0;

    sget-object v1, Li5/d0;->b:Li5/d0;

    if-eq v0, v1, :cond_c

    sget-object p0, Li4/y;->a:Li4/y;

    goto/16 :goto_8b

    :cond_c
    iget-object v0, p0, Lw6/d;->e:Lc6/b;

    iget-object v0, v0, Lc6/b;->u:Ljava/util/List;

    const-string v2, "fqNames"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_51

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lw6/d;->l:Lu6/m;

    iget-object v4, v3, Lu6/m;->a:Lu6/k;

    iget-object v3, v3, Lu6/m;->b:Le6/c;

    const-string v5, "index"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lu6/z;->a(Le6/c;I)Lh6/b;

    move-result-object v2

    invoke-virtual {v4, v2}, Lu6/k;->b(Lh6/b;)Li5/e;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_4f
    move-object p0, v1

    goto :goto_8b

    :cond_51
    const/4 v0, 0x0

    const-string v2, "sealedClass"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lw6/d;->o()Li5/d0;

    move-result-object v2

    if-eq v2, v1, :cond_60

    sget-object p0, Li4/y;->a:Li4/y;

    goto :goto_8b

    :cond_60
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p0}, Lw6/d;->b()Li5/l;

    move-result-object v2

    instance-of v4, v2, Li5/h0;

    if-eqz v4, :cond_76

    check-cast v2, Li5/h0;

    invoke-interface {v2}, Li5/h0;->l()Lr6/i;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lk6/b;->a(Li5/e;Ljava/util/LinkedHashSet;Lr6/i;Z)V

    :cond_76
    invoke-virtual {p0}, Ll5/b;->R()Lr6/i;

    move-result-object v0

    const-string v2, "sealedClass.unsubstitutedInnerClassesScope"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1, v0, v3}, Lk6/b;->a(Li5/e;Ljava/util/LinkedHashSet;Lr6/i;Z)V

    new-instance p0, Lk6/a;

    invoke-direct {p0}, Lk6/a;-><init>()V

    invoke-static {v1, p0}, Li4/v;->b0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    :goto_8b
    return-object p0
.end method
