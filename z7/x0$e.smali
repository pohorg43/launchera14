.class public final Lz7/x0$e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz7/x0;-><init>(Ljava/lang/String;Lz7/w;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "[",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lz7/x0;


# direct methods
.method public constructor <init>(Lz7/x0;)V
    .registers 2

    iput-object p1, p0, Lz7/x0$e;->a:Lz7/x0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 5

    iget-object p0, p0, Lz7/x0$e;->a:Lz7/x0;

    iget-object p0, p0, Lz7/x0;->j:Lz7/w;

    if-eqz p0, :cond_22

    invoke-interface {p0}, Lz7/w;->typeParametersSerializers()[Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-eqz p0, :cond_22

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_23

    aget-object v3, p0, v2

    invoke-interface {v3}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_22
    const/4 v0, 0x0

    :cond_23
    invoke-static {v0}, Lz7/w0;->a(Ljava/util/List;)[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method
