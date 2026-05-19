.class public abstract Lz7/k0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# instance fields
.field public final a:I

.field public final b:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7/k0;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 p1, 0x1

    iput p1, p0, Lz7/k0;->a:I

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

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lk7/l;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, " is not a valid list index"

    invoke-static {p1, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()I
    .registers 1

    iget p0, p0, Lz7/k0;->a:I

    return p0
.end method

.method public d(I)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 4

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_a

    iget-object p0, p0, Lz7/k0;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0

    :cond_a
    const-string v0, "Illegal index "

    const-string v1, ", "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " expects only non-negative indices"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lz7/k0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lz7/k0;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    check-cast p1, Lz7/k0;

    iget-object v3, p1, Lz7/k0;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    return v0

    :cond_25
    return v2
.end method

.method public f()Lx7/i;
    .registers 1

    sget-object p0, Lx7/j$b;->a:Lx7/j$b;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lz7/k0;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lz7/k0;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
