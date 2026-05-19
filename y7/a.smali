.class public abstract Ly7/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/serialization/encoding/Encoder;
.implements Ly7/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V
    .registers 6

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ly7/a;->D(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    invoke-virtual {p0, p3, p4}, Ly7/a;->d(D)V

    return-void
.end method

.method public final B(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V
    .registers 6

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ly7/a;->D(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    invoke-virtual {p0, p3, p4}, Ly7/a;->i(J)V

    return-void
.end method

.method public abstract C(Ljava/lang/String;)V
.end method

.method public abstract D(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
.end method

.method public abstract d(D)V
.end method

.method public abstract e(B)V
.end method

.method public final h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lw7/h<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ly7/a;->D(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    invoke-virtual {p0, p3, p4}, Ly7/a;->v(Lw7/h;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract i(J)V
.end method

.method public final j(Lkotlinx/serialization/descriptors/SerialDescriptor;IC)V
    .registers 5

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ly7/a;->D(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    check-cast p0, Lb8/o;

    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb8/o;->C(Ljava/lang/String;)V

    return-void
.end method

.method public final l(Lkotlinx/serialization/descriptors/SerialDescriptor;IB)V
    .registers 5

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ly7/a;->D(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    invoke-virtual {p0, p3}, Ly7/a;->e(B)V

    return-void
.end method

.method public abstract m(S)V
.end method

.method public abstract n(Z)V
.end method

.method public final o(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V
    .registers 5

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ly7/a;->D(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    invoke-virtual {p0, p3}, Ly7/a;->p(F)V

    return-void
.end method

.method public abstract p(F)V
.end method

.method public final r(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V
    .registers 5

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ly7/a;->D(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    check-cast p0, Lb8/o;

    iget-boolean p1, p0, Lb8/o;->c:Z

    if-eqz p1, :cond_16

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb8/o;->C(Ljava/lang/String;)V

    goto :goto_1d

    :cond_16
    iget-object p0, p0, Lb8/o;->e:Lb8/o$a;

    iget-object p0, p0, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1d
    return-void
.end method

.method public final t(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V
    .registers 5

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ly7/a;->D(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    invoke-virtual {p0, p3}, Ly7/a;->n(Z)V

    return-void
.end method

.method public final u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V
    .registers 5

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ly7/a;->D(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    invoke-virtual {p0, p3}, Ly7/a;->C(Ljava/lang/String;)V

    return-void
.end method

.method public abstract v(Lw7/h;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw7/h<",
            "-TT;>;TT;)V"
        }
    .end annotation
.end method

.method public final x(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lw7/h<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ly7/a;->D(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    check-cast p0, Lb8/o;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lw7/h;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Z

    move-result p1

    if-eqz p1, :cond_26

    invoke-virtual {p0, p3, p4}, Lb8/o;->v(Lw7/h;Ljava/lang/Object;)V

    goto :goto_2f

    :cond_26
    if-nez p4, :cond_2c

    invoke-virtual {p0}, Lb8/o;->k()V

    goto :goto_2f

    :cond_2c
    invoke-virtual {p0, p3, p4}, Lb8/o;->v(Lw7/h;Ljava/lang/Object;)V

    :goto_2f
    return-void
.end method

.method public final z(Lkotlinx/serialization/descriptors/SerialDescriptor;IS)V
    .registers 5

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ly7/a;->D(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    invoke-virtual {p0, p3}, Ly7/a;->m(S)V

    return-void
.end method
