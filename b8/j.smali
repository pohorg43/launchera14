.class public Lb8/j;
.super Lb8/a;
.source ""


# instance fields
.field public e:I

.field public final f:Lkotlinx/serialization/json/JsonObject;

.field public final g:Ljava/lang/String;

.field public final h:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public constructor <init>(La8/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 6

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb8/a;-><init>(La8/a;Lkotlinx/serialization/json/JsonElement;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lb8/j;->f:Lkotlinx/serialization/json/JsonObject;

    iput-object p3, p0, Lb8/j;->g:Ljava/lang/String;

    iput-object p4, p0, Lb8/j;->h:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method public constructor <init>(La8/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .registers 6

    const-string p3, "json"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "value"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lb8/a;-><init>(La8/a;Lkotlinx/serialization/json/JsonElement;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lb8/j;->f:Lkotlinx/serialization/json/JsonObject;

    iput-object p3, p0, Lb8/j;->g:Ljava/lang/String;

    iput-object p3, p0, Lb8/j;->h:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public S(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
    .registers 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb8/j;->Y()Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    invoke-static {p0, p1}, Li4/k0;->f(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    return-object p0
.end method

.method public bridge synthetic W()Lkotlinx/serialization/json/JsonElement;
    .registers 1

    invoke-virtual {p0}, Lb8/j;->Y()Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public Y()Lkotlinx/serialization/json/JsonObject;
    .registers 1

    iget-object p0, p0, Lb8/j;->f:Lkotlinx/serialization/json/JsonObject;

    return-object p0
.end method

.method public a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/b;
    .registers 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb8/j;->h:Lkotlinx/serialization/descriptors/SerialDescriptor;

    if-ne p1, v0, :cond_a

    return-object p0

    :cond_a
    invoke-super {p0, p1}, Lb8/a;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/b;

    move-result-object p0

    return-object p0
.end method

.method public b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 5

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb8/a;->c:Lb8/c;

    iget-boolean v0, v0, Lb8/c;->b:Z

    if-nez v0, :cond_80

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object v0

    instance-of v0, v0, Lx7/c;

    if-eqz v0, :cond_14

    goto :goto_80

    :cond_14
    invoke-static {p1}, Lz7/e0;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0}, Lb8/j;->Y()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lb8/j;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_41

    goto :goto_24

    :cond_41
    invoke-virtual {p0}, Lb8/j;->Y()Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "key"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "input"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Encountered unknown key \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'.\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Use \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys.\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Current input: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lm4/d;->i(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lm4/d;->d(ILjava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0

    :cond_80
    :goto_80
    return-void
.end method

.method public p(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .registers 8

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    iget v0, p0, Lb8/j;->e:I

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->c()I

    move-result v1

    if-ge v0, v1, :cond_78

    iget v0, p0, Lb8/j;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lb8/j;->e:I

    invoke-virtual {p0, p1, v0}, Lb8/a;->V(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lb8/j;->Y()Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lb8/a;->c:Lb8/c;

    iget-boolean v1, v1, Lb8/c;->g:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_74

    iget v1, p0, Lb8/j;->e:I

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-virtual {p0, v0}, Lb8/j;->S(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v3

    instance-of v3, v3, La8/r;

    if-eqz v3, :cond_3f

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Z

    move-result v3

    if-nez v3, :cond_3f

    :goto_3d
    move v4, v2

    goto :goto_72

    :cond_3f
    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object v3

    sget-object v4, Lx7/i$b;->a:Lx7/i$b;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_72

    invoke-virtual {p0, v0}, Lb8/j;->S(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    instance-of v3, v0, Lkotlinx/serialization/json/JsonPrimitive;

    const/4 v5, 0x0

    if-nez v3, :cond_56

    move-object v0, v5

    :cond_56
    check-cast v0, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v0, :cond_72

    const-string v3, "$this$contentOrNull"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v3, v0, La8/r;

    if-eqz v3, :cond_64

    goto :goto_68

    :cond_64
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->a()Ljava/lang/String;

    move-result-object v5

    :goto_68
    if-eqz v5, :cond_72

    invoke-interface {v1, v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_72

    goto :goto_3d

    :cond_72
    :goto_72
    if-nez v4, :cond_5

    :cond_74
    iget p0, p0, Lb8/j;->e:I

    sub-int/2addr p0, v2

    return p0

    :cond_78
    const/4 p0, -0x1

    return p0
.end method
