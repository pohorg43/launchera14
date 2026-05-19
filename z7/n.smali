.class public final Lz7/n;
.super Lz7/b1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz7/b1<",
        "Ljava/lang/Character;",
        "[C",
        "Lz7/m;",
        ">;",
        "Lkotlinx/serialization/KSerializer<",
        "[C>;"
    }
.end annotation


# static fields
.field public static final c:Lz7/n;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lz7/n;

    invoke-direct {v0}, Lz7/n;-><init>()V

    sput-object v0, Lz7/n;->c:Lz7/n;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    sget-object v0, Lkotlin/jvm/internal/CharCompanionObject;->INSTANCE:Lkotlin/jvm/internal/CharCompanionObject;

    const-string v1, "$this$serializer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lz7/o;->b:Lz7/o;

    invoke-direct {p0, v0}, Lz7/b1;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, [C

    const-string p0, "$this$collectionSize"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    return p0
.end method

.method public h(Ly7/b;ILjava/lang/Object;Z)V
    .registers 5

    check-cast p3, Lz7/m;

    const-string p4, "decoder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lz7/b1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0, p2}, Ly7/b;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;I)C

    move-result p0

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p4, 0x1

    invoke-static {p3, p1, p4, p2}, Lz7/z0;->c(Lz7/z0;IILjava/lang/Object;)V

    iget-object p1, p3, Lz7/m;->a:[C

    iget p2, p3, Lz7/m;->b:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p3, Lz7/m;->b:I

    aput-char p0, p1, p2

    return-void
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [C

    const-string p0, "$this$toBuilder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lz7/m;

    invoke-direct {p0, p1}, Lz7/m;-><init>([C)V

    return-object p0
.end method

.method public l()Ljava/lang/Object;
    .registers 1

    const/4 p0, 0x0

    new-array p0, p0, [C

    return-object p0
.end method

.method public m(Ly7/c;Ljava/lang/Object;I)V
    .registers 7

    check-cast p2, [C

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p3, :cond_19

    iget-object v1, p0, Lz7/b1;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    aget-char v2, p2, v0

    invoke-interface {p1, v1, v0, v2}, Ly7/c;->j(Lkotlinx/serialization/descriptors/SerialDescriptor;IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_19
    return-void
.end method
