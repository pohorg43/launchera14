.class public final Lc5/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz4/m;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKParameterImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KParameterImpl.kt\nkotlin/reflect/jvm/internal/KParameterImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic f:[Lz4/n;
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
.field public final a:Lc5/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/i<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Lz4/m$a;

.field public final d:Lc5/p0$a;

.field public final e:Lc5/p0$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-class v0, Lc5/c0;

    const/4 v1, 0x2

    new-array v1, v1, [Lz4/n;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "descriptor"

    const-string v5, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    const-string v3, "annotations"

    const-string v4, "getAnnotations()Ljava/util/List;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lc5/c0;->f:[Lz4/n;

    return-void
.end method

.method public constructor <init>(Lc5/i;ILz4/m$a;Lkotlin/jvm/functions/Function0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/i<",
            "*>;I",
            "Lz4/m$a;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Li5/m0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computeDescriptor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/c0;->a:Lc5/i;

    iput p2, p0, Lc5/c0;->b:I

    iput-object p3, p0, Lc5/c0;->c:Lz4/m$a;

    invoke-static {p4}, Lc5/p0;->d(Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object p1

    iput-object p1, p0, Lc5/c0;->d:Lc5/p0$a;

    new-instance p1, Lc5/c0$a;

    invoke-direct {p1, p0}, Lc5/c0$a;-><init>(Lc5/c0;)V

    invoke-static {p1}, Lc5/p0;->d(Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object p1

    iput-object p1, p0, Lc5/c0;->e:Lc5/p0$a;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    invoke-virtual {p0}, Lc5/c0;->b()Li5/m0;

    move-result-object p0

    instance-of v0, p0, Li5/e1;

    if-eqz v0, :cond_12

    check-cast p0, Li5/e1;

    invoke-interface {p0}, Li5/e1;->n0()Ly6/l0;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final b()Li5/m0;
    .registers 3

    iget-object p0, p0, Lc5/c0;->d:Lc5/p0$a;

    sget-object v0, Lc5/c0;->f:[Lz4/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-descriptor>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Li5/m0;

    return-object p0
.end method

.method public c()Z
    .registers 2

    invoke-virtual {p0}, Lc5/c0;->b()Li5/m0;

    move-result-object p0

    instance-of v0, p0, Li5/e1;

    if-eqz v0, :cond_b

    check-cast p0, Li5/e1;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-eqz p0, :cond_13

    invoke-static {p0}, Lo6/c;->a(Li5/e1;)Z

    move-result p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lc5/c0;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lc5/c0;->a:Lc5/i;

    check-cast p1, Lc5/c0;

    iget-object v1, p1, Lc5/c0;->a:Lc5/i;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget p0, p0, Lc5/c0;->b:I

    iget p1, p1, Lc5/c0;->b:I

    if-ne p0, p1, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public f()Lz4/m$a;
    .registers 1

    iget-object p0, p0, Lc5/c0;->c:Lz4/m$a;

    return-object p0
.end method

.method public getAnnotations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lc5/c0;->e:Lc5/p0$a;

    sget-object v0, Lc5/c0;->f:[Lz4/n;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-annotations>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getIndex()I
    .registers 1

    iget p0, p0, Lc5/c0;->b:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lc5/c0;->b()Li5/m0;

    move-result-object p0

    instance-of v0, p0, Li5/e1;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    check-cast p0, Li5/e1;

    goto :goto_d

    :cond_c
    move-object p0, v1

    :goto_d
    if-nez p0, :cond_10

    return-object v1

    :cond_10
    invoke-interface {p0}, Li5/e1;->b()Li5/a;

    move-result-object v0

    invoke-interface {v0}, Li5/a;->c0()Z

    move-result v0

    if-eqz v0, :cond_1b

    return-object v1

    :cond_1b
    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    const-string v0, "valueParameter.name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lh6/f;->b:Z

    if-eqz v0, :cond_29

    goto :goto_2d

    :cond_29
    invoke-virtual {p0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v1

    :goto_2d
    return-object v1
.end method

.method public getType()Lz4/r;
    .registers 4

    new-instance v0, Lc5/k0;

    invoke-virtual {p0}, Lc5/c0;->b()Li5/m0;

    move-result-object v1

    invoke-interface {v1}, Li5/d1;->getType()Ly6/l0;

    move-result-object v1

    const-string v2, "descriptor.type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lc5/c0$b;

    invoke-direct {v2, p0}, Lc5/c0$b;-><init>(Lc5/c0;)V

    invoke-direct {v0, v1, v2}, Lc5/k0;-><init>(Ly6/l0;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lc5/c0;->a:Lc5/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lc5/c0;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    sget-object v0, Lc5/r0;->a:Lc5/r0;

    const-string v0, "parameter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc5/c0;->c:Lz4/m$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_40

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1b

    goto :goto_45

    :cond_1b
    const-string v1, "parameter #"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc5/c0;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc5/c0;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    :cond_3a
    const-string v1, "extension receiver parameter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    :cond_40
    const-string v1, "instance parameter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_45
    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lc5/c0;->a:Lc5/i;

    invoke-virtual {p0}, Lc5/i;->i()Li5/b;

    move-result-object p0

    instance-of v1, p0, Li5/o0;

    if-eqz v1, :cond_5b

    check-cast p0, Li5/o0;

    invoke-static {p0}, Lc5/r0;->d(Li5/o0;)Ljava/lang/String;

    move-result-object p0

    goto :goto_65

    :cond_5b
    instance-of v1, p0, Li5/x;

    if-eqz v1, :cond_72

    check-cast p0, Li5/x;

    invoke-static {p0}, Lc5/r0;->c(Li5/x;)Ljava/lang/String;

    move-result-object p0

    :goto_65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_72
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal callable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
