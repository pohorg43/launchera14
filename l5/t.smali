.class public Ll5/t;
.super Ll5/m;
.source ""

# interfaces
.implements Li5/l0;


# static fields
.field public static final synthetic h:[Lz4/n;
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
.field public final c:Ll5/a0;

.field public final d:Lh6/c;

.field public final e:Lx6/i;

.field public final f:Lx6/i;

.field public final g:Lr6/i;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-class v0, Ll5/t;

    const/4 v1, 0x2

    new-array v1, v1, [Lz4/n;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "fragments"

    const-string v5, "getFragments()Ljava/util/List;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    const-string v3, "empty"

    const-string v4, "getEmpty()Z"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Ll5/t;->h:[Lz4/n;

    return-void
.end method

.method public constructor <init>(Ll5/a0;Lh6/c;Lx6/m;)V
    .registers 6

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lj5/h;->I:I

    sget-object v0, Lj5/h$a;->b:Lj5/h;

    invoke-virtual {p2}, Lh6/c;->h()Lh6/f;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ll5/m;-><init>(Lj5/h;Lh6/f;)V

    iput-object p1, p0, Ll5/t;->c:Ll5/a0;

    iput-object p2, p0, Ll5/t;->d:Lh6/c;

    new-instance p1, Ll5/t$b;

    invoke-direct {p1, p0}, Ll5/t$b;-><init>(Ll5/t;)V

    invoke-interface {p3, p1}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Ll5/t;->e:Lx6/i;

    new-instance p1, Ll5/t$a;

    invoke-direct {p1, p0}, Ll5/t$a;-><init>(Ll5/t;)V

    invoke-interface {p3, p1}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Ll5/t;->f:Lx6/i;

    new-instance p1, Lr6/h;

    new-instance p2, Ll5/t$c;

    invoke-direct {p2, p0}, Ll5/t$c;-><init>(Ll5/t;)V

    invoke-direct {p1, p3, p2}, Lr6/h;-><init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Ll5/t;->g:Lr6/i;

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

    invoke-interface {p1, p0, p2}, Li5/n;->l(Li5/l0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b()Li5/l;
    .registers 3

    iget-object v0, p0, Ll5/t;->d:Lh6/c;

    invoke-virtual {v0}, Lh6/c;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    goto :goto_1b

    :cond_a
    iget-object v0, p0, Ll5/t;->c:Ll5/a0;

    iget-object p0, p0, Ll5/t;->d:Lh6/c;

    invoke-virtual {p0}, Lh6/c;->e()Lh6/c;

    move-result-object p0

    const-string v1, "fqName.parent()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ll5/a0;->s(Lh6/c;)Li5/l0;

    move-result-object p0

    :goto_1b
    return-object p0
.end method

.method public e()Lh6/c;
    .registers 1

    iget-object p0, p0, Ll5/t;->d:Lh6/c;

    return-object p0
.end method

.method public e0()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/h0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ll5/t;->e:Lx6/i;

    sget-object v0, Ll5/t;->h:[Lz4/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Li5/l0;

    if-eqz v0, :cond_7

    check-cast p1, Li5/l0;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const/4 v0, 0x0

    if-nez p1, :cond_c

    return v0

    :cond_c
    iget-object v1, p0, Ll5/t;->d:Lh6/c;

    invoke-interface {p1}, Li5/l0;->e()Lh6/c;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object p0, p0, Ll5/t;->c:Ll5/a0;

    invoke-interface {p1}, Li5/l0;->u0()Li5/e0;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    :cond_25
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Ll5/t;->c:Ll5/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Ll5/t;->d:Lh6/c;

    invoke-virtual {p0}, Lh6/c;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public isEmpty()Z
    .registers 3

    iget-object p0, p0, Ll5/t;->f:Lx6/i;

    sget-object v0, Ll5/t;->h:[Lz4/n;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public l()Lr6/i;
    .registers 1

    iget-object p0, p0, Ll5/t;->g:Lr6/i;

    return-object p0
.end method

.method public u0()Li5/e0;
    .registers 1

    iget-object p0, p0, Ll5/t;->c:Ll5/a0;

    return-object p0
.end method
