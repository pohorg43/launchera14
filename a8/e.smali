.class public final La8/e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:La8/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, La8/e;

    invoke-direct {v0}, La8/e;-><init>()V

    sput-object v0, La8/e;->a:La8/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 1

    sget-object p0, La8/u;->b:La8/u;

    sget-object p0, La8/u;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method
