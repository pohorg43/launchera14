.class public final Lz7/z;
.super Lz7/k0;
.source ""


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 3

    const-string v0, "elementDesc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz7/k0;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .registers 1

    const-string p0, "kotlin.collections.HashSet"

    return-object p0
.end method
