.class public final La8/l;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lkotlinx/serialization/encoding/Encoder;)V
    .registers 4

    const-string v0, "$this$asJsonEncoder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, La8/m;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    move-object v0, p0

    :goto_c
    check-cast v0, La8/m;

    if-eqz v0, :cond_11

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This serializer can be used only with Json format."

    const-string v2, "Expected Encoder to be JsonEncoder, got "

    invoke-static {v1, v2}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Lkotlinx/serialization/encoding/Decoder;)La8/d;
    .registers 4

    const-string v0, "$this$asJsonDecoder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, La8/d;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    move-object v0, p0

    :goto_c
    check-cast v0, La8/d;

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This serializer can be used only with Json format."

    const-string v2, "Expected Decoder to be JsonDecoder, got "

    invoke-static {v1, v2}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
