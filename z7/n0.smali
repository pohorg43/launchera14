.class public final Lz7/n0;
.super Lz7/b1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz7/b1<",
        "Ljava/lang/Long;",
        "[J",
        "Lz7/m0;",
        ">;",
        "Lkotlinx/serialization/KSerializer<",
        "[J>;"
    }
.end annotation


# static fields
.field public static final c:Lz7/n0;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lz7/n0;

    invoke-direct {v0}, Lz7/n0;-><init>()V

    sput-object v0, Lz7/n0;->c:Lz7/n0;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    sget-object v0, Lkotlin/jvm/internal/LongCompanionObject;->INSTANCE:Lkotlin/jvm/internal/LongCompanionObject;

    const-string v1, "$this$serializer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lz7/o0;->b:Lz7/o0;

    invoke-direct {p0, v0}, Lz7/b1;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, [J

    const-string p0, "$this$collectionSize"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    return p0
.end method

.method public h(Ly7/b;ILjava/lang/Object;Z)V
    .registers 6

    check-cast p3, Lz7/m0;

    const-string p4, "decoder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lz7/b1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0, p2}, Ly7/b;->f(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide p0

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    const/4 p4, 0x0

    const/4 v0, 0x1

    invoke-static {p3, p2, v0, p4}, Lz7/z0;->c(Lz7/z0;IILjava/lang/Object;)V

    iget-object p2, p3, Lz7/m0;->a:[J

    iget p4, p3, Lz7/m0;->b:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p3, Lz7/m0;->b:I

    aput-wide p0, p2, p4

    return-void
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [J

    const-string p0, "$this$toBuilder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lz7/m0;

    invoke-direct {p0, p1}, Lz7/m0;-><init>([J)V

    return-object p0
.end method

.method public l()Ljava/lang/Object;
    .registers 1

    const/4 p0, 0x0

    new-array p0, p0, [J

    return-object p0
.end method

.method public m(Ly7/c;Ljava/lang/Object;I)V
    .registers 8

    check-cast p2, [J

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p3, :cond_19

    iget-object v1, p0, Lz7/b1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    aget-wide v2, p2, v0

    invoke-interface {p1, v1, v0, v2, v3}, Ly7/c;->B(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_19
    return-void
.end method
