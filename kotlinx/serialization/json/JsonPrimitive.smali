.class public abstract Lkotlinx/serialization/json/JsonPrimitive;
.super Lkotlinx/serialization/json/JsonElement;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/JsonPrimitive$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/a;
    with = La8/u;
.end annotation


# static fields
.field public static final Companion:Lkotlinx/serialization/json/JsonPrimitive$Companion;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlinx/serialization/json/JsonPrimitive$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonPrimitive$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/serialization/json/JsonPrimitive;->Companion:Lkotlinx/serialization/json/JsonPrimitive$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonElement;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/JsonElement;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
