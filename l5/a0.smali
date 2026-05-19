.class public final Ll5/a0;
.super Ll5/m;
.source ""

# interfaces
.implements Li5/e0;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nModuleDescriptorImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDescriptorImpl.kt\norg/jetbrains/kotlin/descriptors/impl/ModuleDescriptorImpl\n+ 2 coreLib.kt\norg/jetbrains/kotlin/utils/CoreLibKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n19#2:177\n19#2:181\n19#2:182\n766#3:178\n857#3,2:179\n1#4:183\n*S KotlinDebug\n*F\n+ 1 ModuleDescriptorImpl.kt\norg/jetbrains/kotlin/descriptors/impl/ModuleDescriptorImpl\n*L\n72#1:177\n75#1:181\n78#1:182\n72#1:178\n72#1:179,2\n*E\n"
    }
.end annotation


# instance fields
.field public final c:Lx6/m;

.field public final d:Lf5/g;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh/b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ll5/d0;

.field public g:Ll5/w;

.field public h:Li5/i0;

.field public i:Z

.field public final j:Lx6/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/g<",
            "Lh6/c;",
            "Li5/l0;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lh4/f;


# direct methods
.method public constructor <init>(Lh6/f;Lx6/m;Lf5/g;Ljava/util/Map;Lh6/f;I)V
    .registers 7

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_a

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object p4, Li4/z;->a:Li4/z;

    goto :goto_b

    :cond_a
    const/4 p4, 0x0

    :goto_b
    const-string p5, "moduleName"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "storageManager"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "builtIns"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "capabilities"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget p5, Lj5/h;->I:I

    sget-object p5, Lj5/h$a;->b:Lj5/h;

    invoke-direct {p0, p5, p1}, Ll5/m;-><init>(Lj5/h;Lh6/f;)V

    iput-object p2, p0, Ll5/a0;->c:Lx6/m;

    iput-object p3, p0, Ll5/a0;->d:Lf5/g;

    iget-boolean p3, p1, Lh6/f;->b:Z

    if-eqz p3, :cond_5d

    iput-object p4, p0, Ll5/a0;->e:Ljava/util/Map;

    sget-object p1, Ll5/d0;->a:Ll5/d0$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Ll5/d0$a;->b:Lh/b;

    invoke-virtual {p0, p1}, Ll5/a0;->w(Lh/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll5/d0;

    if-nez p1, :cond_41

    sget-object p1, Ll5/d0$b;->b:Ll5/d0$b;

    :cond_41
    iput-object p1, p0, Ll5/a0;->f:Ll5/d0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ll5/a0;->i:Z

    new-instance p1, Ll5/z;

    invoke-direct {p1, p0}, Ll5/z;-><init>(Ll5/a0;)V

    invoke-interface {p2, p1}, Lx6/m;->h(Lkotlin/jvm/functions/Function1;)Lx6/g;

    move-result-object p1

    iput-object p1, p0, Ll5/a0;->j:Lx6/g;

    new-instance p1, Ll5/y;

    invoke-direct {p1, p0}, Ll5/y;-><init>(Ll5/a0;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Ll5/a0;->k:Lh4/f;

    return-void

    :cond_5d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Module name must be special: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final D0()Li5/i0;
    .registers 1

    invoke-virtual {p0}, Ll5/a0;->x0()V

    iget-object p0, p0, Ll5/a0;->k:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll5/l;

    return-object p0
.end method

.method public final varargs E0([Ll5/a0;)V
    .registers 5

    const-string v0, "descriptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Li4/k;->O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Li4/a0;->a:Li4/a0;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friends"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ll5/x;

    sget-object v2, Li4/y;->a:Li4/y;

    invoke-direct {v0, p1, v1, v2, v1}, Ll5/x;-><init>(Ljava/util/List;Ljava/util/Set;Ljava/util/List;Ljava/util/Set;)V

    const-string p1, "dependencies"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ll5/a0;->g:Ll5/w;

    return-void
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

    invoke-interface {p1, p0, p2}, Li5/n;->k(Li5/e0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b()Li5/l;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public j(Lh6/c;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/c;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lh6/c;",
            ">;"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll5/a0;->x0()V

    invoke-virtual {p0}, Ll5/a0;->D0()Li5/i0;

    move-result-object p0

    check-cast p0, Ll5/l;

    invoke-virtual {p0, p1, p2}, Ll5/l;->j(Lh6/c;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public k()Lf5/g;
    .registers 1

    iget-object p0, p0, Ll5/a0;->d:Lf5/g;

    return-object p0
.end method

.method public s(Lh6/c;)Li5/l0;
    .registers 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll5/a0;->x0()V

    iget-object p0, p0, Ll5/a0;->j:Lx6/g;

    check-cast p0, Lx6/e$m;

    invoke-virtual {p0, p1}, Lx6/e$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/l0;

    return-object p0
.end method

.method public s0()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/e0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll5/a0;->g:Ll5/w;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ll5/w;->b()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    const-string v0, "Dependencies of module "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ll5/a0;->z0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " were not set"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public t(Li5/e0;)Z
    .registers 4

    const-string v0, "targetModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    return v1

    :cond_d
    iget-object v0, p0, Ll5/a0;->g:Ll5/w;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ll5/w;->c()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    invoke-virtual {p0}, Ll5/a0;->s0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    return v1

    :cond_28
    invoke-interface {p1}, Li5/e0;->s0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    return v1

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Ll5/m;->d0(Li5/l;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "super.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Ll5/a0;->i:Z

    if-eqz p0, :cond_e

    goto :goto_14

    :cond_e
    const-string p0, " !isValid"

    invoke-static {v0, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0
.end method

.method public w(Lh/b;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/b;",
            ")TT;"
        }
    .end annotation

    const-string v0, "capability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ll5/a0;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    :cond_e
    return-object p0
.end method

.method public x0()V
    .registers 4

    iget-boolean v0, p0, Ll5/a0;->i:Z

    if-nez v0, :cond_36

    sget-object v0, Li5/a0;->a:Lh/b;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Li5/a0;->a:Lh/b;

    invoke-virtual {p0, v0}, Ll5/a0;->w(Lh/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/b0;

    if-eqz v0, :cond_1b

    invoke-interface {v0, p0}, Li5/b0;->a(Li5/e0;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_1f

    goto :goto_36

    :cond_1f
    new-instance v0, Li5/z;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessing invalid module descriptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Li5/z;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    :goto_36
    return-void
.end method

.method public final z0()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ll5/m;->getName()Lh6/f;

    move-result-object p0

    iget-object p0, p0, Lh6/f;->a:Ljava/lang/String;

    const-string v0, "name.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
