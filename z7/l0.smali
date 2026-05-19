.class public abstract Lz7/l0;
.super Lz7/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Element:",
        "Ljava/lang/Object;",
        "Collection:",
        "Ljava/lang/Object;",
        "Builder:",
        "Ljava/lang/Object;",
        ">",
        "Lz7/a<",
        "TElement;TCollection;TBuilder;>;"
    }
.end annotation


# instance fields
.field public final a:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TElement;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lz7/a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lz7/l0;->a:Lkotlinx/serialization/KSerializer;

    return-void
.end method


# virtual methods
.method public final g(Ly7/b;Ljava/lang/Object;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly7/b;",
            "TBuilder;II)V"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p4, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    if-eqz v1, :cond_19

    move v1, v0

    :goto_e
    if-ge v1, p4, :cond_18

    add-int v2, p3, v1

    invoke-virtual {p0, p1, v2, p2, v0}, Lz7/l0;->h(Ly7/b;ILjava/lang/Object;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    return-void

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size must be known in advance when using READ_ALL"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
.end method

.method public h(Ly7/b;ILjava/lang/Object;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly7/b;",
            "ITBuilder;Z)V"
        }
    .end annotation

    const-string p4, "decoder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lz7/l0;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    iget-object v3, p0, Lz7/l0;->a:Lkotlinx/serialization/KSerializer;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Ly7/b$a;->a(Ly7/b;Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p2, p1}, Lz7/l0;->k(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public abstract k(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBuilder;ITElement;)V"
        }
    .end annotation
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "TCollection;)V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lz7/a;->e(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lz7/l0;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lkotlinx/serialization/encoding/Encoder;->f(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ly7/c;

    move-result-object p1

    invoke-virtual {p0, p2}, Lz7/a;->d(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_28

    invoke-virtual {p0}, Lz7/l0;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    iget-object v3, p0, Lz7/l0;->a:Lkotlinx/serialization/KSerializer;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v2, v1, v3, v4}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_28
    invoke-virtual {p0}, Lz7/l0;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p1, p0}, Ly7/c;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method
