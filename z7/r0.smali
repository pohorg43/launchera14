.class public abstract Lz7/r0;
.super Lz7/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        "Collection:",
        "Ljava/lang/Object;",
        "Builder::",
        "Ljava/util/Map<",
        "TKey;TValue;>;>",
        "Lz7/a<",
        "Ljava/util/Map$Entry<",
        "+TKey;+TValue;>;TCollection;TBuilder;>;"
    }
.end annotation


# instance fields
.field public final a:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TKey;>;"
        }
    .end annotation
.end field

.field public final b:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    const/4 p3, 0x0

    invoke-direct {p0, p3}, Lz7/a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lz7/r0;->a:Lkotlinx/serialization/KSerializer;

    iput-object p2, p0, Lz7/r0;->b:Lkotlinx/serialization/KSerializer;

    return-void
.end method


# virtual methods
.method public g(Ly7/b;Ljava/lang/Object;II)V
    .registers 9

    check-cast p2, Ljava/util/Map;

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p4, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    move v1, v0

    :goto_12
    if-eqz v1, :cond_35

    const/4 v1, 0x2

    mul-int/2addr p4, v1

    invoke-static {v0, p4}, Ly4/h;->e(II)Ly4/d;

    move-result-object p4

    invoke-static {p4, v1}, Ly4/h;->d(Ly4/b;I)Ly4/b;

    move-result-object p4

    iget v1, p4, Ly4/b;->a:I

    iget v2, p4, Ly4/b;->b:I

    iget p4, p4, Ly4/b;->c:I

    if-ltz p4, :cond_29

    if-gt v1, v2, :cond_34

    goto :goto_2b

    :cond_29
    if-lt v1, v2, :cond_34

    :goto_2b
    add-int v3, p3, v1

    invoke-virtual {p0, p1, v3, p2, v0}, Lz7/r0;->k(Ly7/b;ILjava/util/Map;Z)V

    if-eq v1, v2, :cond_34

    add-int/2addr v1, p4

    goto :goto_2b

    :cond_34
    return-void

    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size must be known in advance when using READ_ALL"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
.end method

.method public bridge synthetic h(Ly7/b;ILjava/lang/Object;Z)V
    .registers 5

    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3, p4}, Lz7/r0;->k(Ly7/b;ILjava/util/Map;Z)V

    return-void
.end method

.method public final k(Ly7/b;ILjava/util/Map;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly7/b;",
            "ITBuilder;Z)V"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lz7/r0;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    iget-object v4, p0, Lz7/r0;->a:Lkotlinx/serialization/KSerializer;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Ly7/b$a;->a(Ly7/b;Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p4, :cond_40

    invoke-virtual {p0}, Lz7/r0;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-interface {p1, p4}, Ly7/b;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result p4

    add-int/lit8 v2, p2, 0x1

    if-ne p4, v2, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    if-eqz v1, :cond_2e

    goto :goto_42

    :cond_2e
    const-string p0, "Value must follow key in a map, index for key: "

    const-string p1, ", returned index for value: "

    invoke-static {p0, p2, p1, p4}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    add-int/lit8 p4, p2, 0x1

    :goto_42
    move v3, p4

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_66

    iget-object p2, p0, Lz7/r0;->b:Lkotlinx/serialization/KSerializer;

    invoke-interface {p2}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object p2

    instance-of p2, p2, Lx7/d;

    if-nez p2, :cond_66

    invoke-virtual {p0}, Lz7/r0;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    iget-object p0, p0, Lz7/r0;->b:Lkotlinx/serialization/KSerializer;

    invoke-static {p3, v0}, Li4/k0;->f(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p1, p2, v3, p0, p4}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_75

    :cond_66
    invoke-virtual {p0}, Lz7/r0;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    iget-object v4, p0, Lz7/r0;->b:Lkotlinx/serialization/KSerializer;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Ly7/b$a;->a(Ly7/b;Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_75
    invoke-interface {p3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 9
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

    invoke-virtual {p0}, Lz7/r0;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lkotlinx/serialization/encoding/Encoder;->f(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ly7/c;

    move-result-object p1

    invoke-virtual {p0, p2}, Lz7/a;->d(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lz7/r0;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lz7/r0;->a:Lkotlinx/serialization/KSerializer;

    invoke-interface {p1, v3, v0, v5, v2}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lz7/r0;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    add-int/lit8 v2, v4, 0x1

    iget-object v3, p0, Lz7/r0;->b:Lkotlinx/serialization/KSerializer;

    invoke-interface {p1, v0, v4, v3, v1}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    move v0, v2

    goto :goto_16

    :cond_42
    invoke-virtual {p0}, Lz7/r0;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p1, p0}, Ly7/c;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method
