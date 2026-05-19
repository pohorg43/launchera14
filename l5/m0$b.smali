.class public final Ll5/m0$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll5/m0;-><init>(Lx6/m;Li5/z0;Li5/d;Ll5/l0;Lj5/h;Li5/b$a;Li5/v0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ll5/m0;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTypeAliasConstructorDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeAliasConstructorDescriptor.kt\norg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptorImpl$withDispatchReceiver$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,238:1\n1549#2:239\n1620#2,3:240\n*S KotlinDebug\n*F\n+ 1 TypeAliasConstructorDescriptor.kt\norg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptorImpl$withDispatchReceiver$2\n*L\n87#1:239\n87#1:240,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll5/m0;

.field public final synthetic b:Li5/d;


# direct methods
.method public constructor <init>(Ll5/m0;Li5/d;)V
    .registers 3

    iput-object p1, p0, Ll5/m0$b;->a:Ll5/m0;

    iput-object p2, p0, Ll5/m0$b;->b:Li5/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 11

    new-instance v9, Ll5/m0;

    iget-object v4, p0, Ll5/m0$b;->a:Ll5/m0;

    iget-object v1, v4, Ll5/m0;->E:Lx6/m;

    iget-object v2, v4, Ll5/m0;->F:Li5/z0;

    iget-object v3, p0, Ll5/m0$b;->b:Li5/d;

    invoke-interface {v3}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v5

    iget-object v0, p0, Ll5/m0$b;->b:Li5/d;

    invoke-interface {v0}, Li5/b;->f()Li5/b$a;

    move-result-object v6

    const-string v0, "underlyingConstructorDescriptor.kind"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll5/m0$b;->a:Ll5/m0;

    iget-object v0, v0, Ll5/m0;->F:Li5/z0;

    invoke-interface {v0}, Li5/o;->getSource()Li5/v0;

    move-result-object v7

    const-string v0, "typeAliasDescriptor.source"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Ll5/m0;-><init>(Lx6/m;Li5/z0;Li5/d;Ll5/l0;Lj5/h;Li5/b$a;Li5/v0;)V

    iget-object v0, p0, Ll5/m0$b;->a:Ll5/m0;

    iget-object p0, p0, Ll5/m0$b;->b:Li5/d;

    sget-object v1, Ll5/m0;->N:Ll5/m0$a;

    iget-object v2, v0, Ll5/m0;->F:Li5/z0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Li5/z0;->p()Li5/e;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_3e

    move-object v1, v3

    goto :goto_46

    :cond_3e
    invoke-interface {v2}, Li5/z0;->D()Ly6/s0;

    move-result-object v1

    invoke-static {v1}, Ly6/x1;->d(Ly6/l0;)Ly6/x1;

    move-result-object v1

    :goto_46
    if-nez v1, :cond_4a

    move-object v9, v3

    goto :goto_a0

    :cond_4a
    const/4 v2, 0x0

    invoke-interface {p0}, Li5/a;->I()Li5/r0;

    move-result-object v4

    if-eqz v4, :cond_55

    invoke-interface {v4, v1}, Li5/r0;->c(Ly6/x1;)Li5/r0;

    move-result-object v3

    :cond_55
    invoke-interface {p0}, Li5/a;->q0()Ljava/util/List;

    move-result-object p0

    const-string v4, "underlyingConstructorDes…contextReceiverParameters"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p0, v5}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li5/r0;

    invoke-interface {v5, v1}, Li5/r0;->c(Ly6/x1;)Li5/r0;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    :cond_81
    iget-object p0, v0, Ll5/m0;->F:Li5/z0;

    invoke-interface {p0}, Li5/i;->n()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Ll5/r;->g()Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Ll5/r;->g:Ly6/l0;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v7, Li5/d0;->a:Li5/d0;

    iget-object v0, v0, Ll5/m0;->F:Li5/z0;

    invoke-interface {v0}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v8

    move-object v0, v9

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-virtual/range {v0 .. v8}, Ll5/r;->G0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;)Ll5/r;

    :goto_a0
    return-object v9
.end method
