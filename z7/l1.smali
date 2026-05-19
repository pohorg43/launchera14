.class public abstract Lz7/l1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/serialization/encoding/Decoder;
.implements Ly7/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Tag:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/encoding/Decoder;",
        "Ly7/b;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TTag;>;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz7/l1;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final A(Lkotlinx/serialization/descriptors/SerialDescriptor;I)C
    .registers 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lb8/a;

    invoke-virtual {v0, p1, p2}, Lb8/a;->V(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz7/l1;->K(Ljava/lang/Object;)C

    move-result p0

    return p0
.end method

.method public final B(Lkotlinx/serialization/descriptors/SerialDescriptor;I)B
    .registers 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lb8/a;

    invoke-virtual {v0, p1, p2}, Lb8/a;->V(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz7/l1;->J(Ljava/lang/Object;)B

    move-result p0

    return p0
.end method

.method public final C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .registers 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lb8/a;

    invoke-virtual {v0, p1, p2}, Lb8/a;->V(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz7/l1;->I(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final E(Lkotlinx/serialization/descriptors/SerialDescriptor;I)S
    .registers 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lb8/a;

    invoke-virtual {v0, p1, p2}, Lb8/a;->V(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz7/l1;->P(Ljava/lang/Object;)S

    move-result p0

    return p0
.end method

.method public final G(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D
    .registers 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lb8/a;

    invoke-virtual {v0, p1, p2}, Lb8/a;->V(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz7/l1;->L(Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public final H()B
    .registers 2

    invoke-virtual {p0}, Lz7/l1;->R()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz7/l1;->J(Ljava/lang/Object;)B

    move-result p0

    return p0
.end method

.method public abstract I(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)Z"
        }
    .end annotation
.end method

.method public abstract J(Ljava/lang/Object;)B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)B"
        }
    .end annotation
.end method

.method public abstract K(Ljava/lang/Object;)C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)C"
        }
    .end annotation
.end method

.method public abstract L(Ljava/lang/Object;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)D"
        }
    .end annotation
.end method

.method public abstract M(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)F"
        }
    .end annotation
.end method

.method public abstract N(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)I"
        }
    .end annotation
.end method

.method public abstract O(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)J"
        }
    .end annotation
.end method

.method public abstract P(Ljava/lang/Object;)S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)S"
        }
    .end annotation
.end method

.method public abstract Q(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public final R()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTag;"
        }
    .end annotation

    iget-object v0, p0, Lz7/l1;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Li4/o;->e(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lz7/l1;->b:Z

    return-object v0
.end method

.method public final d(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .registers 5

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lz7/l1;->R()Ljava/lang/Object;

    move-result-object v1

    check-cast p0, Lb8/a;

    check-cast v1, Ljava/lang/String;

    const-string v2, "tag"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lb8/a;->X(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lo4/b;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lw7/a<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lb8/a;

    invoke-virtual {v0, p1, p2}, Lb8/a;->V(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lz7/l1$b;

    invoke-direct {p2, p0, p3, p4}, Lz7/l1$b;-><init>(Lz7/l1;Lw7/a;Ljava/lang/Object;)V

    iget-object p3, p0, Lz7/l1;->a:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lz7/l1$b;->invoke()Ljava/lang/Object;

    move-result-object p1

    iget-boolean p2, p0, Lz7/l1;->b:Z

    if-nez p2, :cond_26

    invoke-virtual {p0}, Lz7/l1;->R()Ljava/lang/Object;

    :cond_26
    const/4 p2, 0x0

    iput-boolean p2, p0, Lz7/l1;->b:Z

    return-object p1
.end method

.method public final f(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J
    .registers 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lb8/a;

    invoke-virtual {v0, p1, p2}, Lb8/a;->V(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz7/l1;->O(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final h()I
    .registers 2

    invoke-virtual {p0}, Lz7/l1;->R()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz7/l1;->N(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I
    .registers 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lb8/a;

    invoke-virtual {v0, p1, p2}, Lb8/a;->V(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz7/l1;->N(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final j()Ljava/lang/Void;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic k(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lw7/a<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deserializer"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lz7/l1;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public l(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .registers 2

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final m()J
    .registers 3

    invoke-virtual {p0}, Lz7/l1;->R()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz7/l1;->O(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final n(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .registers 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lb8/a;

    invoke-virtual {v0, p1, p2}, Lb8/a;->V(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz7/l1;->Q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lw7/a<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deserializer"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lz7/l1;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public q()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final r()S
    .registers 2

    invoke-virtual {p0}, Lz7/l1;->R()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz7/l1;->P(Ljava/lang/Object;)S

    move-result p0

    return p0
.end method

.method public final s()F
    .registers 2

    invoke-virtual {p0}, Lz7/l1;->R()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz7/l1;->M(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public final t(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F
    .registers 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lb8/a;

    invoke-virtual {v0, p1, p2}, Lb8/a;->V(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz7/l1;->M(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public final u()D
    .registers 3

    invoke-virtual {p0}, Lz7/l1;->R()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz7/l1;->L(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final v()Z
    .registers 2

    invoke-virtual {p0}, Lz7/l1;->R()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz7/l1;->I(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final w()C
    .registers 2

    invoke-virtual {p0}, Lz7/l1;->R()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz7/l1;->K(Ljava/lang/Object;)C

    move-result p0

    return p0
.end method

.method public abstract x(Lw7/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw7/a<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public final y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lw7/a<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lb8/a;

    invoke-virtual {v0, p1, p2}, Lb8/a;->V(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lz7/l1$a;

    invoke-direct {p2, p0, p3, p4}, Lz7/l1$a;-><init>(Lz7/l1;Lw7/a;Ljava/lang/Object;)V

    iget-object p3, p0, Lz7/l1;->a:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lz7/l1$a;->invoke()Ljava/lang/Object;

    move-result-object p1

    iget-boolean p2, p0, Lz7/l1;->b:Z

    if-nez p2, :cond_26

    invoke-virtual {p0}, Lz7/l1;->R()Ljava/lang/Object;

    :cond_26
    const/4 p2, 0x0

    iput-boolean p2, p0, Lz7/l1;->b:Z

    return-object p1
.end method

.method public final z()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lz7/l1;->R()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz7/l1;->Q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
