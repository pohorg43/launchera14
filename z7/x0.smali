.class public Lz7/x0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# instance fields
.field public a:I

.field public final b:[Ljava/lang/String;

.field public final c:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public final d:[Z

.field public final e:Lh4/f;

.field public final f:Lh4/f;

.field public final g:Lh4/f;

.field public final h:Lh4/f;

.field public final i:Ljava/lang/String;

.field public final j:Lz7/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz7/w<",
            "*>;"
        }
    .end annotation
.end field

.field public final k:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lz7/w;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lz7/w<",
            "*>;I)V"
        }
    .end annotation

    const-string v0, "serialName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7/x0;->i:Ljava/lang/String;

    iput-object p2, p0, Lz7/x0;->j:Lz7/w;

    iput p3, p0, Lz7/x0;->k:I

    const/4 p1, -0x1

    iput p1, p0, Lz7/x0;->a:I

    new-array p1, p3, [Ljava/lang/String;

    const/4 p2, 0x0

    :goto_14
    if-ge p2, p3, :cond_1d

    const-string v0, "[UNINITIALIZED]"

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :cond_1d
    iput-object p1, p0, Lz7/x0;->b:[Ljava/lang/String;

    iget p1, p0, Lz7/x0;->k:I

    new-array p2, p1, [Ljava/util/List;

    iput-object p2, p0, Lz7/x0;->c:[Ljava/util/List;

    new-array p1, p1, [Z

    iput-object p1, p0, Lz7/x0;->d:[Z

    new-instance p1, Lz7/x0$c;

    invoke-direct {p1, p0}, Lz7/x0$c;-><init>(Lz7/x0;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lz7/x0;->e:Lh4/f;

    new-instance p1, Lz7/x0$b;

    invoke-direct {p1, p0}, Lz7/x0$b;-><init>(Lz7/x0;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lz7/x0;->f:Lh4/f;

    new-instance p1, Lz7/x0$e;

    invoke-direct {p1, p0}, Lz7/x0$e;-><init>(Lz7/x0;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lz7/x0;->g:Lh4/f;

    new-instance p1, Lz7/x0$a;

    invoke-direct {p1, p0}, Lz7/x0$a;-><init>(Lz7/x0;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lz7/x0;->h:Lh4/f;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public b(Ljava/lang/String;)I
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lz7/x0;->i()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_17

    :cond_16
    const/4 p0, -0x3

    :goto_17
    return p0
.end method

.method public final c()I
    .registers 1

    iget p0, p0, Lz7/x0;->k:I

    return p0
.end method

.method public d(I)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lz7/x0;->b:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    iget-object p0, p0, Lz7/x0;->f:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlinx/serialization/KSerializer;

    aget-object p0, p0, p1

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_6

    goto/16 :goto_6f

    :cond_6
    instance-of v2, p1, Lz7/x0;

    if-nez v2, :cond_c

    :goto_a
    move v0, v1

    goto :goto_6f

    :cond_c
    iget-object v2, p0, Lz7/x0;->i:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_1d

    goto :goto_a

    :cond_1d
    check-cast p1, Lz7/x0;

    invoke-virtual {p0}, Lz7/x0;->j()[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Lz7/x0;->j()[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_a

    :cond_2e
    iget p1, p0, Lz7/x0;->k:I

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->c()I

    move-result v2

    if-eq p1, v2, :cond_37

    goto :goto_a

    :cond_37
    iget p1, p0, Lz7/x0;->k:I

    move v2, v1

    :goto_3a
    if-ge v2, p1, :cond_6f

    invoke-virtual {p0, v2}, Lz7/x0;->e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v0

    if-eqz v4, :cond_54

    goto :goto_a

    :cond_54
    invoke-virtual {p0, v2}, Lz7/x0;->e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object v4

    invoke-interface {v3, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v0

    if-eqz v4, :cond_6c

    goto :goto_a

    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_6f
    :goto_6f
    return v0
.end method

.method public f()Lx7/i;
    .registers 1

    sget-object p0, Lx7/j$a;->a:Lx7/j$a;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lz7/x0;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Ljava/lang/String;Z)V
    .registers 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lz7/x0;->b:[Ljava/lang/String;

    iget v1, p0, Lz7/x0;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lz7/x0;->a:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lz7/x0;->d:[Z

    aput-boolean p2, p1, v1

    iget-object p0, p0, Lz7/x0;->c:[Ljava/util/List;

    const/4 p1, 0x0

    aput-object p1, p0, v1

    return-void
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lz7/x0;->h:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final i()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lz7/x0;->e:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final j()[Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    iget-object p0, p0, Lz7/x0;->g:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    invoke-virtual {p0}, Lz7/x0;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lz7/x0;->i:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-static {v0, v2, v3}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lz7/x0$d;

    invoke-direct {v7, p0}, Lz7/x0$d;-><init>(Lz7/x0;)V

    const/16 v8, 0x18

    const-string v2, ", "

    const-string v4, ")"

    invoke-static/range {v1 .. v8}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
