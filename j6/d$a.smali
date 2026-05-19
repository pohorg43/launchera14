.class public final Lj6/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li5/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li5/n<",
        "Lh4/z;",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lj6/d;


# direct methods
.method public constructor <init>(Lj6/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lj6/d$a;->a:Lj6/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Li5/x;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lj6/d$a;->n(Li5/x;Ljava/lang/StringBuilder;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public b(Li5/o0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj6/d$a;->a:Lj6/d;

    invoke-static {p0, p1, p2}, Lj6/d;->x(Lj6/d;Li5/o0;Ljava/lang/StringBuilder;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public c(Li5/e1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj6/d$a;->a:Lj6/d;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, v0}, Lj6/d;->u0(Li5/e1;ZLjava/lang/StringBuilder;Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public d(Li5/h0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj6/d$a;->a:Lj6/d;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ll5/c0;

    iget-object v0, p1, Ll5/c0;->e:Lh6/c;

    const-string v1, "package-fragment"

    invoke-virtual {p0, v0, v1, p2}, Lj6/d;->j0(Lh6/c;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lj6/d;->g()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, " in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ll5/c0;->b()Li5/e0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lj6/d;->f0(Li5/l;Ljava/lang/StringBuilder;Z)V

    :cond_2d
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public e(Li5/k;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/StringBuilder;

    const-string v2, "constructorDescriptor"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "builder"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    iget-object v2, v2, Lj6/d$a;->a:Lj6/d;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lj6/d;->P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V

    iget-object v3, v2, Lj6/d;->d:Lj6/j;

    iget-object v4, v3, Lj6/j;->o:Lv4/c;

    sget-object v5, Lj6/j;->W:[Lz4/n;

    const/16 v6, 0xd

    aget-object v6, v5, v6

    invoke-interface {v4, v3, v6}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_3f

    move-object v3, v0

    check-cast v3, Ll5/i;

    invoke-virtual {v3}, Ll5/i;->Z()Li5/e;

    move-result-object v3

    invoke-interface {v3}, Li5/e;->o()Li5/d0;

    move-result-object v3

    sget-object v7, Li5/d0;->b:Li5/d0;

    if-eq v3, v7, :cond_53

    :cond_3f
    move-object v3, v0

    check-cast v3, Ll5/r;

    invoke-virtual {v3}, Ll5/r;->getVisibility()Li5/t;

    move-result-object v3

    const-string v7, "constructor.visibility"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lj6/d;->w0(Li5/t;Ljava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_53

    move v3, v6

    goto :goto_54

    :cond_53
    move v3, v4

    :goto_54
    invoke-virtual {v2, v0, v1}, Lj6/d;->Z(Li5/b;Ljava/lang/StringBuilder;)V

    iget-object v7, v2, Lj6/d;->d:Lj6/j;

    iget-object v8, v7, Lj6/j;->O:Lv4/c;

    const/16 v9, 0x27

    aget-object v9, v5, v9

    invoke-interface {v8, v7, v9}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_77

    move-object v7, v0

    check-cast v7, Ll5/i;

    iget-boolean v7, v7, Ll5/i;->E:Z

    if-eqz v7, :cond_77

    if-eqz v3, :cond_75

    goto :goto_77

    :cond_75
    move v3, v4

    goto :goto_78

    :cond_77
    :goto_77
    move v3, v6

    :goto_78
    if-eqz v3, :cond_83

    const-string v7, "constructor"

    invoke-virtual {v2, v7}, Lj6/d;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_83
    move-object v7, v0

    check-cast v7, Ll5/i;

    invoke-virtual {v7}, Ll5/i;->N0()Li5/e;

    move-result-object v8

    const-string v9, "constructor.containingDeclaration"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lj6/d;->F()Z

    move-result v9

    const-string v10, "constructor.typeParameters"

    if-eqz v9, :cond_ae

    if-eqz v3, :cond_9e

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9e
    invoke-virtual {v2, v8, v1, v6}, Lj6/d;->f0(Li5/l;Ljava/lang/StringBuilder;Z)V

    move-object v3, v0

    check-cast v3, Ll5/r;

    invoke-virtual {v3}, Ll5/r;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1, v4}, Lj6/d;->s0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    :cond_ae
    move-object v3, v0

    check-cast v3, Ll5/r;

    invoke-virtual {v3}, Ll5/r;->g()Ljava/util/List;

    move-result-object v9

    const-string v11, "constructor.valueParameters"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Li5/a;->c0()Z

    move-result v0

    invoke-virtual {v2, v9, v0, v1}, Lj6/d;->v0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    iget-object v0, v2, Lj6/d;->d:Lj6/j;

    iget-object v9, v0, Lj6/j;->q:Lv4/c;

    const/16 v11, 0xf

    aget-object v5, v5, v11

    invoke-interface {v9, v0, v5}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_140

    iget-boolean v0, v7, Ll5/i;->E:Z

    if-nez v0, :cond_140

    instance-of v0, v8, Li5/e;

    if-eqz v0, :cond_140

    invoke-interface {v8}, Li5/e;->A()Li5/d;

    move-result-object v0

    if-eqz v0, :cond_140

    invoke-interface {v0}, Li5/a;->g()Ljava/util/List;

    move-result-object v0

    const-string v5, "primaryConstructor.valueParameters"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f5
    :goto_f5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_117

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Li5/e1;

    invoke-interface {v7}, Li5/e1;->t0()Z

    move-result v8

    if-nez v8, :cond_110

    invoke-interface {v7}, Li5/e1;->n0()Ly6/l0;

    move-result-object v7

    if-nez v7, :cond_110

    move v7, v6

    goto :goto_111

    :cond_110
    move v7, v4

    :goto_111
    if-eqz v7, :cond_f5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f5

    :cond_117
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_140

    const-string v0, " : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "this"

    invoke-virtual {v2, v0}, Lj6/d;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v17, Lj6/f;->a:Lj6/f;

    const/16 v18, 0x18

    const-string v12, ", "

    const-string v13, "("

    const-string v14, ")"

    invoke-static/range {v11 .. v18}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_140
    invoke-virtual {v2}, Lj6/d;->F()Z

    move-result v0

    if-eqz v0, :cond_150

    invoke-virtual {v3}, Ll5/r;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lj6/d;->x0(Ljava/util/List;Ljava/lang/StringBuilder;)V

    :cond_150
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0
.end method

.method public f(Li5/r0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ljava/lang/StringBuilder;

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "builder"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ll5/m;

    invoke-virtual {p1}, Ll5/m;->getName()Lh6/f;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public g(Li5/z0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj6/d$a;->a:Lj6/d;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lj6/d;->P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V

    move-object v0, p1

    check-cast v0, Ll5/f;

    iget-object v1, v0, Ll5/f;->e:Li5/t;

    const-string v2, "typeAlias.visibility"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lj6/d;->w0(Li5/t;Ljava/lang/StringBuilder;)Z

    invoke-virtual {p0, p1, p2}, Lj6/d;->a0(Li5/c0;Ljava/lang/StringBuilder;)V

    const-string v1, "typealias"

    invoke-virtual {p0, v1}, Lj6/d;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lj6/d;->f0(Li5/l;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {v0}, Ll5/f;->n()Ljava/util/List;

    move-result-object v0

    const-string v1, "typeAlias.declaredTypeParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lj6/d;->s0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0, p1, p2}, Lj6/d;->R(Li5/i;Ljava/lang/StringBuilder;)V

    const-string v0, " = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lw6/o;

    invoke-virtual {p1}, Lw6/o;->m0()Ly6/s0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj6/d;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public h(Li5/a1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj6/d$a;->a:Lj6/d;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lj6/d;->q0(Li5/a1;Ljava/lang/StringBuilder;Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public i(Li5/q0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setter"

    invoke-virtual {p0, p1, p2, v0}, Lj6/d$a;->o(Li5/n0;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public j(Li5/e;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj6/d$a;->a:Lj6/d;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Li5/e;->f()Li5/f;

    move-result-object v0

    sget-object v1, Li5/f;->d:Li5/f;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1d

    move v0, v3

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    invoke-virtual {p0}, Lj6/d;->H()Z

    move-result v1

    const-string v4, "companion object"

    const/4 v5, 0x0

    if-nez v1, :cond_145

    invoke-virtual {p0, p2, p1, v5}, Lj6/d;->P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V

    invoke-interface {p1}, Li5/e;->W()Ljava/util/List;

    move-result-object v1

    const-string v6, "klass.contextReceivers"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lj6/d;->T(Ljava/util/List;Ljava/lang/StringBuilder;)V

    if-nez v0, :cond_44

    invoke-interface {p1}, Li5/e;->getVisibility()Li5/t;

    move-result-object v1

    const-string v6, "klass.visibility"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lj6/d;->w0(Li5/t;Ljava/lang/StringBuilder;)Z

    :cond_44
    invoke-interface {p1}, Li5/e;->f()Li5/f;

    move-result-object v1

    sget-object v6, Li5/f;->b:Li5/f;

    if-ne v1, v6, :cond_54

    invoke-interface {p1}, Li5/e;->o()Li5/d0;

    move-result-object v1

    sget-object v6, Li5/d0;->d:Li5/d0;

    if-eq v1, v6, :cond_76

    :cond_54
    invoke-interface {p1}, Li5/e;->f()Li5/f;

    move-result-object v1

    invoke-virtual {v1}, Li5/f;->a()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {p1}, Li5/e;->o()Li5/d0;

    move-result-object v1

    sget-object v6, Li5/d0;->a:Li5/d0;

    if-eq v1, v6, :cond_76

    :cond_66
    invoke-interface {p1}, Li5/e;->o()Li5/d0;

    move-result-object v1

    const-string v6, "klass.modality"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lj6/d;->N(Li5/c0;)Li5/d0;

    move-result-object v6

    invoke-virtual {p0, v1, p2, v6}, Lj6/d;->c0(Li5/d0;Ljava/lang/StringBuilder;Li5/d0;)V

    :cond_76
    invoke-virtual {p0, p1, p2}, Lj6/d;->a0(Li5/c0;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lj6/d;->E()Ljava/util/Set;

    move-result-object v1

    sget-object v6, Lj6/h;->h:Lj6/h;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {p1}, Li5/i;->isInner()Z

    move-result v1

    if-eqz v1, :cond_8d

    move v1, v3

    goto :goto_8e

    :cond_8d
    move v1, v2

    :goto_8e
    const-string v6, "inner"

    invoke-virtual {p0, p2, v1, v6}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lj6/d;->E()Ljava/util/Set;

    move-result-object v1

    sget-object v6, Lj6/h;->j:Lj6/h;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    invoke-interface {p1}, Li5/e;->B0()Z

    move-result v1

    if-eqz v1, :cond_a7

    move v1, v3

    goto :goto_a8

    :cond_a7
    move v1, v2

    :goto_a8
    const-string v6, "data"

    invoke-virtual {p0, p2, v1, v6}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lj6/d;->E()Ljava/util/Set;

    move-result-object v1

    sget-object v6, Lj6/h;->k:Lj6/h;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-interface {p1}, Li5/e;->isInline()Z

    move-result v1

    if-eqz v1, :cond_c1

    move v1, v3

    goto :goto_c2

    :cond_c1
    move v1, v2

    :goto_c2
    const-string v6, "inline"

    invoke-virtual {p0, p2, v1, v6}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lj6/d;->E()Ljava/util/Set;

    move-result-object v1

    sget-object v6, Lj6/h;->q:Lj6/h;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_db

    invoke-interface {p1}, Li5/e;->isValue()Z

    move-result v1

    if-eqz v1, :cond_db

    move v1, v3

    goto :goto_dc

    :cond_db
    move v1, v2

    :goto_dc
    const-string v6, "value"

    invoke-virtual {p0, p2, v1, v6}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lj6/d;->E()Ljava/util/Set;

    move-result-object v1

    sget-object v6, Lj6/h;->p:Lj6/h;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    invoke-interface {p1}, Li5/e;->a0()Z

    move-result v1

    if-eqz v1, :cond_f5

    move v1, v3

    goto :goto_f6

    :cond_f5
    move v1, v2

    :goto_f6
    const-string v6, "fun"

    invoke-virtual {p0, p2, v1, v6}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v1, "classifier"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Li5/z0;

    if-eqz v1, :cond_107

    const-string v1, "typealias"

    goto :goto_13e

    :cond_107
    invoke-interface {p1}, Li5/e;->X()Z

    move-result v1

    if-eqz v1, :cond_10f

    move-object v1, v4

    goto :goto_13e

    :cond_10f
    invoke-interface {p1}, Li5/e;->f()Li5/f;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_13c

    if-eq v1, v3, :cond_139

    const/4 v6, 0x2

    if-eq v1, v6, :cond_136

    const/4 v6, 0x3

    if-eq v1, v6, :cond_133

    const/4 v6, 0x4

    if-eq v1, v6, :cond_130

    const/4 v6, 0x5

    if-ne v1, v6, :cond_12a

    const-string v1, "object"

    goto :goto_13e

    :cond_12a
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_130
    const-string v1, "annotation class"

    goto :goto_13e

    :cond_133
    const-string v1, "enum entry"

    goto :goto_13e

    :cond_136
    const-string v1, "enum class"

    goto :goto_13e

    :cond_139
    const-string v1, "interface"

    goto :goto_13e

    :cond_13c
    const-string v1, "class"

    :goto_13e
    invoke-virtual {p0, v1}, Lj6/d;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_145
    invoke-static {p1}, Lk6/i;->p(Li5/l;)Z

    move-result v1

    if-nez v1, :cond_158

    invoke-virtual {p0}, Lj6/d;->H()Z

    move-result v1

    if-nez v1, :cond_154

    invoke-virtual {p0, p2}, Lj6/d;->n0(Ljava/lang/StringBuilder;)V

    :cond_154
    invoke-virtual {p0, p1, p2, v3}, Lj6/d;->f0(Li5/l;Ljava/lang/StringBuilder;Z)V

    goto :goto_1c0

    :cond_158
    iget-object v1, p0, Lj6/d;->d:Lj6/j;

    iget-object v6, v1, Lj6/j;->F:Lv4/c;

    sget-object v7, Lj6/j;->W:[Lz4/n;

    const/16 v8, 0x1e

    aget-object v7, v7, v8

    invoke-interface {v6, v1, v7}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_195

    invoke-virtual {p0}, Lj6/d;->H()Z

    move-result v1

    if-eqz v1, :cond_177

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_177
    invoke-virtual {p0, p2}, Lj6/d;->n0(Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, Li5/l;->b()Li5/l;

    move-result-object v1

    if-eqz v1, :cond_195

    const-string v4, "of "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Li5/l;->getName()Lh6/f;

    move-result-object v1

    const-string v4, "containingDeclaration.name"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lj6/d;->u(Lh6/f;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_195
    invoke-virtual {p0}, Lj6/d;->K()Z

    move-result v1

    if-nez v1, :cond_1a7

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v1

    sget-object v4, Lh6/h;->c:Lh6/f;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c0

    :cond_1a7
    invoke-virtual {p0}, Lj6/d;->H()Z

    move-result v1

    if-nez v1, :cond_1b0

    invoke-virtual {p0, p2}, Lj6/d;->n0(Ljava/lang/StringBuilder;)V

    :cond_1b0
    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v1

    const-string v4, "descriptor.name"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Lj6/d;->u(Lh6/f;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c0
    :goto_1c0
    if-eqz v0, :cond_1c4

    goto/16 :goto_28d

    :cond_1c4
    invoke-interface {p1}, Li5/e;->n()Ljava/util/List;

    move-result-object v9

    const-string v0, "klass.declaredTypeParameters"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v9, p2, v2}, Lj6/d;->s0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0, p1, p2}, Lj6/d;->R(Li5/i;Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, Li5/e;->f()Li5/f;

    move-result-object v0

    invoke-virtual {v0}, Li5/f;->a()Z

    move-result v0

    if-nez v0, :cond_225

    iget-object v0, p0, Lj6/d;->d:Lj6/j;

    iget-object v1, v0, Lj6/j;->i:Lv4/c;

    sget-object v2, Lj6/j;->W:[Lz4/n;

    const/4 v4, 0x7

    aget-object v2, v2, v4

    invoke-interface {v1, v0, v2}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_225

    invoke-interface {p1}, Li5/e;->A()Li5/d;

    move-result-object v0

    if-eqz v0, :cond_225

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, v0, v5}, Lj6/d;->P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V

    invoke-interface {v0}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v1

    const-string v2, "primaryConstructor.visibility"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lj6/d;->w0(Li5/t;Ljava/lang/StringBuilder;)Z

    const-string v1, "constructor"

    invoke-virtual {p0, v1}, Lj6/d;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Li5/a;->g()Ljava/util/List;

    move-result-object v1

    const-string v2, "primaryConstructor.valueParameters"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Li5/a;->c0()Z

    move-result v0

    invoke-virtual {p0, v1, v0, p2}, Lj6/d;->v0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    :cond_225
    iget-object v0, p0, Lj6/d;->d:Lj6/j;

    iget-object v1, v0, Lj6/j;->w:Lv4/c;

    sget-object v2, Lj6/j;->W:[Lz4/n;

    const/16 v4, 0x15

    aget-object v2, v2, v4

    invoke-interface {v1, v0, v2}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23c

    goto :goto_28a

    :cond_23c
    invoke-interface {p1}, Li5/e;->m()Ly6/s0;

    move-result-object v0

    invoke-static {v0}, Lf5/g;->H(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_247

    goto :goto_28a

    :cond_247
    invoke-interface {p1}, Li5/h;->h()Ly6/j1;

    move-result-object p1

    invoke-interface {p1}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object v0

    const-string p1, "klass.typeConstructor.supertypes"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_28a

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    if-ne p1, v3, :cond_271

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly6/l0;

    invoke-static {p1}, Lf5/g;->z(Ly6/l0;)Z

    move-result p1

    if-eqz p1, :cond_271

    goto :goto_28a

    :cond_271
    invoke-virtual {p0, p2}, Lj6/d;->n0(Ljava/lang/StringBuilder;)V

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lj6/g;

    invoke-direct {v7, p0}, Lj6/g;-><init>(Lj6/d;)V

    const/16 v8, 0x3c

    const-string v2, ", "

    move-object v1, p2

    invoke-static/range {v0 .. v8}, Li4/v;->L(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/Appendable;

    :cond_28a
    :goto_28a
    invoke-virtual {p0, v9, p2}, Lj6/d;->x0(Ljava/util/List;Ljava/lang/StringBuilder;)V

    :goto_28d
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public k(Li5/e0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj6/d$a;->a:Lj6/d;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lj6/d;->f0(Li5/l;Ljava/lang/StringBuilder;Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public l(Li5/l0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj6/d$a;->a:Lj6/d;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ll5/t;

    iget-object v0, p1, Ll5/t;->d:Lh6/c;

    const-string v1, "package"

    invoke-virtual {p0, v0, v1, p2}, Lj6/d;->j0(Lh6/c;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lj6/d;->g()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, " in context of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Ll5/t;->c:Ll5/a0;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lj6/d;->f0(Li5/l;Ljava/lang/StringBuilder;Z)V

    :cond_2b
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public m(Li5/p0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getter"

    invoke-virtual {p0, p1, p2, v0}, Lj6/d$a;->o(Li5/n0;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public n(Li5/x;Ljava/lang/StringBuilder;)V
    .registers 10

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj6/d$a;->a:Lj6/d;

    invoke-virtual {p0}, Lj6/d;->H()Z

    move-result v0

    const-string v1, "function.typeParameters"

    const/4 v2, 0x1

    if-nez v0, :cond_124

    invoke-virtual {p0}, Lj6/d;->G()Z

    move-result v0

    if-nez v0, :cond_109

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lj6/d;->P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V

    invoke-interface {p1}, Li5/a;->q0()Ljava/util/List;

    move-result-object v0

    const-string v3, "function.contextReceiverParameters"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lj6/d;->T(Ljava/util/List;Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v0

    const-string v3, "function.visibility"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lj6/d;->w0(Li5/t;Ljava/lang/StringBuilder;)Z

    invoke-virtual {p0, p1, p2}, Lj6/d;->d0(Li5/b;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lj6/d;->D()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p0, p1, p2}, Lj6/d;->a0(Li5/c0;Ljava/lang/StringBuilder;)V

    :cond_43
    invoke-virtual {p0, p1, p2}, Lj6/d;->i0(Li5/b;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lj6/d;->D()Z

    move-result v0

    const-string v3, "suspend"

    if-eqz v0, :cond_e3

    invoke-interface {p1}, Li5/x;->isOperator()Z

    move-result v0

    const-string v4, "functionDescriptor.overriddenDescriptors"

    const/4 v5, 0x0

    if-eqz v0, :cond_88

    invoke-interface {p1}, Li5/x;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_65

    goto :goto_7d

    :cond_65
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_69
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li5/x;

    invoke-interface {v6}, Li5/x;->isOperator()Z

    move-result v6

    if-eqz v6, :cond_69

    move v0, v5

    goto :goto_7e

    :cond_7d
    :goto_7d
    move v0, v2

    :goto_7e
    if-nez v0, :cond_86

    invoke-virtual {p0}, Lj6/d;->A()Z

    move-result v0

    if-eqz v0, :cond_88

    :cond_86
    move v0, v2

    goto :goto_89

    :cond_88
    move v0, v5

    :goto_89
    invoke-interface {p1}, Li5/x;->isInfix()Z

    move-result v6

    if-eqz v6, :cond_bf

    invoke-interface {p1}, Li5/x;->d()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9d

    goto :goto_b5

    :cond_9d
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li5/x;

    invoke-interface {v6}, Li5/x;->isInfix()Z

    move-result v6

    if-eqz v6, :cond_a1

    move v4, v5

    goto :goto_b6

    :cond_b5
    :goto_b5
    move v4, v2

    :goto_b6
    if-nez v4, :cond_be

    invoke-virtual {p0}, Lj6/d;->A()Z

    move-result v4

    if-eqz v4, :cond_bf

    :cond_be
    move v5, v2

    :cond_bf
    invoke-interface {p1}, Li5/x;->y()Z

    move-result v4

    const-string v6, "tailrec"

    invoke-virtual {p0, p2, v4, v6}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-interface {p1}, Li5/x;->isSuspend()Z

    move-result v4

    invoke-virtual {p0, p2, v4, v3}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-interface {p1}, Li5/x;->isInline()Z

    move-result v3

    const-string v4, "inline"

    invoke-virtual {p0, p2, v3, v4}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v3, "infix"

    invoke-virtual {p0, p2, v5, v3}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v3, "operator"

    invoke-virtual {p0, p2, v0, v3}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_ea

    :cond_e3
    invoke-interface {p1}, Li5/x;->isSuspend()Z

    move-result v0

    invoke-virtual {p0, p2, v0, v3}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :goto_ea
    invoke-virtual {p0, p1, p2}, Lj6/d;->Z(Li5/b;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lj6/d;->K()Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-interface {p1}, Li5/x;->v0()Z

    move-result v0

    if-eqz v0, :cond_fe

    const-string v0, "/*isHiddenToOvercomeSignatureClash*/ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_fe
    invoke-interface {p1}, Li5/x;->y0()Z

    move-result v0

    if-eqz v0, :cond_109

    const-string v0, "/*isHiddenForResolutionEverywhereBesideSupercalls*/ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_109
    const-string v0, "fun"

    invoke-virtual {p0, v0}, Lj6/d;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Li5/a;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, v2}, Lj6/d;->s0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0, p1, p2}, Lj6/d;->l0(Li5/a;Ljava/lang/StringBuilder;)V

    :cond_124
    invoke-virtual {p0, p1, p2, v2}, Lj6/d;->f0(Li5/l;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p1}, Li5/a;->g()Ljava/util/List;

    move-result-object v0

    const-string v2, "function.valueParameters"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/a;->c0()Z

    move-result v2

    invoke-virtual {p0, v0, v2, p2}, Lj6/d;->v0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, p2}, Lj6/d;->m0(Li5/a;Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object v0

    iget-object v2, p0, Lj6/d;->d:Lj6/j;

    iget-object v3, v2, Lj6/j;->l:Lv4/c;

    sget-object v4, Lj6/j;->W:[Lz4/n;

    const/16 v5, 0xa

    aget-object v5, v4, v5

    invoke-interface {v3, v2, v5}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_181

    iget-object v2, p0, Lj6/d;->d:Lj6/j;

    iget-object v3, v2, Lj6/j;->k:Lv4/c;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-interface {v3, v2, v4}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_170

    if-eqz v0, :cond_170

    invoke-static {v0}, Lf5/g;->Q(Ly6/l0;)Z

    move-result v2

    if-nez v2, :cond_181

    :cond_170
    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_17a

    const-string v0, "[NULL]"

    goto :goto_17e

    :cond_17a
    invoke-virtual {p0, v0}, Lj6/d;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object v0

    :goto_17e
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_181
    invoke-interface {p1}, Li5/a;->getTypeParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lj6/d;->x0(Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public final o(Li5/n0;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lj6/d$a;->a:Lj6/d;

    iget-object v0, v0, Lj6/d;->d:Lj6/j;

    iget-object v1, v0, Lj6/j;->G:Lv4/c;

    sget-object v2, Lj6/j;->W:[Lz4/n;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj6/p;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_20

    const/4 p3, 0x1

    if-eq v0, p3, :cond_1c

    goto :goto_47

    :cond_1c
    invoke-virtual {p0, p1, p2}, Lj6/d$a;->n(Li5/x;Ljava/lang/StringBuilder;)V

    goto :goto_47

    :cond_20
    iget-object v0, p0, Lj6/d$a;->a:Lj6/d;

    invoke-virtual {v0, p1, p2}, Lj6/d;->a0(Li5/c0;Ljava/lang/StringBuilder;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lj6/d$a;->a:Lj6/d;

    invoke-interface {p1}, Li5/n0;->T()Li5/o0;

    move-result-object p1

    const-string p3, "descriptor.correspondingProperty"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lj6/d;->x(Lj6/d;Li5/o0;Ljava/lang/StringBuilder;)V

    :goto_47
    return-void
.end method
