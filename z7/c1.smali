.class public final Lz7/c1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lx7/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lx7/d;)V
    .registers 4

    const-string v0, "serialName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7/c1;->a:Ljava/lang/String;

    iput-object p2, p0, Lz7/c1;->b:Lx7/d;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public b(Ljava/lang/String;)I
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lz7/c1;->h()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public c()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public d(I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lz7/c1;->h()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    invoke-virtual {p0}, Lz7/c1;->h()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public f()Lx7/i;
    .registers 1

    iget-object p0, p0, Lz7/c1;->b:Lx7/d;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lz7/c1;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Ljava/lang/Void;
    .registers 2

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Primitive descriptor does not have elements"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "PrimitiveDescriptor("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lz7/c1;->a:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
