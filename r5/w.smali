.class public final Lr5/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk6/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final c(Li5/a;Li5/a;)Z
    .registers 8

    const-string v0, "superDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lt5/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_7c

    instance-of v0, p0, Li5/x;

    if-nez v0, :cond_14

    goto :goto_7c

    :cond_14
    move-object v0, p1

    check-cast v0, Lt5/e;

    invoke-virtual {v0}, Ll5/r;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    check-cast p0, Li5/x;

    invoke-interface {p0}, Li5/a;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    invoke-virtual {v0}, Ll5/j0;->O0()Li5/u0;

    move-result-object v0

    invoke-interface {v0}, Li5/a;->g()Ljava/util/List;

    move-result-object v0

    const-string v2, "subDescriptor.original.valueParameters"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/x;->a()Li5/x;

    move-result-object v2

    invoke-interface {v2}, Li5/a;->g()Ljava/util/List;

    move-result-object v2

    const-string v3, "superDescriptor.original.valueParameters"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Li4/v;->o0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/j;

    iget-object v3, v2, Lh4/j;->a:Ljava/lang/Object;

    check-cast v3, Li5/e1;

    iget-object v2, v2, Lh4/j;->b:Ljava/lang/Object;

    check-cast v2, Li5/e1;

    move-object v4, p1

    check-cast v4, Li5/x;

    const-string v5, "subParameter"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lr5/w;->d(Li5/x;Li5/e1;)La6/o;

    move-result-object v3

    instance-of v3, v3, La6/o$c;

    const-string v4, "superParameter"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lr5/w;->d(Li5/x;Li5/e1;)La6/o;

    move-result-object v2

    instance-of v2, v2, La6/o$c;

    if-eq v3, v2, :cond_4b

    const/4 p0, 0x1

    return p0

    :cond_7c
    :goto_7c
    return v1
.end method

