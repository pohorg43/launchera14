.class public final Lz7/o1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lz7/o1;


# instance fields
.field public final synthetic a:Lz7/t0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz7/t0<",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lz7/o1;

    invoke-direct {v0}, Lz7/o1;-><init>()V

    sput-object v0, Lz7/o1;->b:Lz7/o1;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz7/t0;

    sget-object v1, Lh4/z;->a:Lh4/z;

    const-string v2, "kotlin.Unit"

    invoke-direct {v0, v2, v1}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lz7/o1;->a:Lz7/t0;

    return-void
.end method


# virtual methods
.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 3

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lz7/o1;->a:Lz7/t0;

    invoke-virtual {p0, p1}, Lz7/t0;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    iget-object p0, p0, Lz7/o1;->a:Lz7/t0;

    iget-object p0, p0, Lz7/t0;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Lh4/z;

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lz7/o1;->a:Lz7/t0;

    invoke-virtual {p0, p1, p2}, Lz7/t0;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    return-void
.end method
