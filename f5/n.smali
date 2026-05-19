.class public final Lf5/n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUnsignedType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnsignedType.kt\norg/jetbrains/kotlin/builtins/UnsignedTypes\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,122:1\n11335#2:123\n11670#2,3:124\n11335#2:127\n11670#2,3:128\n11670#2,3:131\n*S KotlinDebug\n*F\n+ 1 UnsignedType.kt\norg/jetbrains/kotlin/builtins/UnsignedTypes\n*L\n36#1:123\n36#1:124,3\n37#1:127\n37#1:128,3\n47#1:131,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lf5/n;

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lh6/b;",
            "Lh6/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lh6/b;",
            "Lh6/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lf5/n;

    invoke-direct {v0}, Lf5/n;-><init>()V

    sput-object v0, Lf5/n;->a:Lf5/n;

    invoke-static {}, Lf5/m;->values()[Lf5/m;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_20

    aget-object v5, v0, v4

    iget-object v5, v5, Lf5/m;->b:Lh6/f;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_20
    invoke-static {v1}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lf5/n;->b:Ljava/util/Set;

    invoke-static {}, Lf5/l;->values()[Lf5/l;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    move v4, v3

    :goto_32
    if-ge v4, v2, :cond_3e

    aget-object v5, v0, v4

    iget-object v5, v5, Lf5/l;->a:Lh6/f;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_3e
    invoke-static {v1}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lf5/n;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lf5/n;->d:Ljava/util/HashMap;

    const/4 v0, 0x4

    new-array v0, v0, [Lh4/j;

    sget-object v1, Lf5/l;->b:Lf5/l;

    const-string v2, "ubyteArrayOf"

    invoke-static {v2}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v2

    new-instance v4, Lh4/j;

    invoke-direct {v4, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v3

    sget-object v1, Lf5/l;->c:Lf5/l;

    const-string v2, "ushortArrayOf"

    invoke-static {v2}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v2

    new-instance v4, Lh4/j;

    invoke-direct {v4, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v4, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lf5/l;->d:Lf5/l;

    const-string v4, "uintArrayOf"

    invoke-static {v4}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v4

    new-instance v5, Lh4/j;

    invoke-direct {v5, v2, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lf5/l;->e:Lf5/l;

    const-string v4, "ulongArrayOf"

    invoke-static {v4}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v4

    new-instance v5, Lh4/j;

    invoke-direct {v5, v2, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    invoke-static {v0}, Li4/k0;->g([Lh4/j;)Ljava/util/HashMap;

    invoke-static {}, Lf5/m;->values()[Lf5/m;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v2, v0

    move v4, v3

    :goto_9f
    if-ge v4, v2, :cond_af

    aget-object v5, v0, v4

    iget-object v5, v5, Lf5/m;->c:Lh6/b;

    invoke-virtual {v5}, Lh6/b;->j()Lh6/f;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_9f

    :cond_af
    sput-object v1, Lf5/n;->e:Ljava/util/Set;

    invoke-static {}, Lf5/m;->values()[Lf5/m;

    move-result-object v0

    array-length v1, v0

    :goto_b6
    if-ge v3, v1, :cond_cf

    aget-object v2, v0, v3

    sget-object v4, Lf5/n;->c:Ljava/util/HashMap;

    iget-object v5, v2, Lf5/m;->c:Lh6/b;

    iget-object v6, v2, Lf5/m;->a:Lh6/b;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lf5/n;->d:Ljava/util/HashMap;

    iget-object v5, v2, Lf5/m;->a:Lh6/b;

    iget-object v2, v2, Lf5/m;->c:Lh6/b;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b6

    :cond_cf
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ly6/l0;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ly6/a2;->q(Ly6/l0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    return v1

    :cond_d
    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    if-nez p0, :cond_18

    return v1

    :cond_18
    const-string v0, "descriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/l;->b()Li5/l;

    move-result-object v0

    instance-of v2, v0, Li5/h0;

    if-eqz v2, :cond_40

    check-cast v0, Li5/h0;

    invoke-interface {v0}, Li5/h0;->e()Lh6/c;

    move-result-object v0

    sget-object v2, Lf5/j;->k:Lh6/c;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lf5/n;->b:Ljava/util/Set;

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    const/4 v1, 0x1

    :cond_40
    return v1
.end method