.method public static final d(Li5/x;Li5/e1;)La6/o;
    .registers 8

    const-string v0, "f"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Li5/x;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_e

    goto/16 :goto_cf

    :cond_e
    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    invoke-virtual {v0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v4, "remove"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-interface {p0}, Li5/a;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_cf

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lo6/c;->m(Li5/b;)Li5/b;

    move-result-object v0

    invoke-interface {v0}, Li5/m;->b()Li5/l;

    move-result-object v0

    instance-of v0, v0, Lt5/c;

    if-nez v0, :cond_45

    invoke-static {p0}, Lf5/g;->B(Li5/l;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_45

    :cond_43
    move v0, v3

    goto :goto_46

    :cond_45
    :goto_45
    move v0, v2

    :goto_46
    if-eqz v0, :cond_4a

    goto/16 :goto_cf

    :cond_4a
    invoke-interface {p0}, Li5/x;->a()Li5/x;

    move-result-object v0

    invoke-interface {v0}, Li5/a;->g()Ljava/util/List;

    move-result-object v0

    const-string v4, "f.original.valueParameters"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/e1;

    invoke-interface {v0}, Li5/d1;->getType()Ly6/l0;

    move-result-object v0

    const-string v4, "f.original.valueParameters.single().type"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, La6/x;->d(Ly6/l0;)La6/o;

    move-result-object v0

    instance-of v4, v0, La6/o$c;

    if-eqz v4, :cond_71

    check-cast v0, La6/o$c;

    goto :goto_72

    :cond_71
    move-object v0, v1

    :goto_72
    if-eqz v0, :cond_77

    iget-object v0, v0, La6/o$c;->j:Lp6/d;

    goto :goto_78

    :cond_77
    move-object v0, v1

    :goto_78
    sget-object v4, Lp6/d;->i:Lp6/d;

    if-eq v0, v4, :cond_7d

    goto :goto_cf

    :cond_7d
    invoke-static {p0}, Lr5/h;->a(Li5/x;)Li5/x;

    move-result-object v0

    if-nez v0, :cond_84

    goto :goto_cf

    :cond_84
    invoke-interface {v0}, Li5/x;->a()Li5/x;

    move-result-object v4

    invoke-interface {v4}, Li5/a;->g()Ljava/util/List;

    move-result-object v4

    const-string v5, "overridden.original.valueParameters"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/e1;

    invoke-interface {v4}, Li5/d1;->getType()Ly6/l0;

    move-result-object v4

    const-string v5, "overridden.original.valueParameters.single().type"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, La6/x;->d(Ly6/l0;)La6/o;

    move-result-object v4

    invoke-interface {v0}, Li5/x;->b()Li5/l;

    move-result-object v0

    const-string v5, "overridden.containingDeclaration"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo6/c;->h(Li5/l;)Lh6/d;

    move-result-object v0

    sget-object v5, Lf5/j$a;->K:Lh6/c;

    invoke-virtual {v5}, Lh6/c;->j()Lh6/d;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    instance-of v0, v4, La6/o$b;

    if-eqz v0, :cond_cf

    check-cast v4, La6/o$b;

    iget-object v0, v4, La6/o$b;->j:Ljava/lang/String;

    const-string v4, "java/lang/Object"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    move v0, v2

    goto :goto_d0

    :cond_cf
    :goto_cf
    move v0, v3

    :goto_d0
    const-string v4, "valueParameterDescriptor.type"

    if-nez v0, :cond_139

    invoke-interface {p0}, Li5/a;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_df

    goto :goto_12a

    :cond_df
    invoke-interface {p0}, Li5/x;->b()Li5/l;

    move-result-object v0

    instance-of v5, v0, Li5/e;

    if-eqz v5, :cond_ea

    check-cast v0, Li5/e;

    goto :goto_eb

    :cond_ea
    move-object v0, v1

    :goto_eb
    if-nez v0, :cond_ee

    goto :goto_12a

    :cond_ee
    invoke-interface {p0}, Li5/a;->g()Ljava/util/List;

    move-result-object p0

    const-string v5, "f.valueParameters"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/e1;

    invoke-interface {p0}, Li5/d1;->getType()Ly6/l0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    instance-of v5, p0, Li5/e;

    if-eqz v5, :cond_110

    move-object v1, p0

    check-cast v1, Li5/e;

    :cond_110
    if-nez v1, :cond_113

    goto :goto_12a

    :cond_113
    invoke-static {v0}, Lf5/g;->K(Li5/e;)Z

    move-result p0

    if-eqz p0, :cond_128

    invoke-static {v0}, Lo6/c;->g(Li5/l;)Lh6/c;

    move-result-object p0

    invoke-static {v1}, Lo6/c;->g(Li5/l;)Lh6/c;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_128

    goto :goto_129

    :cond_128
    move v2, v3

    :goto_129
    move v3, v2

    :goto_12a
    if-eqz v3, :cond_12d

    goto :goto_139

    :cond_12d
    invoke-interface {p1}, Li5/d1;->getType()Ly6/l0;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, La6/x;->d(Ly6/l0;)La6/o;

    move-result-object p0

    goto :goto_148

    :cond_139
    :goto_139
    invoke-interface {p1}, Li5/d1;->getType()Ly6/l0;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ld7/c;->l(Ly6/l0;)Ly6/l0;

    move-result-object p0

    invoke-static {p0}, La6/x;->d(Ly6/l0;)La6/o;

    move-result-object p0

    :goto_148
    return-object p0
.end method


# virtual methods
.method public a(Li5/a;Li5/a;Li5/e;)I
    .registers 10

    const-string p0, "superDescriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subDescriptor"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Li5/b;

    const/4 v0, 0x0

    if-eqz p0, :cond_b4

    instance-of p0, p2, Li5/x;

    if-eqz p0, :cond_b4

    invoke-static {p2}, Lf5/g;->B(Li5/l;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto/16 :goto_b4

    :cond_1b
    sget-object p0, Lr5/h;->m:Lr5/h;

    move-object v1, p2

    check-cast v1, Li5/x;

    invoke-interface {v1}, Li5/l;->getName()Lh6/f;

    move-result-object v2

    const-string v3, "subDescriptor.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lr5/h;->b(Lh6/f;)Z

    move-result p0

    if-nez p0, :cond_49

    sget-object p0, Lr5/m0;->a:Lr5/m0$a;

    invoke-interface {v1}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "<this>"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lr5/m0;->k:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    goto/16 :goto_b4

    :cond_49
    move-object p0, p1

    check-cast p0, Li5/b;

    invoke-static {p0}, Lr5/l0;->c(Li5/b;)Li5/b;

    move-result-object p0

    instance-of v2, p1, Li5/x;

    if-eqz v2, :cond_58

    move-object v3, p1

    check-cast v3, Li5/x;

    goto :goto_59

    :cond_58
    const/4 v3, 0x0

    :goto_59
    const/4 v4, 0x1

    if-eqz v3, :cond_68

    invoke-interface {v1}, Li5/x;->v0()Z

    move-result v5

    invoke-interface {v3}, Li5/x;->v0()Z

    move-result v3

    if-ne v5, v3, :cond_68

    move v3, v4

    goto :goto_69

    :cond_68
    move v3, v0

    :goto_69
    xor-int/2addr v3, v4

    if-eqz v3, :cond_75

    if-eqz p0, :cond_b3

    invoke-interface {v1}, Li5/x;->v0()Z

    move-result v3

    if-nez v3, :cond_75

    goto :goto_b3

    :cond_75
    instance-of v3, p3, Lt5/c;

    if-eqz v3, :cond_b4

    invoke-interface {v1}, Li5/x;->l0()Li5/x;

    move-result-object v3

    if-eqz v3, :cond_80

    goto :goto_b4

    :cond_80
    if-eqz p0, :cond_b4

    invoke-static {p3, p0}, Lr5/l0;->d(Li5/e;Li5/a;)Z

    move-result p3

    if-eqz p3, :cond_89

    goto :goto_b4

    :cond_89
    instance-of p3, p0, Li5/x;

    if-eqz p3, :cond_b3

    if-eqz v2, :cond_b3

    check-cast p0, Li5/x;

    invoke-static {p0}, Lr5/h;->a(Li5/x;)Li5/x;

    move-result-object p0

    if-eqz p0, :cond_b3

    const/4 p0, 0x2

    invoke-static {v1, v0, v0, p0}, La6/x;->b(Li5/x;ZZI)Ljava/lang/String;

    move-result-object p3

    move-object v1, p1

    check-cast v1, Li5/x;

    invoke-interface {v1}, Li5/x;->a()Li5/x;

    move-result-object v1

    const-string v2, "superDescriptor.original"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0, v0, p0}, La6/x;->b(Li5/x;ZZI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b3

    goto :goto_b4

    :cond_b3
    :goto_b3
    move v0, v4

    :cond_b4
    :goto_b4
    const/4 p0, 0x3

    if-eqz v0, :cond_b8

    return p0

    :cond_b8
    invoke-static {p1, p2}, Lr5/w;->c(Li5/a;Li5/a;)Z

    move-result p1

    if-eqz p1, :cond_bf

    return p0

    :cond_bf
    const/4 p0, 0x4

    return p0
.end method

.method public b()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
