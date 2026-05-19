.class public final Lw7/d$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw7/d;-><init>(Lz4/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic a:Lw7/d;


# direct methods
.method public constructor <init>(Lw7/d;)V
    .registers 2

    iput-object p1, p0, Lw7/d$a;->a:Lw7/d;

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

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v0}, Lf2/a;->b(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/KSerializer;

    sget-object v0, Lz7/k1;->b:Lz7/k1;

    sget-object v2, Lz7/k1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const-string v1, "type"

    move-object v0, p1

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lx7/a;->a(Lx7/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZI)V

    const-string v0, "kotlinx.serialization.Polymorphic<"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lw7/d$a;->a:Lw7/d;

    iget-object p0, p0, Lw7/d;->b:Lz4/d;

    invoke-interface {p0}, Lz4/d;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lx7/i$a;->a:Lx7/i$a;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {p0, v0, v1, v2, v3}, Lx7/h;->c(Ljava/lang/String;Lx7/i;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    const-string v1, "value"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lx7/a;->a(Lx7/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZI)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
