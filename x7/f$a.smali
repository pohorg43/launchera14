.class public final Lx7/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx7/f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lx7/f;


# direct methods
.method public constructor <init>(Lx7/f;)V
    .registers 2

    iput-object p1, p0, Lx7/f$a;->b:Lx7/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lx7/f;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->c()I

    move-result p1

    iput p1, p0, Lx7/f$a;->a:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 1

    iget p0, p0, Lx7/f$a;->a:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public next()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lx7/f$a;->b:Lx7/f;

    iget-object v0, v0, Lx7/f;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->c()I

    move-result v1

    iget v2, p0, Lx7/f$a;->a:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lx7/f$a;->a:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
