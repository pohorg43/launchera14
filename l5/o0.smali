.class public Ll5/o0;
.super Ll5/p0;
.source ""

# interfaces
.implements Li5/e1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/o0$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nValueParameterDescriptorImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ValueParameterDescriptorImpl.kt\norg/jetbrains/kotlin/descriptors/impl/ValueParameterDescriptorImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n1549#2:135\n1620#2,3:136\n*S KotlinDebug\n*F\n+ 1 ValueParameterDescriptorImpl.kt\norg/jetbrains/kotlin/descriptors/impl/ValueParameterDescriptorImpl\n*L\n129#1:135\n129#1:136,3\n*E\n"
    }
.end annotation


# instance fields
.field public final f:I

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Ly6/l0;

.field public final k:Li5/e1;


# direct methods
.method public constructor <init>(Li5/a;Li5/e1;ILj5/h;Lh6/f;Ly6/l0;ZZZLy6/l0;Li5/v0;)V
    .registers 19

    move-object v6, p0

    const-string v0, "containingDeclaration"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v2, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object v3, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outType"

    move-object v4, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object/from16 v5, p11

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ll5/p0;-><init>(Li5/l;Lj5/h;Lh6/f;Ly6/l0;Li5/v0;)V

    move v0, p3

    iput v0, v6, Ll5/o0;->f:I

    move v0, p7

    iput-boolean v0, v6, Ll5/o0;->g:Z

    move v0, p8

    iput-boolean v0, v6, Ll5/o0;->h:Z

    move/from16 v0, p9

    iput-boolean v0, v6, Ll5/o0;->i:Z

    move-object/from16 v0, p10

    iput-object v0, v6, Ll5/o0;->j:Ly6/l0;

    if-nez p2, :cond_39

    move-object v0, v6

    goto :goto_3a

    :cond_39
    move-object v0, p2

    :goto_3a
    iput-object v0, v6, Ll5/o0;->k:Li5/e1;

    return-void
.end method


# virtual methods
.method public E(Li5/a;Lh6/f;I)Li5/e1;
    .registers 18

    move-object v0, p0

    const-string v1, "newOwner"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newName"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ll5/o0;

    invoke-virtual {p0}, Lj5/b;->getAnnotations()Lj5/h;

    move-result-object v6

    const-string v2, "annotations"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll5/p0;->getType()Ly6/l0;

    move-result-object v8

    const-string v2, "type"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll5/o0;->t0()Z

    move-result v9

    iget-boolean v10, v0, Ll5/o0;->h:Z

    iget-boolean v11, v0, Ll5/o0;->i:Z

    iget-object v12, v0, Ll5/o0;->j:Ly6/l0;

    sget-object v13, Li5/v0;->a:Li5/v0;

    const-string v0, "NO_SOURCE"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v2, v1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v13}, Ll5/o0;-><init>(Li5/a;Li5/e1;ILj5/h;Lh6/f;Ly6/l0;ZZZLy6/l0;Li5/v0;)V

    return-object v1
.end method

.method public F(Li5/n;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
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

    const-string v0, "visitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0, p2}, Li5/n;->c(Li5/e1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public K()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic a()Li5/a;
    .registers 1

    invoke-virtual {p0}, Ll5/o0;->a()Li5/e1;

    move-result-object p0

    return-object p0
.end method

.method public a()Li5/e1;
    .registers 2

    iget-object v0, p0, Ll5/o0;->k:Li5/e1;

    if-ne v0, p0, :cond_5

    goto :goto_9

    :cond_5
    invoke-interface {v0}, Li5/e1;->a()Li5/e1;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method public bridge synthetic a()Li5/l;
    .registers 1

    invoke-virtual {p0}, Ll5/o0;->a()Li5/e1;

    move-result-object p0

    return-object p0
.end method

.method public b()Li5/a;
    .registers 2

    invoke-super {p0}, Ll5/n;->b()Li5/l;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Li5/a;

    return-object p0
.end method

.method public bridge synthetic b()Li5/l;
    .registers 1

    invoke-virtual {p0}, Ll5/o0;->b()Li5/a;

    move-result-object p0

    return-object p0
.end method

.method public c(Ly6/x1;)Li5/f1;
    .registers 3

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly6/x1;->h()Z

    move-result p1

    if-eqz p1, :cond_c

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public c(Ly6/x1;)Li5/m;
    .registers 3

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly6/x1;->h()Z

    move-result p1

    if-eqz p1, :cond_c

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public d()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Li5/e1;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ll5/o0;->b()Li5/a;

    move-result-object v0

    invoke-interface {v0}, Li5/a;->d()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "containingDeclaration.overriddenDescriptors"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/a;

    invoke-interface {v2}, Li5/a;->g()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Ll5/o0;->f:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/e1;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_38
    return-object v1
.end method

.method public getIndex()I
    .registers 1

    iget p0, p0, Ll5/o0;->f:I

    return p0
.end method

.method public getVisibility()Li5/t;
    .registers 2

    sget-object p0, Li5/s;->f:Li5/t;

    const-string v0, "LOCAL"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic i0()Lm6/g;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public j0()Z
    .registers 1

    iget-boolean p0, p0, Ll5/o0;->i:Z

    return p0
.end method

.method public k0()Z
    .registers 1

    iget-boolean p0, p0, Ll5/o0;->h:Z

    return p0
.end method

.method public n0()Ly6/l0;
    .registers 1

    iget-object p0, p0, Ll5/o0;->j:Ly6/l0;

    return-object p0
.end method

.method public t0()Z
    .registers 2

    iget-boolean v0, p0, Ll5/o0;->g:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Ll5/o0;->b()Li5/a;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableMemberDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Li5/b;

    invoke-interface {p0}, Li5/b;->f()Li5/b$a;

    move-result-object p0

    invoke-virtual {p0}, Li5/b$a;->a()Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public bridge synthetic x0()Li5/o;
    .registers 1

    invoke-virtual {p0}, Ll5/o0;->a()Li5/e1;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic z0()Li5/f1;
    .registers 1

    invoke-virtual {p0}, Ll5/o0;->a()Li5/e1;

    move-result-object p0

    return-object p0
.end method
