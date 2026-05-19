.class public final La8/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lkotlinx/serialization/json/JsonPrimitive;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final b:La8/u;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, La8/u;

    invoke-direct {v0}, La8/u;-><init>()V

    sput-object v0, La8/u;->b:La8/u;

    sget-object v0, Lx7/d$i;->a:Lx7/d$i;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v2, "kotlinx.serialization.json.JsonPrimitive"

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v2, v0, v1, v3, v4}, Lx7/h;->c(Ljava/lang/String;Lx7/i;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    sput-object v0, La8/u;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 4

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, La8/l;->b(Lkotlinx/serialization/encoding/Decoder;)La8/d;

    move-result-object p0

    invoke-interface {p0}, La8/d;->g()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    instance-of p1, p0, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz p1, :cond_14

    check-cast p0, Lkotlinx/serialization/json/JsonPrimitive;

    return-object p0

    :cond_14
    const/4 p1, -0x1

    const-string v0, "Unexpected JSON element, expected JsonPrimitive, had "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lm4/d;->e(ILjava/lang/String;Ljava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    sget-object p0, La8/u;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lkotlinx/serialization/json/JsonPrimitive;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, La8/l;->a(Lkotlinx/serialization/encoding/Encoder;)V

    instance-of p0, p2, La8/r;

    if-eqz p0, :cond_1b

    sget-object p0, La8/s;->b:La8/s;

    sget-object p2, La8/r;->a:La8/r;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->v(Lw7/h;Ljava/lang/Object;)V

    goto :goto_22

    :cond_1b
    sget-object p0, La8/q;->b:La8/q;

    check-cast p2, La8/p;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->v(Lw7/h;Ljava/lang/Object;)V

    :goto_22
    return-void
.end method
