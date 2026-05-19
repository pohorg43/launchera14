.class public final La8/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "La8/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final b:La8/q;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, La8/q;

    invoke-direct {v0}, La8/q;-><init>()V

    sput-object v0, La8/q;->b:La8/q;

    sget-object v0, Lx7/d$i;->a:Lx7/d$i;

    const-string v1, "serialName"

    const-string v2, "kotlinx.serialization.json.JsonLiteral"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "kind"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_8e

    sget-object v4, Lz7/d1;->a:Ljava/util/Map;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lz7/d1;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz4/d;

    invoke-interface {v3}, Lz4/d;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lk7/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kotlin."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v5}, Lk7/m;->k(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_64

    invoke-static {v2, v3, v5}, Lk7/m;->k(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_64

    goto :goto_2f

    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name "

    const-string v4, " there already exist "

    invoke-static {v1, v2, v4}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lk7/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Serializer.\n                Please refer to SerialDescriptor documentation for additional information.\n            "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk7/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_86
    new-instance v1, Lz7/c1;

    invoke-direct {v1, v2, v0}, Lz7/c1;-><init>(Ljava/lang/String;Lx7/d;)V

    sput-object v1, La8/q;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void

    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank serial names are prohibited"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    instance-of p1, p0, La8/p;

    if-eqz p1, :cond_14

    check-cast p0, La8/p;

    return-object p0

    :cond_14
    const/4 p1, -0x1

    const-string v0, "Unexpected JSON element, expected JsonLiteral, had "

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

    sget-object p0, La8/q;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, La8/p;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, La8/l;->a(Lkotlinx/serialization/encoding/Encoder;)V

    iget-boolean p0, p2, La8/p;->b:Z

    if-eqz p0, :cond_19

    iget-object p0, p2, La8/p;->a:Ljava/lang/String;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->C(Ljava/lang/String;)V

    goto :goto_75

    :cond_19
    const-string p0, "$this$longOrNull"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, La8/p;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lk7/l;->e(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_30

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/encoding/Encoder;->i(J)V

    goto :goto_75

    :cond_30
    const-string p0, "$this$doubleOrNull"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, La8/p;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_3f
    sget-object v1, Lk7/g;->a:Lk7/f;

    invoke-virtual {v1, p0}, Lk7/f;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_4f} :catch_4f

    :catch_4f
    :cond_4f
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/encoding/Encoder;->d(D)V

    goto :goto_75

    :cond_59
    const-string p0, "$this$booleanOrNull"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, La8/p;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb8/p;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_70

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->n(Z)V

    goto :goto_75

    :cond_70
    iget-object p0, p2, La8/p;->a:Ljava/lang/String;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->C(Ljava/lang/String;)V

    :goto_75
    return-void
.end method
