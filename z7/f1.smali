.class public final Lz7/f1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 3

    const-string v0, "original"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7/f1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz7/f1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public b(Ljava/lang/String;)I
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lz7/f1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public c()I
    .registers 1

    iget-object p0, p0, Lz7/f1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->c()I

    move-result p0

    return p0
.end method

.method public d(I)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lz7/f1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    iget-object p0, p0, Lz7/f1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lz7/f1;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lz7/f1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    check-cast p1, Lz7/f1;

    iget-object p1, p1, Lz7/f1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    if-eqz p0, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public f()Lx7/i;
    .registers 1

    iget-object p0, p0, Lz7/f1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lz7/f1;->a:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lz7/f1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lz7/f1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
