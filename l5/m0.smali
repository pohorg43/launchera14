.class public final Ll5/m0;
.super Ll5/r;
.source ""

# interfaces
.implements Ll5/l0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/m0$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTypeAliasConstructorDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeAliasConstructorDescriptor.kt\norg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptorImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,238:1\n1#2:239\n*E\n"
    }
.end annotation


# static fields
.field public static final N:Ll5/m0$a;

.field public static final synthetic O:[Lz4/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final E:Lx6/m;

.field public final F:Li5/z0;

.field public final G:Lx6/j;

.field public H:Li5/d;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lz4/n;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Ll5/m0;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const-string v3, "withDispatchReceiver"

    const-string v4, "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ll5/m0;->O:[Lz4/n;

    new-instance v0, Ll5/m0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll5/m0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ll5/m0;->N:Ll5/m0$a;

    return-void
.end method

.method public constructor <init>(Lx6/m;Li5/z0;Li5/d;Ll5/l0;Lj5/h;Li5/b$a;Li5/v0;)V
    .registers 15

    sget-object v4, Lh6/h;->f:Lh6/f;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Ll5/r;-><init>(Li5/l;Li5/x;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;)V

    iput-object p1, p0, Ll5/m0;->E:Lx6/m;

    iput-object p2, p0, Ll5/m0;->F:Li5/z0;

    invoke-interface {p2}, Li5/c0;->V()Z

    move-result p2

    iput-boolean p2, p0, Ll5/r;->s:Z

    new-instance p2, Ll5/m0$b;

    invoke-direct {p2, p0, p3}, Ll5/m0$b;-><init>(Ll5/m0;Li5/d;)V

    invoke-interface {p1, p2}, Lx6/m;->d(Lkotlin/jvm/functions/Function0;)Lx6/j;

    move-result-object p1

    iput-object p1, p0, Ll5/m0;->G:Lx6/j;

    iput-object p3, p0, Ll5/m0;->H:Li5/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic A0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/b;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Ll5/m0;->M0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Ll5/l0;

    move-result-object p0

    return-object p0
.end method

.method public D0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Ll5/r;
    .registers 15

    const-string p2, "newOwner"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "kind"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "annotations"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "source"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Li5/b$a;->a:Li5/b$a;

    new-instance p1, Ll5/m0;

    iget-object v1, p0, Ll5/m0;->E:Lx6/m;

    iget-object v2, p0, Ll5/m0;->F:Li5/z0;

    iget-object v3, p0, Ll5/m0;->H:Li5/d;

    move-object v0, p1

    move-object v4, p0

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Ll5/m0;-><init>(Lx6/m;Li5/z0;Li5/d;Ll5/l0;Lj5/h;Li5/b$a;Li5/v0;)V

    return-object p1
.end method

.method public M0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Ll5/l0;
    .registers 7

    const-string v0, "newOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modality"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll5/r;->q()Li5/x$a;

    move-result-object p0

    check-cast p0, Ll5/r$c;

    invoke-virtual {p0, p1}, Ll5/r$c;->g(Li5/l;)Li5/x$a;

    invoke-interface {p0, p2}, Li5/x$a;->l(Li5/d0;)Li5/x$a;

    invoke-interface {p0, p3}, Li5/x$a;->q(Li5/t;)Li5/x$a;

    invoke-interface {p0, p4}, Li5/x$a;->i(Li5/b$a;)Li5/x$a;

    invoke-interface {p0, p5}, Li5/x$a;->m(Z)Li5/x$a;

    invoke-interface {p0}, Li5/x$a;->build()Li5/x;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ll5/l0;

    return-object p0
.end method

.method public N0()Ll5/l0;
    .registers 2

    invoke-super {p0}, Ll5/r;->a()Li5/x;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ll5/l0;

    return-object p0
.end method

.method public O()Li5/d;
    .registers 1

    iget-object p0, p0, Ll5/m0;->H:Li5/d;

    return-object p0
.end method

.method public O0(Ly6/x1;)Ll5/l0;
    .registers 4

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ll5/r;->c(Ly6/x1;)Li5/x;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptorImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ll5/m0;

    iget-object v0, p1, Ll5/r;->g:Ly6/l0;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Ly6/x1;->d(Ly6/l0;)Ly6/x1;

    move-result-object v0

    const-string v1, "create(substitutedTypeAliasConstructor.returnType)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ll5/m0;->H:Li5/d;

    invoke-interface {p0}, Li5/d;->a()Li5/d;

    move-result-object p0

    invoke-interface {p0, v0}, Li5/d;->c(Ly6/x1;)Li5/d;

    move-result-object p0

    if-nez p0, :cond_2c

    const/4 p0, 0x0

    return-object p0

    :cond_2c
    iput-object p0, p1, Ll5/m0;->H:Li5/d;

    return-object p1
.end method

.method public Y()Z
    .registers 1

    iget-object p0, p0, Ll5/m0;->H:Li5/d;

    invoke-interface {p0}, Li5/k;->Y()Z

    move-result p0

    return p0
.end method

.method public Z()Li5/e;
    .registers 2

    iget-object p0, p0, Ll5/m0;->H:Li5/d;

    invoke-interface {p0}, Li5/k;->Z()Li5/e;

    move-result-object p0

    const-string v0, "underlyingConstructorDescriptor.constructedClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic a()Li5/a;
    .registers 1

    invoke-virtual {p0}, Ll5/m0;->N0()Ll5/l0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/b;
    .registers 1

    invoke-virtual {p0}, Ll5/m0;->N0()Ll5/l0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/l;
    .registers 1

    invoke-virtual {p0}, Ll5/m0;->N0()Ll5/l0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/x;
    .registers 1

    invoke-virtual {p0}, Ll5/m0;->N0()Ll5/l0;

    move-result-object p0

    return-object p0
.end method

.method public b()Li5/i;
    .registers 1

    iget-object p0, p0, Ll5/m0;->F:Li5/z0;

    return-object p0
.end method

.method public b()Li5/l;
    .registers 1

    iget-object p0, p0, Ll5/m0;->F:Li5/z0;

    return-object p0
.end method

.method public bridge synthetic c(Ly6/x1;)Li5/k;
    .registers 2

    invoke-virtual {p0, p1}, Ll5/m0;->O0(Ly6/x1;)Ll5/l0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Ly6/x1;)Li5/m;
    .registers 2

    invoke-virtual {p0, p1}, Ll5/m0;->O0(Ly6/x1;)Ll5/l0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Ly6/x1;)Li5/x;
    .registers 2

    invoke-virtual {p0, p1}, Ll5/m0;->O0(Ly6/x1;)Ll5/l0;

    move-result-object p0

    return-object p0
.end method

.method public getReturnType()Ly6/l0;
    .registers 1

    iget-object p0, p0, Ll5/r;->g:Ly6/l0;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic x0()Li5/o;
    .registers 1

    invoke-virtual {p0}, Ll5/m0;->N0()Ll5/l0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic z0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/x;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Ll5/m0;->M0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Ll5/l0;

    move-result-object p0

    return-object p0
.end method
