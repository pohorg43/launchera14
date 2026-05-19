.class public final Lz7/x0$b;
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
        "Lkotlinx/serialization/KSerializer<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lz7/x0;


# direct methods
.method public constructor <init>(Lz7/x0;)V
    .registers 2

    iput-object p1, p0, Lz7/x0$b;->a:Lz7/x0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lz7/x0$b;->a:Lz7/x0;

    iget-object p0, p0, Lz7/x0;->j:Lz7/w;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lz7/w;->childSerializers()[Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-eqz p0, :cond_d

    goto :goto_10

    :cond_d
    const/4 p0, 0x0

    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    :goto_10
    return-object p0
.end method
