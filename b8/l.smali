.class public final Lb8/l;
.super Lb8/j;
.source ""


# instance fields
.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:I

.field public k:I

.field public final l:Lkotlinx/serialization/json/JsonObject;


# direct methods
.method public constructor <init>(La8/a;Lkotlinx/serialization/json/JsonObject;)V
    .registers 10

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lb8/j;-><init>(La8/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    iput-object p2, p0, Lb8/l;->l:Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {p2}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lb8/l;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lb8/l;->j:I

    const/4 p1, -0x1

    iput p1, p0, Lb8/l;->k:I

    return-void
.end method


# virtual methods
.method public S(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
    .registers 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lb8/l;->k:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_17

    if-nez p1, :cond_10

    sget-object p0, La8/r;->a:La8/r;

    goto :goto_1f

    :cond_10
    new-instance p0, La8/p;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, La8/p;-><init>(Ljava/lang/Object;Z)V

    goto :goto_1f

    :cond_17
    iget-object p0, p0, Lb8/l;->l:Lkotlinx/serialization/json/JsonObject;

    invoke-static {p0, p1}, Li4/k0;->f(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    :goto_1f
    return-object p0
.end method

.method public U(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .registers 4

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    div-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lb8/l;->i:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public W()Lkotlinx/serialization/json/JsonElement;
    .registers 1

    iget-object p0, p0, Lb8/l;->l:Lkotlinx/serialization/json/JsonObject;

    return-object p0
.end method

.method public Y()Lkotlinx/serialization/json/JsonObject;
    .registers 1

    iget-object p0, p0, Lb8/l;->l:Lkotlinx/serialization/json/JsonObject;

    return-object p0
.end method

.method public b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 2

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public p(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .registers 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lb8/l;->k:I

    iget v0, p0, Lb8/l;->j:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_12

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb8/l;->k:I

    return p1

    :cond_12
    const/4 p0, -0x1

    return p0
.end method
