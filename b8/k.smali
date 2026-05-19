.class public final Lb8/k;
.super Lb8/a;
.source ""


# instance fields
.field public final e:I

.field public f:I

.field public final g:Lkotlinx/serialization/json/JsonArray;


# direct methods
.method public constructor <init>(La8/a;Lkotlinx/serialization/json/JsonArray;)V
    .registers 4

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb8/a;-><init>(La8/a;Lkotlinx/serialization/json/JsonElement;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lb8/k;->g:Lkotlinx/serialization/json/JsonArray;

    invoke-virtual {p2}, Lkotlinx/serialization/json/JsonArray;->size()I

    move-result p1

    iput p1, p0, Lb8/k;->e:I

    const/4 p1, -0x1

    iput p1, p0, Lb8/k;->f:I

    return-void
.end method


# virtual methods
.method public S(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
    .registers 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb8/k;->g:Lkotlinx/serialization/json/JsonArray;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lkotlinx/serialization/json/JsonArray;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    return-object p0
.end method

.method public U(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .registers 3

    const-string p0, "desc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public W()Lkotlinx/serialization/json/JsonElement;
    .registers 1

    iget-object p0, p0, Lb8/k;->g:Lkotlinx/serialization/json/JsonArray;

    return-object p0
.end method

.method public p(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .registers 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lb8/k;->f:I

    iget v0, p0, Lb8/k;->e:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_12

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb8/k;->f:I

    return p1

    :cond_12
    const/4 p0, -0x1

    return p0
.end method
