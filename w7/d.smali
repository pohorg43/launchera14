.class public final Lw7/d;
.super Lz7/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lz7/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public final b:Lz4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz4/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz4/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/d<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lz7/b;-><init>()V

    iput-object p1, p0, Lw7/d;->b:Lz4/d;

    sget-object v0, Lx7/c$a;->a:Lx7/c$a;

    new-instance v1, Lw7/d$a;

    invoke-direct {v1, p0}, Lw7/d$a;-><init>(Lw7/d;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v3, "kotlinx.serialization.Polymorphic"

    invoke-static {v3, v0, v2, v1}, Lx7/h;->b(Ljava/lang/String;Lx7/i;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    const-string v1, "$this$withContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lx7/b;

    invoke-direct {v1, v0, p1}, Lx7/b;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lz4/d;)V

    iput-object v1, p0, Lw7/d;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public c()Lz4/d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz4/d<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lw7/d;->b:Lz4/d;

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    iget-object p0, p0, Lw7/d;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "kotlinx.serialization.PolymorphicSerializer(baseClass: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lw7/d;->b:Lz4/d;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
