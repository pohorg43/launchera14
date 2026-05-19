.class public final La7/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li5/o0;


# instance fields
.field public final synthetic a:Ll5/f0;


# direct methods
.method public constructor <init>()V
    .registers 22

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, La7/j;->a:La7/j;

    sget-object v1, La7/j;->c:La7/a;

    sget v0, Lj5/h;->I:I

    sget-object v2, Lj5/h$a;->b:Lj5/h;

    sget-object v3, Li5/d0;->c:Li5/d0;

    sget-object v4, Li5/s;->e:Li5/t;

    const/4 v5, 0x1

    const-string v0, "<Error property>"

    invoke-static {v0}, Lh6/f;->h(Ljava/lang/String;)Lh6/f;

    move-result-object v6

    sget-object v7, Li5/b$a;->a:Li5/b$a;

    sget-object v8, Li5/v0;->a:Li5/v0;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Ll5/f0;->G0(Li5/l;Lj5/h;Li5/d0;Li5/t;ZLh6/f;Li5/b$a;Li5/v0;ZZZZZZ)Ll5/f0;

    move-result-object v0

    sget-object v16, La7/j;->e:Ly6/l0;

    sget-object v20, Li4/y;->a:Li4/y;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v0

    move-object/from16 v17, v20

    invoke-virtual/range {v15 .. v20}, Ll5/f0;->L0(Ly6/l0;Ljava/util/List;Li5/r0;Li5/r0;Ljava/util/List;)V

    move-object/from16 v1, p0

    iput-object v0, v1, La7/d;->a:Ll5/f0;

    return-void
.end method


# virtual methods
.method public A0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/b;
    .registers 12

    iget-object v0, p0, La7/d;->a:Ll5/f0;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ll5/f0;->F0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/o0;

    move-result-object p0

    return-object p0
.end method

.method public F(Li5/n;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Li5/n<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p0, p2}, Li5/n;->b(Li5/o0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public I()Li5/r0;
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    iget-object p0, p0, Ll5/f0;->u:Li5/r0;

    return-object p0
.end method

.method public K()Z
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    iget-boolean p0, p0, Ll5/q0;->f:Z

    return p0
.end method

.method public L()Li5/r0;
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    iget-object p0, p0, Ll5/f0;->v:Li5/r0;

    return-object p0
.end method

.method public M()Li5/v;
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    iget-object p0, p0, Ll5/f0;->B:Li5/v;

    return-object p0
.end method

.method public P(Li5/a$a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Li5/a$a<",
            "TV;>;)TV;"
        }
    .end annotation

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0, p1}, Ll5/f0;->P(Li5/a$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public V()Z
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    iget-boolean p0, p0, Ll5/f0;->q:Z

    return p0
.end method

.method public bridge synthetic a()Li5/a;
    .registers 1

    invoke-virtual {p0}, La7/d;->a()Li5/o0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/b;
    .registers 1

    invoke-virtual {p0}, La7/d;->a()Li5/o0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/l;
    .registers 1

    invoke-virtual {p0}, La7/d;->a()Li5/o0;

    move-result-object p0

    return-object p0
.end method

.method public a()Li5/o0;
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0}, Ll5/f0;->a()Li5/o0;

    move-result-object p0

    return-object p0
.end method

.method public b()Li5/l;
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0}, Ll5/n;->b()Li5/l;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Ly6/x1;)Li5/f1;
    .registers 2

    invoke-virtual {p0, p1}, La7/d;->c(Ly6/x1;)Li5/o0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Ly6/x1;)Li5/m;
    .registers 2

    invoke-virtual {p0, p1}, La7/d;->c(Ly6/x1;)Li5/o0;

    move-result-object p0

    return-object p0
.end method

.method public c(Ly6/x1;)Li5/o0;
    .registers 3

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0, p1}, Ll5/f0;->c(Ly6/x1;)Li5/o0;

    move-result-object p0

    return-object p0
.end method

.method public c0()Z
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0}, Ll5/p0;->c0()Z

    move-result p0

    return p0
.end method

.method public d()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Li5/o0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0}, Ll5/f0;->d()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public f()Li5/b$a;
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0}, Ll5/f0;->f()Li5/b$a;

    move-result-object p0

    return-object p0
.end method

.method public f0()Z
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    iget-boolean p0, p0, Ll5/f0;->p:Z

    return p0
.end method

.method public g()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/e1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0}, Ll5/p0;->g()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAnnotations()Lj5/h;
    .registers 2

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0}, Lj5/b;->getAnnotations()Lj5/h;

    move-result-object p0

    const-string v0, "<get-annotations>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getGetter()Li5/p0;
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    iget-object p0, p0, Ll5/f0;->x:Ll5/g0;

    return-object p0
.end method

.method public getName()Lh6/f;
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0}, Ll5/m;->getName()Lh6/f;

    move-result-object p0

    return-object p0
.end method

.method public getReturnType()Ly6/l0;
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0}, Ll5/f0;->getReturnType()Ly6/l0;

    move-result-object p0

    return-object p0
.end method

.method public getSetter()Li5/q0;
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    iget-object p0, p0, Ll5/f0;->y:Li5/q0;

    return-object p0
.end method

.method public getSource()Li5/v0;
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0}, Ll5/n;->getSource()Li5/v0;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ly6/l0;
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0}, Ll5/p0;->getType()Ly6/l0;

    move-result-object p0

    return-object p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0}, Ll5/f0;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVisibility()Li5/t;
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0}, Ll5/f0;->getVisibility()Li5/t;

    move-result-object p0

    return-object p0
.end method

.method public i0()Lm6/g;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm6/g<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    iget-object p0, p0, Ll5/q0;->g:Lx6/j;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm6/g;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public isConst()Z
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0}, Ll5/f0;->isConst()Z

    move-result p0

    return p0
.end method

.method public isExternal()Z
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0}, Ll5/f0;->isExternal()Z

    move-result p0

    return p0
.end method

.method public o()Li5/d0;
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0}, Ll5/f0;->o()Li5/d0;

    move-result-object p0

    return-object p0
.end method

.method public p0()Li5/v;
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    iget-object p0, p0, Ll5/f0;->A:Li5/v;

    return-object p0
.end method

.method public q0()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/r0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0}, Ll5/f0;->q0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/n0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Ll5/f0;->x:Ll5/g0;

    if-eqz v1, :cond_12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object p0, p0, Ll5/f0;->y:Li5/q0;

    if-eqz p0, :cond_19

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    return-object v0
.end method

.method public r0()Z
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    iget-boolean p0, p0, Ll5/f0;->n:Z

    return p0
.end method

.method public w0(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Li5/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "overriddenDescriptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    invoke-virtual {p0, p1}, Ll5/f0;->w0(Ljava/util/Collection;)V

    return-void
.end method

.method public x()Z
    .registers 1

    iget-object p0, p0, La7/d;->a:Ll5/f0;

    iget-boolean p0, p0, Ll5/f0;->s:Z

    return p0
.end method
