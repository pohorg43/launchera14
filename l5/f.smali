.class public abstract Ll5/f;
.super Ll5/n;
.source ""

# interfaces
.implements Li5/z0;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAbstractTypeAliasDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractTypeAliasDescriptor.kt\norg/jetbrains/kotlin/descriptors/impl/AbstractTypeAliasDescriptor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,127:1\n1603#2,9:128\n1855#2:137\n1856#2:139\n1612#2:140\n1#3:138\n*S KotlinDebug\n*F\n+ 1 AbstractTypeAliasDescriptor.kt\norg/jetbrains/kotlin/descriptors/impl/AbstractTypeAliasDescriptor\n*L\n67#1:128,9\n67#1:137\n67#1:139\n67#1:140\n67#1:138\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Li5/t;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Li5/a1;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ll5/f$b;


# direct methods
.method public constructor <init>(Li5/l;Lj5/h;Lh6/f;Li5/v0;Li5/t;)V
    .registers 7

    const-string v0, "containingDeclaration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceElement"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityImpl"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Ll5/n;-><init>(Li5/l;Lj5/h;Lh6/f;Li5/v0;)V

    iput-object p5, p0, Ll5/f;->e:Li5/t;

    new-instance p1, Ll5/f$b;

    invoke-direct {p1, p0}, Ll5/f$b;-><init>(Ll5/f;)V

    iput-object p1, p0, Ll5/f;->g:Ll5/f$b;

    return-void
.end method


# virtual methods
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

    invoke-interface {p1, p0, p2}, Li5/n;->g(Li5/z0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public V()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public a()Li5/h;
    .registers 2

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeAliasDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public a()Li5/l;
    .registers 2

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeAliasDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public f0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getVisibility()Li5/t;
    .registers 1

    iget-object p0, p0, Ll5/f;->e:Li5/t;

    return-object p0
.end method

.method public h()Ly6/j1;
    .registers 1

    iget-object p0, p0, Ll5/f;->g:Ll5/f$b;

    return-object p0
.end method

.method public isExternal()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isInner()Z
    .registers 3

    move-object v0, p0

    check-cast v0, Lw6/o;

    invoke-virtual {v0}, Lw6/o;->m0()Ly6/s0;

    move-result-object v0

    new-instance v1, Ll5/f$a;

    invoke-direct {v1, p0}, Ll5/f$a;-><init>(Ll5/f;)V

    invoke-static {v0, v1}, Ly6/a2;->c(Ly6/l0;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public n()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ll5/f;->f:Ljava/util/List;

    if-nez p0, :cond_a

    const-string p0, "declaredTypeParametersImpl"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_a
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "typealias "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ll5/m;->getName()Lh6/f;

    move-result-object p0

    invoke-virtual {p0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x0()Li5/o;
    .registers 2

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeAliasDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
