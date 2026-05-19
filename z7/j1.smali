.class public final Lz7/j1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final b:Lz7/j1;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lz7/j1;

    invoke-direct {v0}, Lz7/j1;-><init>()V

    sput-object v0, Lz7/j1;->b:Lz7/j1;

    new-instance v0, Lz7/c1;

    sget-object v1, Lx7/d$h;->a:Lx7/d$h;

    const-string v2, "kotlin.Short"

    invoke-direct {v0, v2, v1}, Lz7/c1;-><init>(Ljava/lang/String;Lx7/d;)V

    sput-object v0, Lz7/j1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->r()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    sget-object p0, Lz7/j1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    move-result p0

    const-string p2, "encoder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->m(S)V

    return-void
.end method
