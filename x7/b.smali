.class public final Lx7/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public final c:Lz4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz4/d<",
            "*>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lz4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "Lz4/d<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "original"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx7/b;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    iput-object p2, p0, Lx7/b;->c:Lz4/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lz4/d;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx7/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 1

    iget-object p0, p0, Lx7/b;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Z

    move-result p0

    return p0
.end method

.method public b(Ljava/lang/String;)I
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx7/b;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public c()I
    .registers 1

    iget-object p0, p0, Lx7/b;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->c()I

    move-result p0

    return p0
.end method

.method public d(I)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lx7/b;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    iget-object p0, p0, Lx7/b;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lx7/b;

    if-nez v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    check-cast p1, Lx7/b;

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    iget-object v1, p0, Lx7/b;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    iget-object v2, p1, Lx7/b;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object p1, p1, Lx7/b;->c:Lz4/d;

    iget-object p0, p0, Lx7/b;->c:Lz4/d;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0
.end method

.method public f()Lx7/i;
    .registers 1

    iget-object p0, p0, Lx7/b;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lx7/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lx7/b;->c:Lz4/d;

    invoke-interface {v0}, Lz4/d;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lx7/b;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ContextDescriptor(kClass: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lx7/b;->c:Lz4/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", original: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lx7/b;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
