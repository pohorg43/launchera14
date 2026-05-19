.class public final Ln4/f;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(La8/d;Lw7/a;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La8/d;",
            "Lw7/a<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "$this$decodeSerializableValuePolymorphic"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Lz7/b;

    if-eqz v1, :cond_fd

    invoke-interface {p0}, La8/d;->F()La8/a;

    move-result-object v1

    iget-object v1, v1, La8/a;->a:Lb8/c;

    iget-boolean v1, v1, Lb8/c;->h:Z

    if-eqz v1, :cond_1a

    goto/16 :goto_fd

    :cond_1a
    invoke-interface {p0}, La8/d;->g()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-interface {p1}, Lw7/a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    instance-of v3, v1, Lkotlinx/serialization/json/JsonObject;

    const/4 v4, -0x1

    if-eqz v3, :cond_c9

    check-cast v1, Lkotlinx/serialization/json/JsonObject;

    invoke-interface {p0}, La8/d;->F()La8/a;

    move-result-object v2

    iget-object v2, v2, La8/a;->a:Lb8/c;

    iget-object v2, v2, Lb8/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    const/4 v5, 0x0

    if-eqz v3, :cond_73

    const-string v6, "$this$jsonPrimitive"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v6, v3, Lkotlinx/serialization/json/JsonPrimitive;

    if-nez v6, :cond_44

    goto :goto_45

    :cond_44
    move-object v5, v3

    :goto_45
    check-cast v5, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v5, :cond_4e

    invoke-virtual {v5}, Lkotlinx/serialization/json/JsonPrimitive;->a()Ljava/lang/String;

    move-result-object v5

    goto :goto_73

    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Element "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "JsonPrimitive"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_73
    :goto_73
    check-cast p1, Lz7/b;

    invoke-virtual {p1, p0, v5}, Lz7/b;->a(Ly7/b;Ljava/lang/String;)Lw7/a;

    move-result-object p1

    if-eqz p1, :cond_9f

    invoke-interface {p0}, La8/d;->F()La8/a;

    move-result-object p0

    const-string v3, "$this$readPolymorphicJson"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "discriminator"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "element"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lb8/j;

    invoke-interface {p1}, Lw7/a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lb8/j;-><init>(La8/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-virtual {v0, p1}, Lb8/a;->x(Lw7/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_9f
    if-nez v5, :cond_a4

    const-string p0, "missing class discriminator (\'null\')"

    goto :goto_ba

    :cond_a4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "class discriminator \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_ba
    const-string p1, "Polymorphic serializer was not found for "

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p0, p1}, Lm4/d;->e(ILjava/lang/String;Ljava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0

    :cond_c9
    const-string p0, "Expected "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-class p1, Lkotlinx/serialization/json/JsonObject;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as the serialized body of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but had "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lm4/d;->d(ILjava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0

    :cond_fd
    :goto_fd
    invoke-interface {p1, p0}, Lw7/a;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/Throwable;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.intellij.openapi.progress.ProcessCanceledException"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    return p0
.end method
