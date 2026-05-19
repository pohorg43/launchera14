.class public final La8/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lkotlinx/serialization/json/JsonElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final b:La8/j;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, La8/j;

    invoke-direct {v0}, La8/j;-><init>()V

    sput-object v0, La8/j;->b:La8/j;

    sget-object v0, Lx7/c$b;->a:Lx7/c$b;

    sget-object v1, La8/j$a;->a:La8/j$a;

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v3, "kotlinx.serialization.json.JsonElement"

    invoke-static {v3, v0, v2, v1}, Lx7/h;->b(Ljava/lang/String;Lx7/i;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    sput-object v0, La8/j;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, La8/l;->b(Lkotlinx/serialization/encoding/Decoder;)La8/d;

    move-result-object p0

    invoke-interface {p0}, La8/d;->g()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    sget-object p0, La8/j;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, La8/l;->a(Lkotlinx/serialization/encoding/Encoder;)V

    instance-of p0, p2, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz p0, :cond_19

    sget-object p0, La8/u;->b:La8/u;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->v(Lw7/h;Ljava/lang/Object;)V

    goto :goto_2c

    :cond_19
    instance-of p0, p2, Lkotlinx/serialization/json/JsonObject;

    if-eqz p0, :cond_23

    sget-object p0, La8/t;->b:La8/t;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->v(Lw7/h;Ljava/lang/Object;)V

    goto :goto_2c

    :cond_23
    instance-of p0, p2, Lkotlinx/serialization/json/JsonArray;

    if-eqz p0, :cond_2c

    sget-object p0, La8/b;->b:La8/b;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->v(Lw7/h;Ljava/lang/Object;)V

    :cond_2c
    :goto_2c
    return-void
.end method
