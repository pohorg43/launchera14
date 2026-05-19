.class public final Lv5/l$e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/l;-><init>(Lu5/g;Lv5/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lh6/f;",
        "Li5/o0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/l;


# direct methods
.method public constructor <init>(Lv5/l;)V
    .registers 2

    iput-object p1, p0, Lv5/l$e;->a:Lv5/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lh6/f;

    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lv5/l$e;->a:Lv5/l;

    iget-object v3, v2, Lv5/l;->c:Lv5/l;

    if-eqz v3, :cond_1b

    iget-object v0, v3, Lv5/l;->g:Lx6/h;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/o0;

    goto/16 :goto_143

    :cond_1b
    iget-object v2, v2, Lv5/l;->e:Lx6/i;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv5/b;

    invoke-interface {v2, v1}, Lv5/b;->b(Lh6/f;)Ly5/n;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_142

    invoke-interface {v1}, Ly5/n;->E()Z

    move-result v3

    if-nez v3, :cond_142

    iget-object v0, v0, Lv5/l$e;->a:Lv5/l;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ly5/s;->isFinal()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/lit8 v9, v3, 0x1

    iget-object v3, v0, Lv5/l;->b:Lu5/g;

    invoke-static {v3, v1}, Ly1/a;->a(Lu5/g;Ly5/d;)Lj5/h;

    move-result-object v6

    invoke-virtual {v0}, Lv5/l;->q()Li5/l;

    move-result-object v5

    sget-object v7, Li5/d0;->a:Li5/d0;

    invoke-interface {v1}, Ly5/s;->getVisibility()Li5/i1;

    move-result-object v3

    invoke-static {v3}, Lr5/n0;->a(Li5/i1;)Li5/t;

    move-result-object v8

    invoke-interface {v1}, Ly5/t;->getName()Lh6/f;

    move-result-object v10

    iget-object v3, v0, Lv5/l;->b:Lu5/g;

    iget-object v3, v3, Lu5/g;->a:Lu5/c;

    iget-object v3, v3, Lu5/c;->j:Lx5/b;

    invoke-interface {v3, v1}, Lx5/b;->a(Ly5/l;)Lx5/a;

    move-result-object v11

    invoke-interface {v1}, Ly5/s;->isFinal()Z

    move-result v3

    const/4 v13, 0x0

    if-eqz v3, :cond_6d

    invoke-interface {v1}, Ly5/s;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_6d

    move v12, v4

    goto :goto_6e

    :cond_6d
    move v12, v13

    :goto_6e
    invoke-static/range {v5 .. v12}, Lt5/f;->M0(Li5/l;Lj5/h;Li5/d0;Li5/t;ZLh6/f;Li5/v0;Z)Lt5/f;

    move-result-object v3

    const-string v5, "create(\n            owne…d.isFinalStatic\n        )"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v2, v2, v2}, Ll5/f0;->J0(Ll5/g0;Li5/q0;Li5/v;Li5/v;)V

    iget-object v5, v0, Lv5/l;->b:Lu5/g;

    iget-object v5, v5, Lu5/g;->e:Lw5/e;

    invoke-interface {v1}, Ly5/n;->getType()Ly5/x;

    move-result-object v6

    sget-object v7, Ly6/z1;->b:Ly6/z1;

    const/4 v8, 0x7

    invoke-static {v7, v13, v13, v2, v8}, Lw5/b;->a(Ly6/z1;ZZLi5/a1;I)Lw5/a;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lw5/e;->e(Ly5/x;Lw5/a;)Ly6/l0;

    move-result-object v5

    invoke-static {v5}, Lf5/g;->L(Ly6/l0;)Z

    move-result v6

    if-nez v6, :cond_99

    invoke-static {v5}, Lf5/g;->N(Ly6/l0;)Z

    move-result v6

    if-eqz v6, :cond_b2

    :cond_99
    invoke-interface {v1}, Ly5/s;->isFinal()Z

    move-result v6

    if-eqz v6, :cond_a7

    invoke-interface {v1}, Ly5/s;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_a7

    move v6, v4

    goto :goto_a8

    :cond_a7
    move v6, v13

    :goto_a8
    if-eqz v6, :cond_b2

    invoke-interface {v1}, Ly5/n;->I()Z

    move-result v6

    if-eqz v6, :cond_b2

    move v6, v4

    goto :goto_b3

    :cond_b2
    move v6, v13

    :goto_b3
    if-eqz v6, :cond_be

    invoke-static {v5}, Ly6/a2;->i(Ly6/l0;)Ly6/l0;

    move-result-object v5

    const-string v6, "makeNotNullable(propertyType)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_be
    move-object v15, v5

    sget-object v19, Li4/y;->a:Li4/y;

    invoke-virtual {v0}, Lv5/l;->p()Li5/r0;

    move-result-object v17

    const/16 v18, 0x0

    move-object v14, v3

    move-object/from16 v16, v19

    invoke-virtual/range {v14 .. v19}, Ll5/f0;->L0(Ly6/l0;Ljava/util/List;Li5/r0;Li5/r0;Ljava/util/List;)V

    invoke-virtual {v3}, Ll5/p0;->getType()Ly6/l0;

    move-result-object v5

    sget v6, Lk6/i;->a:I

    if-eqz v5, :cond_13c

    invoke-virtual {v3}, Ll5/q0;->K()Z

    move-result v2

    if-nez v2, :cond_124

    invoke-static {v5}, Ly0/b;->c(Ly6/l0;)Z

    move-result v2

    if-eqz v2, :cond_e2

    goto :goto_124

    :cond_e2
    invoke-static {v5}, Ly6/a2;->b(Ly6/l0;)Z

    move-result v2

    if-eqz v2, :cond_e9

    goto :goto_125

    :cond_e9
    invoke-static {v3}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object v2

    invoke-static {v5}, Lf5/g;->L(Ly6/l0;)Z

    move-result v6

    if-nez v6, :cond_125

    sget-object v6, Lz6/d;->a:Lz6/d;

    invoke-virtual {v2}, Lf5/g;->w()Ly6/s0;

    move-result-object v7

    check-cast v6, Lz6/m;

    invoke-virtual {v6, v7, v5}, Lz6/m;->b(Ly6/l0;Ly6/l0;)Z

    move-result v7

    if-nez v7, :cond_125

    const-string v7, "Number"

    invoke-virtual {v2, v7}, Lf5/g;->k(Ljava/lang/String;)Li5/e;

    move-result-object v7

    invoke-interface {v7}, Li5/e;->m()Ly6/s0;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lz6/m;->b(Ly6/l0;Ly6/l0;)Z

    move-result v7

    if-nez v7, :cond_125

    invoke-virtual {v2}, Lf5/g;->f()Ly6/s0;

    move-result-object v2

    invoke-virtual {v6, v2, v5}, Lz6/m;->b(Ly6/l0;Ly6/l0;)Z

    move-result v2

    if-nez v2, :cond_125

    sget-object v2, Lf5/n;->a:Lf5/n;

    invoke-static {v5}, Lf5/n;->a(Ly6/l0;)Z

    move-result v2

    if-eqz v2, :cond_124

    goto :goto_125

    :cond_124
    :goto_124
    move v4, v13

    :cond_125
    :goto_125
    if-eqz v4, :cond_12f

    new-instance v2, Lv5/n;

    invoke-direct {v2, v0, v1, v3}, Lv5/n;-><init>(Lv5/l;Ly5/n;Ll5/f0;)V

    invoke-virtual {v3, v2}, Ll5/q0;->E0(Lkotlin/jvm/functions/Function0;)V

    :cond_12f
    iget-object v0, v0, Lv5/l;->b:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->g:Ls5/g;

    check-cast v0, Ls5/g$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    goto :goto_143

    :cond_13c
    const/16 v0, 0x43

    invoke-static {v0}, Lk6/i;->a(I)V

    throw v2

    :cond_142
    move-object v0, v2

    :goto_143
    return-object v0
.end method
