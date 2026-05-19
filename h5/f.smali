.class public final Lh5/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk5/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh5/f$a;
    }
.end annotation


# static fields
.field public static final d:Lh5/f$a;

.field public static final synthetic e:[Lz4/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lh6/c;

.field public static final g:Lh6/f;

.field public static final h:Lh6/b;


# instance fields
.field public final a:Li5/e0;

.field public final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Li5/e0;",
            "Li5/l;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lx6/i;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lz4/n;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lh5/f;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const-string v3, "cloneable"

    const-string v4, "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lh5/f;->e:[Lz4/n;

    new-instance v0, Lh5/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh5/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lh5/f;->d:Lh5/f$a;

    sget-object v0, Lf5/j;->k:Lh6/c;

    sput-object v0, Lh5/f;->f:Lh6/c;

    sget-object v0, Lf5/j$a;->d:Lh6/d;

    invoke-virtual {v0}, Lh6/d;->h()Lh6/f;

    move-result-object v1

    const-string v2, "cloneable.shortName()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lh5/f;->g:Lh6/f;

    invoke-virtual {v0}, Lh6/d;->i()Lh6/c;

    move-result-object v0

    invoke-static {v0}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v0

    const-string v1, "topLevel(StandardNames.FqNames.cloneable.toSafe())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lh5/f;->h:Lh6/b;

    return-void
.end method

.method public constructor <init>(Lx6/m;Li5/e0;Lkotlin/jvm/functions/Function1;I)V
    .registers 5

    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_7

    sget-object p3, Lh5/e;->a:Lh5/e;

    goto :goto_8

    :cond_7
    const/4 p3, 0x0

    :goto_8
    const-string p4, "storageManager"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "moduleDescriptor"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "computeContainingDeclaration"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh5/f;->a:Li5/e0;

    iput-object p3, p0, Lh5/f;->b:Lkotlin/jvm/functions/Function1;

    new-instance p2, Lh5/g;

    invoke-direct {p2, p0, p1}, Lh5/g;-><init>(Lh5/f;Lx6/m;)V

    invoke-interface {p1, p2}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lh5/f;->c:Lx6/i;

    return-void
.end method


# virtual methods
.method public a(Lh6/b;)Li5/e;
    .registers 3

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lh5/f;->h:Lh6/b;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lh5/f;->c:Lx6/i;

    sget-object p1, Lh5/f;->e:[Lz4/n;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll5/k;

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return-object p0
.end method

.method public b(Lh6/c;Lh6/f;)Z
    .registers 3

    const-string p0, "packageFqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lh5/f;->g:Lh6/f;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    sget-object p0, Lh5/f;->f:Lh6/c;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public c(Lh6/c;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/c;",
            ")",
            "Ljava/util/Collection<",
            "Li5/e;",
            ">;"
        }
    .end annotation

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lh5/f;->f:Lh6/c;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p0, p0, Lh5/f;->c:Lx6/i;

    sget-object p1, Lh5/f;->e:[Lz4/n;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll5/k;

    invoke-static {p0}, Ly0/b;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_21

    :cond_1f
    sget-object p0, Li4/a0;->a:Li4/a0;

    :goto_21
    return-object p0
.end method
