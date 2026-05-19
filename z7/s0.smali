.class public final Lz7/s0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public final b:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7/s0;->b:Lkotlinx/serialization/KSerializer;

    new-instance v0, Lz7/f1;

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lz7/f1;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iput-object v0, p0, Lz7/s0;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Decoder;",
            ")TT;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->D()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lz7/s0;->b:Lkotlinx/serialization/KSerializer;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->x(Lw7/a;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_16

    :cond_12
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->j()Ljava/lang/Void;

    move-result-object p0

    :goto_16
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    const-class v2, Lz7/s0;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_1d

    goto :goto_2c

    :cond_1d
    check-cast p1, Lz7/s0;

    iget-object p0, p0, Lz7/s0;->b:Lkotlinx/serialization/KSerializer;

    iget-object p1, p1, Lz7/s0;->b:Lkotlinx/serialization/KSerializer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    if-eqz p0, :cond_2b

    return v1

    :cond_2b
    return v0

    :cond_2c
    :goto_2c
    return v1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    iget-object p0, p0, Lz7/s0;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lz7/s0;->b:Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_10

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Encoder;->s()V

    iget-object p0, p0, Lz7/s0;->b:Lkotlinx/serialization/KSerializer;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->v(Lw7/h;Ljava/lang/Object;)V

    goto :goto_13

    :cond_10
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Encoder;->k()V

    :goto_13
    return-void
.end method
