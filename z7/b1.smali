.class public abstract Lz7/b1;
.super Lz7/l0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Element:",
        "Ljava/lang/Object;",
        "Array:",
        "Ljava/lang/Object;",
        "Builder:",
        "Lz7/z0<",
        "TArray;>;>",
        "Lz7/l0<",
        "TElement;TArray;TBuilder;>;"
    }
.end annotation


# instance fields
.field public final b:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "TElement;>;)V"
        }
    .end annotation

    const-string v0, "primitiveSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz7/l0;-><init>(Lkotlinx/serialization/KSerializer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lz7/a1;

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lz7/a1;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iput-object v0, p0, Lz7/b1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lz7/b1;->l()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz7/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz7/z0;

    return-object p0
.end method

.method public b(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lz7/z0;

    const-string p0, "$this$builderSize"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lz7/z0;->d()I

    move-result p0

    return p0
.end method

.method public c(Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, Lz7/z0;

    const-string p0, "$this$checkCapacity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lz7/z0;->b(I)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TArray;)",
            "Ljava/util/Iterator<",
            "TElement;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This method lead to boxing and must not be used, use writeContents instead"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Decoder;",
            ")TArray;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz7/a;->f(Lkotlinx/serialization/encoding/Decoder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    iget-object p0, p0, Lz7/b1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lz7/z0;

    const-string p0, "$this$toResult"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lz7/z0;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public k(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    check-cast p1, Lz7/z0;

    const-string p0, "$this$insert"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This method lead to boxing and must not be used, use Builder.append instead"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract l()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TArray;"
        }
    .end annotation
.end method

.method public abstract m(Ly7/c;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly7/c;",
            "TArray;I)V"
        }
    .end annotation
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "TArray;)V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lz7/a;->e(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lz7/b1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v1, v0}, Lkotlinx/serialization/encoding/Encoder;->f(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ly7/c;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0}, Lz7/b1;->m(Ly7/c;Ljava/lang/Object;I)V

    iget-object p0, p0, Lz7/b1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Ly7/c;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method
