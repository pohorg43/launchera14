.class public final Lw7/e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lx7/a;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw7/f$a;


# direct methods
.method public constructor <init>(Lw7/f$a;)V
    .registers 2

    iput-object p1, p0, Lw7/e;->a:Lw7/f$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    check-cast p1, Lx7/a;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw7/e;->a:Lw7/f$a;

    iget-object p0, p0, Lw7/f$a;->b:[Lkotlinx/serialization/KSerializer;

    array-length v6, p0

    const/4 v0, 0x0

    move v7, v0

    :goto_e
    if-ge v7, v6, :cond_25

    aget-object v0, p0, v7

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lx7/a;->a(Lx7/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_25
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
