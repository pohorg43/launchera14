.class public final Li7/e;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li7/e$c;,
        Li7/e$a;,
        Li7/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSmartSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmartSet.kt\norg/jetbrains/kotlin/utils/SmartSet\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n1#2:111\n*E\n"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method public static final a()Li7/e;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Li7/e<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Li7/e$b;->a()Li7/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget v0, p0, Li7/e;->b:I

    const/4 v1, 0x1

    if-nez v0, :cond_8

    iput-object p1, p0, Li7/e;->a:Ljava/lang/Object;

    goto :goto_76

    :cond_8
    const/4 v2, 0x0

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Li7/e;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v2

    :cond_14
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Li7/e;->a:Ljava/lang/Object;

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    iput-object v0, p0, Li7/e;->a:Ljava/lang/Object;

    goto :goto_76

    :cond_20
    const/4 v3, 0x5

    if-ge v0, v3, :cond_64

    iget-object v0, p0, Li7/e;->a:Ljava/lang/Object;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, p1}, Li4/k;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    return v2

    :cond_33
    iget v2, p0, Li7/e;->b:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_53

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "elements"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedHashSet;

    array-length v3, v0

    invoke-static {v3}, Li4/j0;->b(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {v0, v2}, Li4/k;->M([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_53
    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v0, "copyOf(this, newSize)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v2

    sub-int/2addr v0, v1

    aput-object p1, v2, v0

    :goto_61
    iput-object v2, p0, Li7/e;->a:Ljava/lang/Object;

    goto :goto_76

    :cond_64
    iget-object v0, p0, Li7/e;->a:Ljava/lang/Object;

    const-string v3, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_76

    return v2

    :cond_76
    :goto_76
    iget p1, p0, Li7/e;->b:I

    add-int/2addr p1, v1

    iput p1, p0, Li7/e;->b:I

    return v1
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Li7/e;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Li7/e;->b:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Li7/e;->b:I

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_2e

    :cond_6
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object p0, p0, Li7/e;->a:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_2e

    :cond_10
    const/4 v1, 0x5

    if-ge v0, v1, :cond_21

    iget-object p0, p0, Li7/e;->a:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Li4/k;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_2e

    :cond_21
    iget-object p0, p0, Li7/e;->a:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Set<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_2e
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget v0, p0, Li7/e;->b:I

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_3a

    :cond_d
    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    new-instance v0, Li7/e$c;

    iget-object p0, p0, Li7/e;->a:Ljava/lang/Object;

    invoke-direct {v0, p0}, Li7/e$c;-><init>(Ljava/lang/Object;)V

    :goto_17
    move-object p0, v0

    goto :goto_3a

    :cond_19
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2b

    new-instance v0, Li7/e$a;

    iget-object p0, p0, Li7/e;->a:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-direct {v0, p0}, Li7/e$a;-><init>([Ljava/lang/Object;)V

    goto :goto_17

    :cond_2b
    iget-object p0, p0, Li7/e;->a:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3a
    return-object p0
.end method

.method public final size()I
    .registers 1

    iget p0, p0, Li7/e;->b:I

    return p0
.end method
