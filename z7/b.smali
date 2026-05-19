.class public abstract Lz7/b;
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


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ly7/b;Ljava/lang/String;)Lw7/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly7/b;",
            "Ljava/lang/String;",
            ")",
            "Lw7/a<",
            "+TT;>;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ly7/b;->c()Lc8/b;

    move-result-object p1

    invoke-virtual {p0}, Lz7/b;->c()Lz4/d;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lc8/b;->c(Lz4/d;Ljava/lang/String;)Lw7/a;

    move-result-object p0

    return-object p0
.end method

.method public b(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)Lw7/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "TT;)",
            "Lw7/h<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Encoder;->c()Lc8/b;

    move-result-object p1

    invoke-virtual {p0}, Lz7/b;->c()Lz4/d;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lc8/b;->d(Lz4/d;Ljava/lang/Object;)Lw7/h;

    move-result-object p0

    return-object p0
.end method

.method public abstract c()Lz4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz4/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Decoder;",
            ")TT;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/b;

    move-result-object p1

    :try_start_d
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p1}, Ly7/b;->q()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Ly7/b;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, La4/c;->a(Lz7/b;Ly7/b;Ljava/lang/String;)Lw7/a;

    move-result-object v4

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Ly7/b$a;->a(Ly7/b;Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_ca

    invoke-interface {p1, v0}, Ly7/b;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-object p0

    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-interface {p1, v2}, Ly7/b;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_a5

    if-eqz v3, :cond_9a

    const/4 v1, 0x1

    if-eq v3, v1, :cond_72

    new-instance p0, Lw7/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index in polymorphic deserialization of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5d

    goto :goto_5f

    :cond_5d
    const-string v2, "unknown class"

    :goto_5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n Expected 0, 1 or DECODE_DONE(-1), but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lw7/g;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_72
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_8e

    iput-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, p1, v1}, La4/c;->a(Lz7/b;Ly7/b;Ljava/lang/String;)Lw7/a;

    move-result-object v4

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Ly7/b$a;->a(Ly7/b;Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3a

    :cond_8e
    const-string p0, "Cannot read polymorphic value before its type token"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9a
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-interface {p1, v2, v3}, Ly7/b;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_a4
    .catchall {:try_start_3a .. :try_end_a4} :catchall_ca

    goto :goto_3a

    :cond_a5
    if-eqz v1, :cond_ab

    invoke-interface {p1, v0}, Ly7/b;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-object v1

    :cond_ab
    :try_start_ab
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Polymorphic value has not been read for class "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_ca
    .catchall {:try_start_ab .. :try_end_ca} :catchall_ca

    :catchall_ca
    move-exception p0

    invoke-interface {p1, v0}, Ly7/b;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, La4/c;->b(Lz7/b;Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)Lw7/h;

    move-result-object v0

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/c;

    move-result-object p1

    :try_start_16
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0}, Lw7/h;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Ly7/c;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    const/4 v2, 0x1

    invoke-interface {p1, p0, v2, v0, p2}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_32

    invoke-interface {p1, v1}, Ly7/c;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void

    :catchall_32
    move-exception p0

    invoke-interface {p1, v1}, Ly7/c;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw p0
.end method
