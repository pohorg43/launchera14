.class public final Lz7/w0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    sput-object v0, Lz7/w0;->a:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method public static final a(Ljava/util/List;)[Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            ">;)[",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_c

    :cond_a
    move v1, v0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v1, 0x1

    :goto_d
    if-nez v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    if-eqz p0, :cond_21

    new-array v0, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    goto :goto_23

    :cond_21
    sget-object p0, Lz7/w0;->a:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    :goto_23
    return-object p0
.end method

.method public static final b(Lz4/r;)Lz4/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/r;",
            ")",
            "Lz4/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$kclass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lz4/r;->getClassifier()Lz4/f;

    move-result-object p0

    instance-of v0, p0, Lz4/d;

    if-eqz v0, :cond_10

    check-cast p0, Lz4/d;

    return-object p0

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only KClass supported as classifier, got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
